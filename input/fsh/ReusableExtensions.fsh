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
* value[x] only CodeableConcept
* value[x] from EDVisitRiskDriverCategoryCodesVS
* value[x] ^short = "Category code for risk driver"
* value[x] 1..1

Extension: LabRankType
Id: rank
Title: "Risk driver contribution rank"
Description: "Ranks this lab's contribution to the Risk driver."
* value[x] only Quantity
* value[x] ^short = "Risk driver contribution rank"
* value[x] 1..1

Extension: EDVisitComponentType
Id: componentType
Title: "Component type"
Description: "Used to differentiate between observation component types"
* value[x] only CodeableConcept
* value[x] from EDVisitComponentTypeCodesVS
* value[x] ^short = "Component type codes for ED Visit"
* value[x] 1..1