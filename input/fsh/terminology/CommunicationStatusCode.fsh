CodeSystem: CommunicationDeliveryStatusCodes
Id: hnz-communication-delivery-status-codes
Title: "Codes forCommunicationStatus"
Description:  "Each code represents a communication delivery status"
//* include codes from valueset http://hl7.org/fhir/ValueSet/request-status
* #delivered "Delivered"
* #send "Send"
* #received "Received"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = false
* ^purpose = "Enables a specific  status to be tied to a communication."
* ^status = #active