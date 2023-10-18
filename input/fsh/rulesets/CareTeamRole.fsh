RuleSet: CareTeamRole(snomed-code,display)
// inserts a SNOMED coding identifying the role

* coding.system = $sct
* coding.code = #"{snomed-code}"
* coding.display = "{display}"
