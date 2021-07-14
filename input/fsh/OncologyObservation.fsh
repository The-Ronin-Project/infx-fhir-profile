/*
OncologyObservation is a resource that models the observation for an oncology patient.
*/
Profile: OncologyObservation
Parent: Observation
Id: oncology-observation
Title: "Oncology Observation"
Description: "An Observation resource that is used for oncology patients"

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

* status MS
* category MS
* category.coding MS // TODO add restriction to encounter-diagnosis
* category.text MS // TODO add text restriction to "Encounter Diagnosis"
* effectiveDateTime MS
* issued MS
* referenceRange MS
* referenceRange.high MS
* referenceRange.low MS
* referenceRange.text MS
* code MS
* code.coding MS
* code.text MS
* subject only Reference(OncologyPatient)
* subject MS
* subject.reference MS
* subject.display MS
* valueQuantity MS
* valueQuantity.value MS
* valueQuantity.unit MS
* valueQuantity.system MS
* valueQuantity.code MS
* note MS
* component MS
* component.code MS
* component.valueQuantity MS
* extension MS
* extension.url MS
* extension.valueQuantity MS
* interpretation MS
* performer MS
* performer.display MS
* performer.reference MS
* value[x] MS  // string


// Example Observation
Instance: ExampleObservation
InstanceOf: OncologyObservation
Description: "Example Oncology Observation"
* identifier.system = "http://projectronin.com/fhir/us/ronin"
* identifier.value = "12345"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* subject.display = "Luke Ruecker"
* status = #registered
* code.text = "code text"
