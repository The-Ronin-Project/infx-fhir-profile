Extension: MedicationBrandType
Id:  isBrand
Title: "Medication Brand Type"
Description: "The type of medication isBrand true/false."
* value[x] only boolean

Extension: MedicationOverCounterType
Id:  isOverTheCounter
Title: "Medication Over Counter Type"
Description: "The type of medication isOverTheCounter true/false."
* value[x] only boolean

Extension: ScheduledDateTimeType
Id:  scheduledDateTime
Title: "Scheduled Date Time Type"
Description: "DateTime type that indicates scheduled date time."
* value[x] only dateTime

Extension: EventDateType
Id: eventDate
Title: "Event Date Type"
Description: "Date type that indicates an event date."
* value[x] only date
* value[x] ^short = "Date of event"
* value[x] 1..1

Extension: RiskAssessmentSampleSize
Id: riskAssessmentSampleSize
Title: "Sample Size"
Description: "Risk assessment sample size"
* value[x] only integer 
* value[x] ^short = "Risk assessment sample size"
* value[x] 1..1

Extension: RiskAssessmentCohortSize
Id: riskAssessmentCohortSize
Title: "Cohort Size"
Description: "Risk assessment cohort size"
* value[x] only integer 
* value[x] ^short = "Risk assessment cohort size"
* value[x] 1..1

Extension: ReferringDoctorType
Id:  referringDoctor
Title: "Referring Doctor Type"
Description: "Referring Doctor type that referred the patient."
* value[x] only Reference(OncologyPractitioner)

Extension: DepartmentType
Id:  partnerDepartmentReference
Title: "Department"
Description: "Extension to add PartnerDepartment link"
* value[x] only Reference(PartnerDepartment)

Extension: RiskDriverCategoryType
Id: category
Title:  "Category for Risk Drivers"
Description: "An extension for representing a specific category corresponding to risk drivers of an assessment."
* value[x] only string
* value[x] ^short = "String category for risk driver"
* value[x] 1..1
