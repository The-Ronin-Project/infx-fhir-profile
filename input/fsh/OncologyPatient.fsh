/*
OncologyPatient profile is a Patient modeled to meet Ronin's minimal requirements/constraints.
All other fields are automatically inherited from Parent: Patient
*/
Profile: OncologyPatient
Parent: USCorePatient
Id: oncology-patient
Title: "Oncology Patient"
Description: "A person who is diagnosed with or is receiving medical treatment for a malignant growth or tumor"
/*
identifier contains social security number with Identifier.system = http://hl7.org/fhir/sid/us-ssn and
Identifier.value = ssn with dashes removed per https://www.hl7.org/fhir/identifier-registry.html
*/
* ^status = #draft
* ^experimental = true
* identifier 1..* MS
//Slice identifier to ensure tenantId identifier is present.
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains
    tenantId 1..1 and
    mrn 1..1 and
    fhir_stu3_id 1..1

* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].system = RTID //"http://projectronin.com/id/tenantId"
* identifier[mrn].type = IDTYPE#MR "Medical Record Number"
* identifier[mrn].system = RMRN //"http://projectronin.com/id/mrn"
* identifier[fhir_stu3_id].type = RFHIRID#STU3 "FHIR STU3 ID"
* identifier[fhir_stu3_id].system = RFHIRID //"http://projectronin.com/id/fhir"

* birthDate 1..1 MS
* telecom 1..* MS
//* telecom.system 1..1 MS
//* telecom.value 1..1 MS
* telecom.use 1..1 MS
//* name 1..* MS  //"Note that middle name is included in name.given and maiden name is name.family where name.use = maiden"
* name obeys us-core-8
* name.use MS
//* name.family MS
* name.family ^condition = "us-core-8"
//* name.given MS
* name.given ^condition = "us-core-8"
* name.suffix MS
* name.prefix MS
* deceased[x] MS
//* gender 1..1 MS
* maritalStatus 1..1 MS
* address 1..* MS
//* address.city MS
* address.country MS
* address.district MS
//* address.state MS
* address.state from UspsTwoLetterAlphabeticCodes (extensible)
//* address.line MS
//* address.postalCode MS
* address.postalCode ^short = "US Zip Codes"
* generalPractitioner MS
* generalPractitioner.reference MS
* generalPractitioner.display MS
* communication MS
* communication.preferred MS
* communication.language MS
* communication.language from LanguageCodesWithLanguageAndOptionallyARegionModifier (extensible)
* communication.language.coding MS
* communication.language.text MS
* extension contains
//    USCoreBirthSex named birthsex 0..1 MS and
//    USCoreEthnicity named ethnicity 0..1 MS and
//    USCoreRace named race 0..1 MS and
    PatientReligion named religion 0..1 MS


// Just to demo how to write invariant rules.  This and associated condition referenced above can be removed
// They will be automatically inherited (I think)
Invariant: us-core-8
Description: "Patient.name.given or Patient.name.family or both SHALL be present"
Severity: #error
Expression: "family.exists() or given.exists()"
XPath: "f:given or f:family"


// Example Patient
Instance: ExamplePatient
InstanceOf: OncologyPatient
Description: "Example Oncology Patient"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "12345"
* identifier[fhir_stu3_id].type = RFHIRID#STU3 "FHIR STU3 ID"
* identifier[fhir_stu3_id].system = "http://projectronin.com/id/fhir"
* identifier[fhir_stu3_id].value = "abc12345"
* name.family = "Pablo"
* name.given = "Corwin"
* telecom.system = #phone
* telecom.value = "1-791-760-3413"
* telecom.use = #home
* gender = #female
* birthDate = "2020-01-01"
* address.line = "81947 Stracke Crest"
* address.city = "Hillsboro"
* address.district = "Berkshire"
* address.state = "Georgia"
* address.postalCode = "32624-2413"
* address.country = "Nicaragua"
* maritalStatus.coding.code = #M
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.text = "Married"
* generalPractitioner.display = "Harvey Feest"
