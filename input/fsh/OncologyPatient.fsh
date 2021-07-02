/*
OncologyPatient profile is a Patient modeled to meet Ronin's minimal requirements/constraints.  
All other fields are automatically inherited from Parent: Patient
*/
Profile: OncologyPatient
Parent: USCorePatient
Id: oncology-patient
Title: "Oncology Patient"
Description: "A person who is diagnosed with or is receiving medical treatment for a malignant growth or tumor "
/*
identifier contains social security number with Identifier.system = http://hl7.org/fhir/sid/us-ssn and 
Identifier.value = ssn with dashes removed per https://www.hl7.org/fhir/identifier-registry.html
*/
* ^status = #draft
* ^experimental = true
//* identifier 1..* MS
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
* generalPractitioner 1..* MS
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