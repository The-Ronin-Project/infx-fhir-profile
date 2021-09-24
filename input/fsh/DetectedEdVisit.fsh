/*
DetectedEDVisit is a logical resource that models ED Visits extracted from notes with NLP.
*/
Logical: DetectedEDVisit
Parent: Element
Id: DetectedEDVisit
Title: "Detected ED Visits"
Description: "A custom resource that is used for NLP detected emergency department visit"

* ^status = #draft
* ^experimental = true

* identifier 1..* SU Identifier "Identifier" "Other identifiers for the document"
* identifier.tenantId 1..1 SU Identifier "tenantid" "The tenant identifier"
//Slice identifier to ensure tenantId identifier is present.
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* startDate 0..1 SU date "ED visit date" "ED visit NLP detected date of service"
* source 0..1 SU string "Sentence used by View Source" "Sentence detected to indicated ED Visit"
* isValid 0..1 SU boolean "User feedback" "User feedback to indicate if prediction is false"
* context 0..1 SU Reference(OncologyDocumentReference) 
                    "Note used by View Note" "Reference to the clinical note from medical record"
