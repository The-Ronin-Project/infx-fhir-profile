Profile: OncologyDetectedEDVisit
Parent: DetectedEDVisit
Id: oncology-detected-ed-visit
Title: "Oncology Detected ED Visit"
Description: "A profile for NLP detected emergency department visit"
* ^status = #draft
* ^experimental = true

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    tenantId 1..1 and
    mrn 0..1

* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].system = RTID //"http://projectronin.com/id/tenantId"
* identifier[mrn].type = IDTYPE#MR "Medical Record Number"
* identifier[mrn].system = RMRN //"http://projectronin.com/id/mrn"

* modelVersion MS
* humanAnnotated MS
* startDate MS
* source MS
* sourceEntityIndex MS
* context MS
* subject MS
* location MS


// publisher.jar (used in _genonce.sh) doesn't seem to allow custom resource
// to be instantiated. For reference:
// https://github.com/HL7/fhir-ig-publisher/blob/master/org.hl7.fhir.publisher.core/src/main/java/org/hl7/fhir/igtools/publisher/SimpleFetcher.java#L193-L194
// Instance: ExampleDetectedEDVisit
// InstanceOf: OncologyDetectedEDVisit
// Description: "DetectedEDVisit example"
// * identifier[tenantId].system = "http://projectronin.com/id/tenantId"
// * identifier[tenantId].value = "mdaoc"
// * identifier[mrn].system = "http://projectronin.com/id/mrn"
// * identifier[mrn].value = "12345"
// * modelVersion = "1"
// * humanAnnotated = true
// * context = Reference(ExampleDocumentReference)
// * subject = Reference(ExamplePatient)
// * startDate = "2021-06-01"
// * source = "I went to ER to check irregular heart beats on June 1st 2021"
// * sourceEntityIndex[0].start = 47
// * sourceEntityIndex[0].end = 60
// * sourceEntityIndex[1].start = 10
// * sourceEntityIndex[1].end = 12
