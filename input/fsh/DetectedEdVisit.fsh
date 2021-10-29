/*
DetectedEDVisit is a logical resource that models ED Visits extracted from notes with NLP.
*/
Logical: DetectedEDVisit
Parent: Element
Id: detected-ed-visit
Title: "Detected ED Visit"
Description: "A custom resource that is used for NLP detected emergency department visit"

* ^status = #draft
* ^experimental = true
// id is in Element
//* id 1..1 SU string "Logical identifier" "Logical identifier for this resource"
* identifier 1..* SU Identifier "Identifier" "Other identifiers for the document"
* identifier.tenantId 1..1 SU Identifier "tenantid" "The tenant identifier"
* identifier.mrn 1..1 SU Identifier "MRN" "The Medical Record Number"
//Slice identifier to ensure tenantId identifier is present.
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
// Keep this comment for reference.
// 'AssignmentRule' is not permitted for 'Logical'
// that's why it is commented and left for reference.
// * identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
// * identifier[tenantId].system = RTID //"http://projectronin.com/id/tenantId"
// * identifier[mrn].type = IDTYPE#MR "Medical Record Number"
// * identifier[mrn].system = RMRN //"http://projectronin.com/id/mrn"
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

Logical: EntityIndex
Parent: Element
Id: entity-index
Title: "Detected ED Visit entity index"
Description: "A custom resource that is used for NLP detected ED string indices"
* ^status = #draft
* ^experimental = true
* start 1..1 SU positiveInt "start index of ED visit entity detected in source string"
* end 1..1 SU positiveInt "end index of ED visit entity detected in source string"

// Cannot create instance of an abstract logical model
// Keep this comment to show how it would look like.

// Instance: ExampleEDVisit
// InstanceOf: DetectedEDVisit
// Description: "DetectedEdVisit example"
// * modelVersion = "1"
// * identifier[tenantId].system = "http://projectronin.com/id/tenantId"
// * identifier[tenantId].value = "mdaoc"
// * identifier[mrn].system = "http://projectronin.com/id/mrn"
// * identifier[mrn].value = "12345"
// * context = Reference(ExampleDocumentReference)
// * subject = Reference(ExamplePatient)
// * startDate = "2021-06-01"
// * source = "I went to ER to check irregular heart beats on June 1st 2021"
// * sourceEntityIndex[DATE].start = 47
// * sourceEntityIndex[DATE].end = 60
// * sourceEntityIndex[ED].start = 10
// * sourceEntityIndex[ED].end = 12


