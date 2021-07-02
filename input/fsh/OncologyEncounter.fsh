/*
OncologyEncounter is a resource that models the encounters for an oncology patient.
*/
Profile: OncologyEncounter
Parent: USCoreEncounter
Id: oncology-encounter
Title: "Oncology Encounter"
Description: "An Encounter resource that is used for oncology patients"

* ^status = #draft
* ^experimental = true
//* identifier MS
//* status MS
//* type MS
//* location MS
//* class MS
* class.system MS
* class.code MS
* class.display MS
//* subject only Reference(OncologyPatient)
//* subject MS
* subject.reference MS
* subject.display MS
//* period MS
* appointment.reference MS
//* hospitalization MS
* hospitalization.destination.display MS
* hospitalization.destination.reference MS
//* hospitalization.dischargeDisposition MS
* hospitalization.origin.reference MS
* partOf MS
* partOf.reference MS
//* participant MS
* participant.individual.display MS
* participant.individual.reference MS
//* participant.period MS
//* participant.type MS
//* location MS
* location.location.display MS
* location.location.reference MS
* location.period MS
* priority MS
* priority.coding MS
* priority.text MS
//* reasonCode MS
* reasonCode.coding MS
* reasonCode.text MS