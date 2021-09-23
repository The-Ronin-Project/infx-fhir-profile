/*
OncologyAppointment is a resource that models the appointment from patients and providers.
*/
Profile: OncologyAppointment
Parent: Appointment
Id: oncology-appointment
Title: "Oncology Appointment"
Description: "An Appointment resource that is used for oncology patients and providers"

* ^status = #draft
* ^experimental = true
* identifier 1..* MS
//Slice identifier to ensure tenantId identifier is present.
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains
    tenantId 1..1

* identifier[tenantId].system = "http://projectronin.com/id/tenantId"

* created MS
* minutesDuration MS
* comment MS
* start MS
* status MS
* participant MS
* participant.actor only Reference(OncologyPatient or OncologyPractitioner or HealthcareService)
* participant.actor.identifier MS
* participant.actor.display MS
* participant.period MS
* participant.type MS
* appointmentType MS
* appointmentType.coding MS
* appointmentType.text MS
* extension MS
* extension contains
    DepartmentType named department 0..* MS

