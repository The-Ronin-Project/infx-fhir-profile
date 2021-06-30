/*
RoninDeletionStatus is a resource that models deletion states
*/
Profile: RoninDeletionStatus
Parent: Resource
Id: ronin-deletion-status
Title: "Ronin Deletion Status"
Description: "A Deletion Status models when a related Resource was deleted and by whom"

* ^status = #draft
* ^experimental = true
* identifier MS
* isDeleted MS
* deletionUser MS
* deletionTime MS