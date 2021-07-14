/*
OncologyDiagnosticRepot is a resource that models a report or note for an oncology patient.
*/
Profile: OncologyDiagnosticReportNote
Parent: USCoreDiagnosticReportNote
Id: oncology-diagnostic-report-note
Title: "Oncology Diagnostic Report Note"
Description: "A DiagnosticReport resource that is used for oncology patients"

* ^status = #draft
* ^experimental = true
* identifier MS //includes reportUuid
* specimen MS
// performer.reference (Practitioner) default
* subject only Reference(OncologyPatient)
//* subject MS
* subject.display MS
* subject.identifier MS
// * issued or effectiveDateTime default
* extension contains
    ReferringDoctorType named referringDoctor 0..1 MS
//Keeping these as optional for now but must consider for quick viewing instead of downloading full report
* conclusion MS
* conclusionCode MS
// * category MS default
// * status MS default
// * presentedForm.url MS default
// * encounter.reference MS default
// appointmentDate is in encounter->appointment - it will help us link encounter to report.



// Example DiagnosticReportNote
Instance: ExampleDiagnosticReportNote
InstanceOf: OncologyDiagnosticReportNote
Description: "Example Diagnostic Report Note"
* identifier.system = "http://projectronin.com/fhir/us/ronin"
* identifier.value = "12345"
* category.coding.display = "Imaging"
* category.text = "Imaging"
* code = LNC#10207-9
* code.text = "Physical findings of Thorax and Lungs Narrative"
* subject.display = "Clay Kihn"
* status = #registered
* effectiveDateTime = "2017-01-01T00:00:00.000Z"
* extension[referringDoctor].valueReference = Reference(ExamplePractitioner)