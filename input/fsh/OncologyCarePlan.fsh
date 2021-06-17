/*
OncologyCarePlan is a resource that models the CarePlan for an oncology patient.
*/
Profile: OncologyCarePlan
Parent: USCoreCarePlan
Id: oncology-care-plan
Title: "Oncology Care Plan"
Description: "A CarePlan resource that is used for oncology patients"

* ^status = #draft
* ^experimental = true
* identifier MS
* activity MS
* activity.detail MS
// * subject MS default
* goal MS
* title MS