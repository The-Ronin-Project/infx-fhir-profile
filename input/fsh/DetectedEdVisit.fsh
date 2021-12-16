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


Resource: EntityIndex
Id: EntityIndex
Title: "Detected ED Visit Entity Index"
Description: "A custom resource that is used for NLP detected ED string indices"
* ^status = #draft
* ^experimental = true

* start 1..1 SU positiveInt "start index of ED visit entity detected in source string"
* end 1..1 SU positiveInt "end index of ED visit entity detected in source string"
