/*
OncologyStaging is a resource that models the cancer staging.
*/
Profile: OncologyStaging
Parent: CancerStageGroup
Id: oncology-staging
Title: "Oncology Staging"
Description: "A cancer stagings that uses mCODE to model TNM stagings for oncology patients"

* ^status = #draft
* ^experimental = true
* identifier 1..* MS
//Slice identifier to ensure tenantId identifier is present.
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains
    tenantId 1..1

* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].system = RTID //"http://projectronin.com/id/tenantId"

* extension contains Classification named classification 0..1
* extension contains DiagnosisCode named diagnosisCode 0..1
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

Instance:   ExampleStaging
InstanceOf: OncologyStaging
Description: "Example Oncology Staging"
// TODO(theo): MDA data doesn't have a plain "status" field
// but this is required for an Observation
* id = "roninTNMClinicalStageGroupExample01"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-staging"
* status = #active
//code must be LNC not SCT
* code = LNC#21914-7 "Stage group.other Cancer"
* valueCodeableConcept = UMLS#C2698392 "Binet Stage A"
* status = #final "final"
* method = UMLS#C4683625 "Binet Staging"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2019-04-01"
* extension[classification].valueString = "Pathologic"
* extension[diagnosisCode].valueCodeableConcept = UMLS#C2698392 "Binet Stage A"
* extension[diagnosisDate].valueDateTime = "2019-04-01"
