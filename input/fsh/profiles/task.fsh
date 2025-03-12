Profile: OutreachTask
Parent: Task
Id: OutreachTask
Description: "Task FHIR resource for the outreach referral service"
* ^version = "0.1.3"
* status 1..1
* code 1..1
* description 0..1
* for 1..1
* for only Reference(Patient)
* requester 1..1
* requester only Reference(Device)
* owner 0..1
* owner only Reference(Device)