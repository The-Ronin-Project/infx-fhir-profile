/*
RoninDeletionStatus is a resource that models deletion states
*/
Profile: RoninDeletionStatus
Parent: Basic
Id: ronin-deletion-status
Title: "Ronin Deletion Status"
Description: "A Deletion Status models when a related Resource was deleted and by whom"

* ^status = #draft
* ^experimental = true
// * identifier MS
// * isDeleted MS
// * deletionUser MS
// * deletionTime MS

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