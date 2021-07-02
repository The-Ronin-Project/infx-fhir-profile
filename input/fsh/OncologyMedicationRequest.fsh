/*
OncologyMedicationRequest is a resource that models the medication Request for an oncology patient.
TODO DRAFT - do not use before revisiting and extending
reference http://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationrequest.html
*/
Profile: OncologyMedicationRequest
Parent: USCoreMedicationRequest
Id: oncology-medication-Request
Title: "Oncology Medication Request"
Description: "A MedicationRequest resource that is used for oncology patients"

* ^status = #draft
* ^experimental = true
* identifier MS
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
