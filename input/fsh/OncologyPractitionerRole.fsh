/*
OncologyPractitionerRole is a resource that models a Practitioner role.
*/
Profile: OncologyPractitionerRole
Parent: USCorePractitionerRoleProfile
Id: oncology-practitionerrole
Title: "Oncology PractitionerRole"
Description: "An oncologist practitioner role resource"

// Example PractitionerRole
Instance: ExamplePractitionerRole
InstanceOf: OncologyPractitionerRole
Description: "Example Oncology Practitioner"
* practitioner.type = "OncologyPractitioner"
* practitioner.display = "Frami Clearence, PA"
* organization.type = "PartnerDepartment"
* organization.display = "Ronin"
* code.text = "Physician Assistant"
* code.coding.display = "Physician Assistant"
* telecom[0].system = #phone
* telecom[0].value = "111-222-3333"
* telecom[0].use = #work
