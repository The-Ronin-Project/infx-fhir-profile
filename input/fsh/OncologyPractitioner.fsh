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
* identifier.system = "http://projectronin.com/fhir/us/ronin"
* identifier.value = "12345"
