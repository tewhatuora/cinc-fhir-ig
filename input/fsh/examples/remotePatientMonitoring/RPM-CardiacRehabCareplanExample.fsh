Instance: RemoteMonitoringCardiacRehabCarePlanExample
InstanceOf: CarePlan
Usage: #example
* id = "careplan-remote-monitoring-cardia-rehab"
* language = #en-NZ
* status = #active
* intent = #plan
* title = "Remote Patient Monitoring Cardiac Rehab Care Plan"
* description = "Ongoing monitoring of heart failure symptoms, observations, and patient feedback."
* subject.reference = "Patient/12345"
* subject.display = "John Doe"
* period.start = "2025-08-13"
* created = "2025-08-13"
* author.reference = "Practitioner/987"
* author.display = "Dr Alice Smith"
* careTeam[0].reference = "CareTeam/heart-failure-team"
* careTeam[0].display = "Heart Failure Monitoring Team"
* addresses[0].reference = "Condition/heart-failure-001"
* addresses[0].display = "Chronic Heart Failure"

* goal[0].reference = "Goal/heart-failure-monitoring"