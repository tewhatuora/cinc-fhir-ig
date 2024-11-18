CodeSystem: ParticipationMode
Id: hnz-participation-mode-codes
Title: "ParticipationMode"
Description: """A set of codes specifying the modality by which the Entity playing the Role is participating in the Act.

*Examples:* Physically present, over the telephone, written communication.

*Rationale:* Particularly for author (originator) participants this is used to specify whether the information represented by the act was initially provided verbally, (hand-)written, or electronically.

*Open Issue:* There needs to be a reexamination of the hierarchies as there seems to be some muddling between ELECTRONIC and other concepts that involve electronic communication that are in other hierarchies."""
* ^language = #en
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.5.1064"
* ^version = "4.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2021-08-10"
* ^publisher = "Health Level Seven International"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7.org"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "hq@HL7.org"
* ^copyright = "This material derives from the HL7 Terminology THO. THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: https://terminology.hl7.org/license.html"
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^content = #complete
* #ELECTRONIC "electronic data" "Participation by non-human-languaged based electronic signal"
* #PHYSICAL "physical presence" "Participation by direct action where subject and actor are in the same location. (The participation involves more than communication.)"
* #REMOTE "remote presence" "Participation by direct action where subject and actor are in separate locations, and the actions of the actor are transmitted by electronic or mechanical means. (The participation involves more than communication.)"
* #VERBAL "verbal" "Participation by voice communication"
* #VERBAL #DICTATE "dictated" "Participation by pre-recorded voice. Communication is limited to one direction (from the recorder to recipient)."
* #VERBAL #FACE "face-to-face" "Participation by voice communication where parties speak to each other directly."
* #VERBAL #PHONE "telephone" "Participation by voice communication where the voices of the communicating parties are transported over an electronic medium"
* #VERBAL #VIDEOCONF "videoconferencing" "Participation by voice and visual communication where the voices and images of the communicating parties are transported over an electronic medium"
* #WRITTEN "written" "Participation by human language recorded on a physical material"
* #WRITTEN #FAXWRIT "telefax" "Participation by text or diagrams printed on paper that have been transmitted over a fax device"
* #WRITTEN #HANDWRIT "handwritten" "Participation by text or diagrams printed on paper or other recording medium"
* #WRITTEN #MAILWRIT "mail" "Participation by text or diagrams printed on paper transmitted physically (e.g. by courier service, postal service)."
* #WRITTEN #ONLINEWRIT "online written" "Participation by text or diagrams submitted by computer network, e.g. online survey."
* #WRITTEN #ONLINEWRIT #EMAILWRIT "email" "Participation by text or diagrams transmitted over an electronic mail system."
* #WRITTEN #TYPEWRIT "typewritten" "Participation by text or diagrams printed on paper or other recording medium where the recording was performed using a typewriter, typesetter, computer or similar mechanism."
* #WRITTEN #MSGWRIT "messaging" "Participation by messaging typically from a mobile phone or mobile device through a cellular network or Internet. Includes secured or unsecured messaging transmission and includes online chat. Also includes submission of photos or other images."
* #WRITTEN #MSGWRIT #SMSWRIT "SMS message" "Participation by text or diagrams transmitted by an SMS message."
* #WRITTEN #MSGWRIT #MMSWRIT "MMS message" "Participation by text or diagrams transmitted by an MMS message."
* #WRITTEN #MSGWRIT #APPWRIT "messaging app" "Participation by text or diagrams transmitted over an online app, e.g. Facebook Messenger, WhatsApp, or similar web app."