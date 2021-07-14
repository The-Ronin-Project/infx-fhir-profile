/*
OncologyRelatedMedication is a resource that models the medication for an oncology patient.
*/
Profile: OncologyRelatedMedication
Parent: USCoreMedication
Id: oncology-related-medication
Title: "Oncology-related Medication"
Description: "A Medication resource that is used for oncology patients"

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

* extension contains
    MedicationBrandType named isBrand 0..1 MS and
    MedicationOverCounterType named isOverTheCounter 0..1 MS
* ingredient.itemReference.display MS
* ingredient.itemReference.reference MS
* form MS
* form.text MS


// Example Medication
Instance: ExampleRelatedMedication
InstanceOf: OncologyRelatedMedication
Description: "Example Related Medication"
* identifier.system = "http://projectronin.com/fhir/us/ronin"
* identifier.value = "12345"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* code = RXN#582620 "Nizatidine 15 MG/ML Oral Solution [Axid]"
* code.text = "Nizatidine 15 MG/ML Oral Solution [Axid]"
* extension[isBrand].valueBoolean = true
* extension[isOverTheCounter].valueBoolean = false
