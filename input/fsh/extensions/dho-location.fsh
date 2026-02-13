CodeSystem: DHOLocationOutreach
Id: DHOLocationOutreach
Title: "DHOLocation Outreach Type"
Description: "Indicates whether this location is fixed or part of an outreach program."
* #fixed "Fixed site location"
* #outreach "Outreach / mobile location"

ValueSet: DHOLocationOutreachVS
Id: DHOLocationOutreachVS
Title: "Allowed outreach types for DHOLocation"
* include codes from system DHOLocationOutreach

Extension: DHOOutreach
Id: DHOOutreach
Title: "Outreach vs Fixed site"
Context: Location
Description: "Indicates whether this location is fixed or part of an outreach program."
* valueCodeableConcept from DHOLocationOutreachVS (required)
