### Context-specific display values

This code system is consumed by more than one outreach service. Some concepts carry a
[designation](https://www.hl7.org/fhir/R4/codesystem-definitions.html#CodeSystem.concept.designation)
supplying an alternative display value for a particular service context, identified by
`designation.use` drawn from the
[Designation usage for ServiceRequest Status Reason](CodeSystem-hnz-service-request-status-reason-codes-designation-usage.html)
code system.

The **code** is the identity of the concept and is what is exchanged on the wire; the designation
value affects presentation only. Where a concept has no designation for a given context, clients
should fall back to the concept's own `Display`.

{% sql select Concepts.Code as Code, Concepts.Display as Display, Concepts.Definition as Definition, max(case when Designations.UseCode = 'OIS' then Designations.Value end) as "OIS Display", max(case when Designations.UseCode = 'Cervical' then Designations.Value end) as "Cervical Display" from Concepts left join Designations on Designations.ConceptKey = Concepts.Key where Concepts.ResourceKey = (select Key from Resources where Type = 'CodeSystem' and Id = 'hnz-service-request-status-reason-codes') group by Concepts.Key, Concepts.Code, Concepts.Display, Concepts.Definition order by Concepts.Key %}
