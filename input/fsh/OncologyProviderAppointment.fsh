/*
OncologyProviderAppointment is a resource that models the appointment from a provider's perspective.
*/
Profile: OncologyProviderAppointment
Parent: Appointment
Id: oncology-provider-appointment
Title: "Oncology Provider Appointment"
Description: "An Appointment resource that is used for oncology providers"

* ^status = #draft
* ^experimental = true
* identifier MS
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
