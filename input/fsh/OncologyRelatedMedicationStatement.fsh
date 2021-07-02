/*
OncologyRelatedMedicationStatement is a resource that models the medication statements for an oncology patient.
*/
Profile: OncologyRelatedMedicationStatement
Parent: MedicationStatement
Id: oncology-related-medication-statement
Title: "Oncology-related Medication Statement"
Description: "A Medication Statement resource that is used for oncology patients"

* ^status = #draft
* ^experimental = true
* identifier MS
* basedOn MS
* basedOn.display MS
* basedOn.identifier MS
* basedOn.reference MS
* status MS
* dateAsserted MS
* dosage MS
* dosage.asNeededBoolean MS
* dosage.doseAndRate.dose[x] MS
* dosage.extension MS
* dosage.extension.url MS
* dosage.extension.value[x] only Quantity or Range //valueQuantity and valueRange
* dosage.extension.value[x] MS
* dosage.method MS
* dosage.patientInstruction MS
* dosage.route MS
* dosage.sequence MS
* dosage.text MS
* dosage.timing.code MS
* dosage.timing.repeat MS
* dosage.timing.repeat.boundsPeriod MS
* dosage.timing.repeat.countMax MS
* dosage.timing.repeat.dayOfWeek MS
* dosage.timing.repeat.duration MS
* dosage.timing.repeat.durationUnit MS
* dosage.timing.repeat.frequency MS
* dosage.timing.repeat.period MS
* dosage.timing.repeat.periodUnit MS
* dosage.timing.repeat.timeOfDay MS
* category MS
* medicationReference MS
* effectivePeriod MS
* informationSource.reference MS
* informationSource.display MS
* subject only Reference(OncologyPatient)
* subject.reference MS
* subject.display MS
* note.text MS


// Example MedicationStatement
Instance: ExampleMedicationStatement
InstanceOf: OncologyRelatedMedicationStatement
* identifier.system = "http://projectronin.com/fhir/us/ronin"
* identifier.value = "12345"
* subject.display = "Mr. Johnnie Purdy"
* status = #active
* medicationReference.display = "medication display"
