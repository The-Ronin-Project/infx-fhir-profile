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
* identifier MS
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
* code = RXN#582620 "Nizatidine 15 MG/ML Oral Solution [Axid]"
* code.text = "Nizatidine 15 MG/ML Oral Solution [Axid]"
* extension[isBrand].valueBoolean = true
* extension[isOverTheCounter].valueBoolean = false
