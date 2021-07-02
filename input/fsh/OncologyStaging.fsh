/*
OncologyStaging is a resource that models the cancer staging.
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
// TODO(theo): this value should use maybe ICD-10-CM or some VS
// TODO(theo): either define diagnosisCodeSet or use existing alias
// JIRA ticket: https://projectronin.atlassian.net/browse/DP-723
* value[x] only CodeableConcept

Extension: DiagnosisDate
Id:  diagnosisDate
Title: "Diagnosis Date"
Description: "Diagnosis Date"
* value[x] only dateTime


// TODO(theo): all these probably exist in mCode
// Need Clinical help to map fields and find correct field in mCode
// Requires interpreting clinical concepts
// JIRA ticket: https://projectronin.atlassian.net/browse/DP-723
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

Instance:   OncologyStagingExample
InstanceOf: OncologyStaging
// TODO(theo): MDA data doesn't have a plain "status" field
// but this is required for an Observation
* status = #active
* code = SCT#373808002 "Curative - procedure intent"
* valueCodeableConcept = AJCC#cN3 "N3"
* extension[classification].valueString = "Pathologic"
* extension[diagnosisCode].valueCodeableConcept = AJCC#cN3 "N3"
* extension[diagnosisDate].valueDateTime = ""2019-04-01"