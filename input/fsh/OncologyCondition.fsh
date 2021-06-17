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
* identifier MS
* clinicalStatus MS
* verificationStatus MS
* category MS
* category.coding MS // TODO add restriction to encounter-diagnosis and problem-list-item
* category.text MS // TODO add text restriction to "Encounter Diagnosis" or "Problem List Item"
* recordedDate MS
* code MS
* code.coding MS
* code.text MS
* subject only Reference(OncologyPatient)
* subject MS
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
* onsetPeriod MS
* onsetDateTime MS
* severity MS
* severity.text MS
* recorder MS
// TODO ADD PriorityVS
//* extension contains
//    ProcessPriority named priority 0..1 MS

//TODO add mCODE additions to TNM and other fields