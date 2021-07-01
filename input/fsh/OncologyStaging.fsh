/*
OncologyRelatedMedicationStatement is a resource that models the medication statements for an oncology patient.
*/
Profile: OncologyStaging
Parent: CancerStageParent
Id: oncology-staging
Title: "Oncology Staging"
Description: "A cancer stagings that uses mCODE to model TNM stagings for oncology patients"

* ^status = #draft
* ^experimental = true
* extension contains Classification named classification 0..1

Extension: Classification
Id:  classification
Title: "Classification"
Description: "Classification"
* value[x] only string