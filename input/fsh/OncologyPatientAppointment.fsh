/*
OncologyPatientAppointment is a resource that models the appointment from a patient's perspective.
*/
Profile: OncologyPatientAppointment
Parent: Appointment
Id: oncology-patient-appointment
Title: "Oncology Patient Appointment"
Description: "An Appointment resource that is used for oncology patients"

* ^status = #draft
* ^experimental = true
// identifier must include MRN of patient not just resource identifier. 
* identifier MS
* minutesDuration MS
* comment MS
* start MS
* status MS
* participant MS
* participant.actor only Reference(OncologyPatient or OncologyPractitioner)
* participant.actor.identifier MS
* participant.actor.display MS
* appointmentType MS
* appointmentType.coding MS
* appointmentType.text MS
