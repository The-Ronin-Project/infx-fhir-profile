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

* extension contains RoninIsDeleted named isDeleted 0..1
* extension contains RoninDeletionUser named deletionUser 0..1
* extension contains RoninDeletionTime named deletionTime 0..1

Extension: RoninIsDeleted
Id:  isDeleted
Title: "Is Deleted"
Description: "Document Reference is Deleted"
* value[x] only boolean

Extension: RoninDeletionUser
Id:  deletionUser
Title: "Deletion User"
Description: "Deletion User"
* value[x] only string

Extension: RoninDeletionTime
Id:  deletionTime
Title: "Deletion Time"
Description: "Deletion Time"
* value[x] only dateTime