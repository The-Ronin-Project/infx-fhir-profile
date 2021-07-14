/*
OncologyCondition is a resource that models the condition for an oncology patient.
*/
Profile: OncologyCondition
Parent: USCoreCondition
Id: oncology-condition
Title: "Oncology Condition"
Description: "A Condition resource that is used for oncology patients"

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

// clinicalStatus MS
// verificationStatus MS
// category MS
* category.coding MS // TODO add restriction to encounter-diagnosis and problem-list-item
* category.text MS // TODO add text restriction to "Encounter Diagnosis" or "Problem List Item"
* recordedDate MS
// code MS
* code.coding MS
* code.text MS
* subject only Reference(OncologyPatient)
// subject MS
* subject.reference MS
* subject.display MS
* abatementPeriod MS
* encounter MS
* encounter.reference MS
* evidence MS
* evidence.detail.display MS
* evidence.detail.reference MS
* note MS
* note.text MS
* onsetDateTime MS
* onsetPeriod MS
* severity MS
* severity.text MS
* recorder MS
// TODO ADD PriorityVS
//* extension contains
//    ProcessPriority named priority 0..1 MS

//TODO add mCODE additions to TNM and other fields


// Example Condition
Instance: ExampleCondition
InstanceOf: OncologyCondition
Description: "Example condition"
* identifier.system = "http://projectronin.com/fhir/us/ronin"
* identifier.value = "12345"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* category.coding.display = "encounter-diagnosis"
* category.text = "Encounter Diagnosis"
* code = SCT#162573006 "Suspected lung cancer"
* code.text = "code text"
* subject.display = "Margarita Bergnaum"
