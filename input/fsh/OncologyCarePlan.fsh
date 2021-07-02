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
* activity MS
* activity.detail MS
// * goal MS -> included in R4/USCore
// * title MS -> included in R4/USCore

* extension contains OncologyCarePlanTreatmentDayName named treatmentDayName 0..1
* extension contains OncologyCarePlanTreatmentDayNumber named treatmentDayNumber 0..1
* extension contains OncologyCarePlanStartDate named treatmentStartDate 0..1
* extension contains OncologyCarePlanEndDate named treatmentEndDate 0..1
* extension contains OncologyCarePlanLineOfTreatment named lineOfTreatment 0..1
* extension contains OncologyCarePlanDayStatus named dayStatus 0..1
* extension contains OncologyCarePlanCycleName named cycleName 0..1
* extension contains OncologyCarePlanCycleNumber named cycleNumber 0..1
* extension contains OncologyCarePlanCycleStartDate named cycleStartDate 0..1

Extension: OncologyCarePlanTreatmentDayName
Id:  treatmentDayName
Title: "Treatment Day Name"
Description: "Treatment Day Name"
* value[x] only string

Extension: OncologyCarePlanTreatmentDayNumber
Id:  treatmentDayNumber
Title: "Treatment Day Number"
Description: "Treatment Day Number"
* value[x] only decimal

Extension: OncologyCarePlanStartDate
Id:  treatmentStartDate
Title: "Treatment Plan Start Date"
Description: "Treatment Plan Start Date"
* value[x] only date

Extension: OncologyCarePlanEndDate
Id:  treatmentEndDate
Title: "Treatment Plan End Date"
Description: "Treatment Plan End Date"
* value[x] only date

Extension: OncologyCarePlanLineOfTreatment
Id:  lineOfTreatment
Title: "Line of Treatment"
Description: "Line of Treatment"
* value[x] only string

Extension: OncologyCarePlanDayStatus
Id:  dayStatus
Title: "Treatment Day Status"
Description: "Treatment Day Status"
* value[x] only string

Extension: OncologyCarePlanCycleName
Id:  cycleName
Title: "Cycle Name"
Description: "Cycle Name"
* value[x] only string

Extension: OncologyCarePlanCycleNumber
Id:  cycleNumber
Title: "Cycle Number"
Description: "Cycle Number"
* value[x] only decimal

Extension: OncologyCarePlanCycleStartDate
Id:  cycleStartDate
Title: "Cycle Start Date"
Description: "Cycle Start Date"
* value[x] only date