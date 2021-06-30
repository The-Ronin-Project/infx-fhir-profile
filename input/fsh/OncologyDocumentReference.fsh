/*
OncologyDocumentReference is a resource that models the note details for an oncology patient.
HIGHLY EXPERIMENTAL and IN DIRE NEED OF EXTENSIONS
REVISIT - MAYBE we should use USCoreDiagnosticReport since it is for report and note exchange.
*/
Profile: OncologyDocumentReference
Parent: USCoreDocumentReference
Id: oncology-document-reference
Title: "Oncology Document Reference"
Description: "A DocumentReference resource that is used to model note details for oncology patients"

* ^status = #draft
* ^experimental = true
* identifier MS
* status MS
//isDeleted	Need an extension
//deletionUser	
//deletionTime	
//lastEditTime	N/A
* date MS //creationTime
* context MS
* context.period.start MS //dateOfService	
//isSensitive	N/A
* subject only Reference(OncologyPatient)
* subject.identifier MS //mrn	
* content MS
* content.attachment.url MS //noteID.id
* content.attachment.contentType MS //noteID.type
// noteContactID.id	
// noteContactID.type	
* subject.identifier MS //patientID.id	
* subject.type MS //patientID.type	
* custodian MS //contactID.id
* custodian.type MS //contactID.type
* type MS
* type.coding.display MS //type.abbreviation
* type.text MS //type.title
* type.coding.code MS 
//type.value	
* context.related MS //service.abbreviation service.title service.value	
* author MS

// authorType.abbreviation	Create a new resource
// authorType.title	author.reference
// authorType.value	
// author.id	
// author.extId	
// author.name	
// author.displayName	
// author.ini	
// author.recordLastUpdatedOn	
// lastEditor.id	extension required
// lastEditor.extId	
// lastEditor.name	
// lastEditor.displayName	
// lastEditor.ini	
// lastEditor.recordLastUpdatedOn	
// cosignRequirement.abbreviation	extension required
// cosignRequirement.title	
// cosignRequirement.value	
// cosignTime	
// cosigner	

* extension contains OncologyDocumentReferenceIsDeleted named isDeleted 0..1
* extension contains OncologyDocumentReferenceDeletionUser named deletionUser 0..1
* extension contains OncologyDocumentReferenceDeletionTime named deletionTime 0..1

Extension: OncologyDocumentReferenceIsDeleted
Id:  isDeleted
Title: "Is Deleted"
Description: "Document Reference is Deleted"
* value[x] only boolean

Extension: OncologyDocumentReferenceDeletionUser
Id:  deletionUser
Title: "Deletion User"
Description: "Deletion User"
* value[x] only string

Extension: OncologyDocumentReferenceDeletionTime
Id:  deletionTime
Title: "Deletion Time"
Description: "Deletion Time"
* value[x] only dateTime