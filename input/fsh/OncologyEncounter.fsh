/*
OncologyEncounter is a resource that models the encounters for an oncology patient.
*/
Profile: OncologyEncounter
Parent: USCoreEncounter
Id: oncology-encounter
Title: "Oncology Encounter"
Description: "An Encounter resource that is used for oncology patients"

* ^status = #draft
* ^experimental = true
* identifier 1..* MS
//Slice identifier to ensure tenantId identifier is present.
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains
    tenantId 1..1

* identifier[tenantId].system = "http://projectronin.com/id/tenantId"

//* status MS
//* type MS
//* location MS
//* class MS
* class.system MS
* class.code MS
* class.display MS
//* subject only Reference(OncologyPatient)
//* subject MS
* subject.reference MS
* subject.display MS
//* period MS
* appointment.reference MS
//* hospitalization MS
* hospitalization.destination.display MS
* hospitalization.destination.reference MS
//* hospitalization.dischargeDisposition MS
* hospitalization.origin.reference MS
* partOf MS
* partOf.reference MS
//* participant MS
* participant.individual.display MS
* participant.individual.reference MS
//* participant.period MS
//* participant.type MS
//* location MS
* location.location.display MS
* location.location.reference MS
* location.period MS
* priority MS
* priority.coding MS
* priority.text MS
//* reasonCode MS
* reasonCode.coding MS
* reasonCode.text MS


// Example Encounter
Instance: ExampleEncounter
InstanceOf: OncologyEncounter
Description: "Example Encounter"
* identifier.system = "http://projectronin.com/fhir/us/ronin"
* identifier.value = "12345"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* subject.display = "Josefina Hammes"
* status = #arrived
* class.code = #AMB
* class.display = "ambulatory"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type = SCT#185347001
* type.text = "Encounter for problem"
