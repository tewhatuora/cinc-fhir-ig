// Admin operations for the DHO PQMS facade's Appointment backfill (hnz-dho-facade backfill-location.xml).
// $backfill starts a run in the background and returns a job id, $backfill-status reports on it and
// $backfill-cancel asks it to stop. The generated OAS scopes each operation to its own URL, so the gateway can
// restrict them to admin clients separately from the Appointment CRUD scopes.

Instance: DHOAppointmentBackfill
InstanceOf: OperationDefinition
Usage: #definition
* name = "DHOAppointmentBackfill"
* title = "Start an Appointment backfill"
* status = #active
* kind = #operation
* code = #backfill
* affectsState = true
* resource = #Appointment
* system = false
* type = true
* instance = false
* description = """
Starts a backfill of DHO Appointments in FHIR CDR and returns straight away with a job id. The run carries on in the
background. Follow it with $backfill-status and stop it with $backfill-cancel.

Select Appointments with one of:
- a date: `lastUpdated` (updated on or after it) or `apptDate` (starting on or after it, or from `apptDate` to
  `apptDateTo` inclusive)
- one or more `identifier` values (SIPICS, legacy or Karisma SO appointment ids)

Modes:
- `location-correction` corrects each Appointment's location from SIPICS, or cancels it. Identifiers FHIR CDR
  doesn't have are created from SIPICS.
- `patient-instruction` replaces each Appointment's patientInstruction from SIPICS.
- `touch` re-saves each Appointment unchanged, so its meta.lastUpdated moves on.
"""
* parameter[+].name = #mode
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #code
* parameter[=].documentation = "location-correction, patient-instruction or touch"
* parameter[+].name = #lastUpdated
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #date
* parameter[=].documentation = "Select Appointments updated on or after this date. Not with apptDate or identifier."
* parameter[+].name = #apptDate
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #date
* parameter[=].documentation = "Select Appointments starting on or after this date. Not with lastUpdated or identifier."
* parameter[+].name = #apptDateTo
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #date
* parameter[=].documentation = "With apptDate: select Appointments starting from apptDate to this date, both included."
* parameter[+].name = #identifier
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #string
* parameter[=].documentation = "An appointment id value to select, under any appointment-id system. Not with a date."
* parameter[+].name = #audit
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[=].documentation = "true: look everything up and report what would change, but write nothing. Not for touch."
* parameter[+].name = #job
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The job id, for $backfill-status and $backfill-cancel"
* parameter[+].name = #status
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #code
* parameter[=].documentation = "accepted"

Instance: DHOAppointmentBackfillStatus
InstanceOf: OperationDefinition
Usage: #definition
* name = "DHOAppointmentBackfillStatus"
* title = "Get an Appointment backfill's status"
* status = #active
* kind = #operation
* code = #backfill-status
* affectsState = false
* resource = #Appointment
* system = false
* type = true
* instance = false
* description = """
Reports on a backfill started with $backfill. Returns 202 with an X-Progress header while it runs, and 200 once it has
finished. status is running, completed, failed, cancelled, or stale when a running job hasn't been updated for a
while (its run was most likely cut short by a restart).
"""
* parameter[+].name = #job
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The job id $backfill returned"
* parameter[+].name = #status
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #code
* parameter[=].documentation = "running, completed, failed, cancelled or stale"
* parameter[+].name = #mode
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #code
* parameter[=].documentation = "The mode $backfill was started with"
* parameter[+].name = #startedAt
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #instant
* parameter[+].name = #updatedAt
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #instant
* parameter[+].name = #finishedAt
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #instant
* parameter[+].name = #pagesProcessed
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #integer
* parameter[+].name = #outcome
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "How many Appointments ended with one outcome, e.g. updated, skipped, error"
* parameter[=].part[+].name = #code
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].type = #code
* parameter[=].part[+].name = #count
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].type = #integer
* parameter[+].name = #notFound
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #integer
* parameter[=].documentation = "Identifier runs only: how many requested identifiers FHIR CDR didn't have"
* parameter[+].name = #cancelRequested
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[=].documentation = "true when $backfill-cancel has been called but the run hasn't stopped yet"
* parameter[+].name = #error
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Failed runs only: why"

Instance: DHOAppointmentBackfillCancel
InstanceOf: OperationDefinition
Usage: #definition
* name = "DHOAppointmentBackfillCancel"
* title = "Cancel an Appointment backfill"
* status = #active
* kind = #operation
* code = #backfill-cancel
* affectsState = true
* resource = #Appointment
* system = false
* type = true
* instance = false
* description = """
Asks a running backfill to stop. It stops before its next page, so the current page's writes still complete, and
nothing already written is undone. Returns 202, or 409 for a job that has already finished.
"""
* parameter[+].name = #job
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The job id $backfill returned"
* parameter[+].name = #status
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #code
* parameter[=].documentation = "cancelling"
