/*
OncologyMedicationAdministration is a resource that models the medication administration for an oncology patient.
*/
Profile: OncologyMedicationAdministration
Parent: MedicationAdministration
Id: oncology-medication-administration
Title: "Oncology Medication Administration"
Description: "A MedicationAdministation resource that is used for oncology patients"

* ^status = #draft
* ^experimental = true
* subject only Reference(OncologyPatient)
* subject MS
* subject.identifier MS
* status MS
* performer.actor.identifier MS
* note MS
* dosage.dose.unit MS
* dosage.rateQuantity.value MS
* dosage.rateQuantity.unit MS
* effectivePeriod MS
* request MS
* reasonCode MS
* dosage.route MS
* extension contains
    ScheduledDateTimeType named scheduledDateTime 0..1 MS
* dosage.text MS
* effectiveDateTime MS


// Example MedicationAdministration
Instance: ExampleMedicationAdministration
InstanceOf: OncologyMedicationAdministration
* identifier.system = "http://projectronin.com/fhir/us/ronin"
* identifier.value = "12345"
* subject.display = "Ethel O'Hara"
* status = #in-progress
* medicationCodeableConcept.text = "code text"
* effectiveDateTime = "2017-01-01T00:00:00.000Z"
