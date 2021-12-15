/*
DetectedEDVisit is a resource that models ED Visits extracted from notes with NLP.
*/
Resource: DetectedEDVisit
Id: DetectedEDVisit
Title: "Detected ED Visit"
Description: "A custom resource that is used for NLP detected emergency department visit"

* ^status = #draft
* ^experimental = true

* identifier 0..* SU Identifier "An identifier for this DetectedEDVisit" "An identifier for this DetectedEDVisit."
* identifier ^requirements = "DetectedEDVisits are almost always assigned specific numerical identifiers."
* identifier ^mustSupport = false
* identifier ^isModifier = false

* modelVersion 1..1 SU string "NLP model version that detected this ED visit"
* humanAnnotated 1..1 SU boolean "Indicates whether the record is Human Annotated or not"
* startDate 0..1 SU date "ED visit date" "ED visit NLP detected date of service"
* source 1..1 SU string "Sentence used by View Source" "Sentence detected to indicated ED Visit"
* sourceEntityIndex 1..* SU EntityIndex "Indices of ED visit entities detected in source string"
// User Feedback will be stored in Banken initially and this flag is deprecated until later notice
//* isValid 0..1 SU boolean "User feedback" "User feedback to indicate if prediction is false"
* context 1..1 SU Reference(OncologyDocumentReference)
                    "Note used by View Note" "Reference to the clinical note from medical record"
* subject 1..1 SU Reference(OncologyPatient) "ED visit patient"
* location 0..1 SU string "Detected location of ED visit"


Profile: OncologyDetectedEDVisit
Parent: DetectedEDVisit
Id: oncology-detected-ed-visit
Title: "Oncology Detected ED Visit"
Description: "A profile for NLP detected emergency department visit"
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


Resource: EntityIndex
Parent: DomainResource
Id: EntityIndex
Title: "Detected ED Visit Entity Index"
Description: "A custom resource that is used for NLP detected ED string indices"
* ^status = #draft
* ^experimental = true

* start 1..1 SU positiveInt "start index of ED visit entity detected in source string"
* end 1..1 SU positiveInt "end index of ED visit entity detected in source string"


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
