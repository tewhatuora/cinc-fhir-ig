Profile: OutreachTask
Parent: Task
Id: OutreachTask
Description: "Task FHIR resource for the outreach referral service"
* ^version = "0.1.3"
* meta.tag ^slicing.discriminator.type = #pattern
* meta.tag ^slicing.discriminator.path = "$this"
* meta.tag ^slicing.rules = #open
* meta.tag contains LastUpdatedBy 1..1
* meta.tag[LastUpdatedBy] from hnz-task-last-updated-by-valueset (required)
* status 1..1
* code 1..1
* code from hnz-task-code-valueset (required)
* description 0..1
* for 1..1
* for only Reference(Patient)
* requester 1..1
* requester only Reference(Organization)
* owner 0..1
* owner only Reference(Device)