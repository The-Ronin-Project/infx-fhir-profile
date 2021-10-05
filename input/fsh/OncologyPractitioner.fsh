/*
OncologyPractitioner is a resource that models a Practitioner oncologist.
*/
Profile: OncologyPractitioner
Parent: USCorePractitioner
Id: oncology-practitioner
Title: "Oncology Practitioner"
Description: "An oncologist practitioner resource"

//more identifiers adid, empid, external, psId, serId
* identifier 1..* MS

//* name 1..* MS
* qualification MS
* qualification.issuer MS
* qualification.issuer.identifier MS
* qualification.issuer.display MS
* qualification.code MS


// Example Practitioner
Instance: ExamplePractitioner
InstanceOf: OncologyPractitioner
Description: "Example Oncology Practitioner"
* name.family = "Clarence"
* name.given = "Frami"
* identifier[NPI].type.coding.system = IDTYPE
* identifier[NPI].type.coding.code = IDTYPE#NPI
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "9988776444"
