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
* extension contains DiagnosisDate named diagnosisDate 0..1

Extension: Classification
Id:  classification
Title: "Classification"
Description: "Classification"
* value[x] only string

Extension: DiagnosisCode
Id:  diagnosisCode
Title: "Diagnosis Code"
Description: "Diagnosis Code"
// TODO(theo): this value should use maybe SNOMED or some VS
// TODO(theo): either define diagnosisCodeSet or use existing alias
* value[x] only string

Extension: DiagnosisDate
Id:  diagnosisDate
Title: "Diagnosis Date"
Description: "Diagnosis Date"
* value[x] only dateTime


//diagnosisDate
//erStatus
//heR2Status
//histologicGrade.grade
//histologicGrade.method
//histologicGrade.system
//mValue
//nValue
//prStatus
//problemDescription
//problemID
//signStatus
//stageDate
//stagingMethod
//tValue