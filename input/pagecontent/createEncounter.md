## Encounter dateTime values

The HNZ FHIR server standardises on UTC for all dateTime values under management.

Encounter resources must have a value set for the period element, and client applications must set this to the **UTC** dateTime value.

The client application is responsible for converting UTC dateTimes to the timezone of the user and formatting the date and time display according to the user's locale preference.