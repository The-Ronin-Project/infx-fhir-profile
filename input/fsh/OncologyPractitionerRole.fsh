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
* telecom.system = #phone
* telecom.value = "1-555-544-3334"
* telecom.use = #work

