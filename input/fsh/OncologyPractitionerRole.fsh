/*
OncologyPractitionerRole is a resource that models a Practitioner role.
*/
Profile: OncologyPractitionerRole
Parent: USCorePractitionerRoleProfile
Id: oncology-practitionerrole
Title: "Oncology PractitionerRole"
Description: "An oncologist practitioner role resource"
//Slice identifier to ensure tenantId identifier is present.
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.rules = #open

* identifier contains
    tenantId 1..1

* identifier[tenantId] ^patternIdentifier.type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId] ^patternIdentifier.system = RTID //"http://projectronin.com/id/tenantId"

// Example PractitionerRole
Instance: ExamplePractitionerRole
InstanceOf: OncologyPractitionerRole
Description: "Example Oncology Practitioner"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* practitioner.type = "OncologyPractitioner"
* practitioner.display = "Frami Clearence, PA"
* organization.type = "PartnerDepartment"
* organization.display = "Ronin"
* code.text = "Physician Assistant"
* code.coding.display = "Physician Assistant"
* telecom.system = #phone
* telecom.value = "1-555-544-3334"
* telecom.use = #work

