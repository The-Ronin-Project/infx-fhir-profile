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

Extension: ReferringDoctorType
Id:  referringDoctor
Title: "Referring Doctor Type"
Description: "Referring Doctor type that referred the patient."
* value[x] only Reference(OncologyPractitioner)

Extension: DepartmentType
Id:  department
Title: "department"
Description: "Extension to add PartnerDepartment link"
* value[x] only Reference(PartnerDepartment)
