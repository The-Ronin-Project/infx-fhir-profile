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
//Slice identifier to ensure tenantId identifier is present.

* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.rules = #open

* identifier contains
    tenantId 1..1 and
    SER    1..1

* identifier[tenantId] ^patternIdentifier.type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId] ^patternIdentifier.system = RTID //"http://projectronin.com/id/tenantId"
* identifier[SER] ^patternIdentifier.type = RSERID#SER "Provider SER Identifier"
* identifier[SER] ^patternIdentifier.system = RSERID //"http://projectronin.com/id/ser"

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
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "mdaoc-999991"
* identifier[NPI].type.coding.system = IDTYPE
* identifier[NPI].type.coding.code = IDTYPE#NPI
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "9988776444"
