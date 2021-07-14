/*
OncologyMedicationRequest is a resource that models the medication Request for an oncology patient.
reference http://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationrequest.html
*/
Profile: OncologyMedicationRequest
Parent: USCoreMedicationRequest
Id: oncology-medication-Request
Title: "Oncology Medication Request"
Description: "A MedicationRequest resource that is used for oncology patients"

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

//supportive care?
* dispenseRequest MS
// TODO Need to revisit this 
//* dispenseRequest.quantity.value MS  //calcDose
//* dispenseRequest.quantity.unit MS   //calcDoseUnit
//chemotherapyIndicator? Y
* basedOn only Reference(CarePlan)
* basedOn MS
* basedOn.reference MS //treatmentDate, treatnebtDayNumber, cycleNumber, cycleStartDate
* basedOn.identifier MS //treatmentPlanID
//hormonalTherapyIndicator? Y
* medication[x] MS
    //* medicationCodeableConcept MS //rxNormPlanned
    //* medicationReference MS
    * medicationReference.display MS
    * medicationReference.identifier MS
* dispenseRequest MS
* dispenseRequest.quantity MS
* dispenseRequest.quantity.value MS  // orderDose
* dispenseRequest.quantity.unit MS // orderUnit
* dispenseRequest.initialFill MS
//* dispenseRequest.initialFill.quatity MS // originalDose
//* dispenseRequest.initialFill.quatity MS // originalUnit
//Revisit orderFreq
* dosageInstruction.timing.repeat.when MS //orderFreq
* dosageInstruction.timing.event MS //planStartDate
* performer.identifier MS //orderVisitID
* requester.identifier MS //orderingProvID
* substitution MS
* substitution.allowedCodeableConcept MS
* substitution.allowedCodeableConcept.coding.code MS
* substitution.reason MS
//revisedDose
//revisedUnit

* extension contains RevisedDose named revisedDose 0..1
* extension contains RevisedUnit named revisedUnit 0..1

Extension: RevisedDose
Id:  revisedDose
Title: "Revised Dose"
Description: "Revised Dose"
* value[x] only string

Extension: RevisedUnit
Id:  revisedUnit
Title: "Revised Unit"
Description: "Revised Unit"
* value[x] only string

Instance: ExampleMedicationRequest
InstanceOf: OncologyMedicationRequest
Description: "Example Medication Request"
* id = "medicationRequestExampleId"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* status = #active
* intent = #proposal
* medicationReference = Reference(ExampleMedication)
* subject = Reference(ExamplePatient)
* authoredOn = "2021-02-02"
* requester = Reference(ExamplePatient)
* extension[revisedDose].valueString = "100"
* extension[revisedUnit].valueString = "mg"

Instance: ExampleMedication
InstanceOf: Medication
Description: "Example Medication"
* id = "medicationIdExample"
* code = RXN#349472 "gefitinib 250 MG Oral Tablet"