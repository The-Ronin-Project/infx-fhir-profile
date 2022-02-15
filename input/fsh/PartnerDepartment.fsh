/*
PartnerDepartment is a resource that models a partner department.
*/
Profile: PartnerDepartment
Parent: USCoreOrganization
Id: partner-department
Title: "Partner Department"
Description: "A cancer center department"

* text MS //description
* active MS


// Example PartnerDepartment
Instance: ExamplePartnerDepartment
InstanceOf: PartnerDepartment
Description: "Example Partner Department"
* active = true
* name = "MDA"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MDA</div>"
