// Example PartnerDepartment
Instance: roninPartnerDepartmentExample01
InstanceOf: PartnerDepartment
Description: "Ronin Example Partner"
* id = "roninPartnerDepartmentExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/partner-department"
* active = true
* name = "MDA"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MDA</div>"


Instance: roninPrimaryOncologyConditionExample01
InstanceOf: OncologyCondition
Description: "Ronin Example for Primary Oncology Condition"
* id = "roninPrimaryOncologyConditionExample01"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* category.coding.display = "encounter-diagnosis"
* category.text = "Encounter Diagnosis"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-condition"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* code = SCT#254637007 "Non-small cell lung cancer"
//* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#35917007 "Adenocarcinoma"
* bodySite = SCT#39607008 "Lung structure (body structure)"
//* bodySite.extension[laterality].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* subject = Reference(roninPatientExample01)
* onsetDateTime = "2019-04-01"
* asserter = Reference(roninPractitionerExample01)
* stage.summary = AJCC#3C "IIIC"
//* stage.assessment = Reference(roninTNMClinicalStageGroupExample01)


Instance: roninPatientExample01
InstanceOf: OncologyPatient
Description: "Ronin Example for Patient"
* id = "roninPatientExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-patient"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "123"
* name.family = "Anyperson"
* name.given[0] = "John"
* name.given[1] = "B."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-555-5555"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "john.anyperson@example.com"
* telecom.system = #phone
* telecom.value = "1-555-555-3413"
* telecom.use = #home
* gender = #male
* birthDate = "1951-01-20"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"
* maritalStatus.coding.code = #M
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.text = "Married"
* generalPractitioner.display = "Harvey Feest"


Instance: roninPractitionerExample01
InstanceOf: OncologyPractitioner
Description: "Ronin Example for Practitioner"
* id = "roninPractitionerExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitioner"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "999999"
* identifier[NPI].type.coding.system = IDTYPE
* identifier[NPI].type.coding.code = IDTYPE#NPI
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "9988776655"
* name.family = "AnyDoctor"
* name.given = "Frami"
* name.prefix = "Dr."
* gender = #male
* address.use = #home
* address.line = "567 Healthcare Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360|2.7#MD "Doctor of Medicine"
* qualification.issuer = Reference(roninPartnerDepartmentExample01)


Instance: roninEncounterExample01
InstanceOf: OncologyEncounter
Description: "Ronin Example for Encounter"
* id = "roninEncounterExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-encounter"
// * identifier[1].system = "http://projectronin.com/fhir/us/ronin"
// * identifier[1].value = "12345"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* subject = Reference(roninPatientExample01)
* subject.display = "John Anyperson"
* participant.individual = Reference(roninPractitionerExample01)
* participant.period.start = "2019-02-07T13:28:17.000Z"
* participant.period.end = "2019-02-07T14:20:10.000Z"
* status = #arrived
* class.code = #AMB
* class.display = "ambulatory"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type = SCT#185347001
* type.text = "Encounter for problem"


Instance: roninDiagnosticReportNoteExample01
InstanceOf: OncologyDiagnosticReportNote
Description: "Ronin Example for Diagnostic Report Note"
* id = "roninDiagnosticReportNoteExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-diagnostic-report-note"
// * identifier[1].system = "http://projectronin.com/fhir/us/ronin"
// * identifier[1].value = "diag_report_12345"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* category.coding.display = "Imaging"
* category.text = "Imaging"
* code = LNC#10207-9
* code.text = "Physical findings of Thorax and Lungs Narrative"
* subject = Reference(roninPatientExample01)
* subject.display = "John Anyperson"
* status = #registered
* effectiveDateTime = "2017-01-01T00:00:00.000Z"
* encounter = Reference(roninEncounterExample01)


Instance:   roninDocumentReferenceExample01
InstanceOf: OncologyDocumentReference
Description: "Ronin Example for Oncology Document Reference"
* id = "roninDocumentReferenceExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-document-reference"
// * identifier[1].system = "http://projectronin.com/fhir/us/ronin"
// * identifier[1].value = "doc_ref_12345"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* status = #current
* date = "2015-02-07T13:28:17.239+02:00"
* context.id = "exampleContextId"
* type = LNC#28568-4 "Physician Emergency department Note"
* category = DocCat#clinical-note "Clinical Note"
* subject = Reference(roninPatientExample01)
* content.id = "exampleContentId"
* content.attachment.url = "http://example.com"
* content.attachment.contentType = #json
* author = Reference(roninPractitionerExample01)


Instance: roninOncologyCarePlanExample01
InstanceOf: OncologyCarePlan
Description: "Ronin Example for Oncology CarePlan"
* id = "roninOncologyCarePlanExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-care-plan"
// * identifier[1].system = "http://projectronin.com/fhir/us/ronin"
// * identifier[1].value = "plan_12345"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* status = #active
* intent = #proposal
* subject = Reference(roninPatientExample01)
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Lung Cancer</div>"
* encounter = Reference(roninEncounterExample01)
* addresses = Reference(roninPrimaryOncologyConditionExample01)
* author = Reference(roninPractitionerExample01)


Instance: roninOncologyPatientAppointmentExample01
InstanceOf: OncologyAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointmentExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-appointment"
// * identifier[1].system = "http://projectronin.com/fhir/us/ronin"
// * identifier[1].value = "appointment_12345"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* minutesDuration = 60
* comment = "Patient experiencing abdominal pain"
* start = "2019-02-07T13:28:17.000Z"
* end = "2019-02-07T14:28:17.000Z"
* status = #checked-in
* participant[0].actor = Reference(roninPatientExample01)
* participant[0].actor.identifier.value = "m123"
* participant[0].actor.display = "John Anyperson"
* participant[0].status = #accepted
* participant[1].actor = Reference(roninPractitionerExample01)
* participant[1].actor.identifier.value = "9988776655"
* participant[1].actor.display = "Dr. Frami Anyperson"
* participant[1].status = #accepted
* appointmentType = AppmtType#CHECKUP "A routine check-up, such as an annual physical"
* reasonReference = Reference(roninPrimaryOncologyConditionExample01)
* extension[department][0].valueReference = Reference(roninPartnerDepartmentExample01)

// Risk Assessments Example01 Instances
Instance: roninEdVisitRiskAssessmentExample01
InstanceOf: EDVisitRiskAssessment
Description: "Example ED Visit Risk Assessment"
* id = "roninEdVisitRiskAssessmentExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-risk-assessment"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* status = #final
* subject = Reference(roninPatientExample01)
* occurrenceDateTime = "2021-10-07"
* prediction.probabilityDecimal = 0.43
* basis = Reference(roninEdVisitRationaleExample01)
* extension[sampleSize].valueInteger = 200
* extension[cohortSize].valueInteger = 500


Instance: roninEdVisitRationaleExample01
InstanceOf: EDVisitRationale
Description: "Rationale associated with roninEdVisitRiskAssessmentExample01"
* id = "roninEdVisitRationaleExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-rationale"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* status = #final
* code = SCT#4525004 "Emergency department patient visit"
* focus = Reference(roninEdVisitRiskAssessmentExample01)
* issued = "2021-10-07T13:28:17.000Z"

// I added ID to this example but we don't have to use it
// We can use code.coding.code in search.
// NOTE that id has to be unique.
* component[ageRisk].id = "AgeRiskDriver"
* component[ageRisk].valueInteger = 110
* component[ageRisk].interpretation = RDSRD#increase
* component[ageRisk].referenceRange.low.value = 50
* component[ageRisk].referenceRange.high.value = 120
* component[ageRisk].referenceRange.text = "Age Range"
* component[ageRisk].extension[category].valueString = "Socioeconomic / Demographics"

* component[maritalStatusRisk].id = "maritalStatusRiskDriver"
* component[maritalStatusRisk].valueQuantity.value = 0.1
* component[maritalStatusRisk].interpretation = RDSRD#increase
* component[maritalStatusRisk].referenceRange.low.value = 0.05
* component[maritalStatusRisk].referenceRange.high.value = 0.2
* component[maritalStatusRisk].referenceRange.text = "Marital Status Range"
* component[maritalStatusRisk].extension[category].valueString = "Socioeconomic / Demographics"

* component[immunotherapyRisk].id = "ImmunotherapyRiskDriver"
* component[immunotherapyRisk].valueQuantity.value = 0.45
* component[immunotherapyRisk].interpretation = RDSRD#increase
* component[immunotherapyRisk].referenceRange.low.value = 0.05
* component[immunotherapyRisk].referenceRange.high.value = 1.0
* component[immunotherapyRisk].referenceRange.text = "Immunotherapy Range"
* component[immunotherapyRisk].extension[category].valueString = "Treatment Specific"

* component[TNMRisk].id = "TNMRiskDriver"
* component[TNMRisk].valueQuantity.value = 0.08
* component[TNMRisk].interpretation = RDSRD#decrease
* component[TNMRisk].referenceRange.low.value = 0.05
* component[TNMRisk].referenceRange.high.value = 0.1
* component[TNMRisk].referenceRange.text = "TNM Range"
* component[TNMRisk].extension[category].valueString = "Cancer Specific"

* component[diabetesRisk].id = "DiabetesRiskDriver"
* component[diabetesRisk].valueQuantity.value = 0.6
* component[diabetesRisk].interpretation = RDSRD#increase
* component[diabetesRisk].referenceRange.low.value = 0.2
* component[diabetesRisk].referenceRange.high.value = 1.0
* component[diabetesRisk].referenceRange.text = "Diabetes Range"
* component[diabetesRisk].extension[category].valueString = "Comorbidities"

* component[hypertensionRisk].id = "hypertensionRiskDriver"
* component[hypertensionRisk].valueQuantity.value = 0.45
* component[hypertensionRisk].interpretation = RDSRD#increase
* component[hypertensionRisk].referenceRange.low.value = 0.2
* component[hypertensionRisk].referenceRange.high.value = 1.0
* component[hypertensionRisk].referenceRange.text = "Hypertension Range"
* component[hypertensionRisk].extension[category].valueString = "Comorbidities"

* component[rheumatoidArthritisRisk].id = "rheumatoidArthritisRiskDriver"
* component[rheumatoidArthritisRisk].valueQuantity.value = 0.35
* component[rheumatoidArthritisRisk].interpretation = RDSRD#increase
* component[rheumatoidArthritisRisk].referenceRange.low.value = 0.1
* component[rheumatoidArthritisRisk].referenceRange.high.value = 0.7
* component[rheumatoidArthritisRisk].referenceRange.text = "Rheumatoid Arthritis Range"
* component[rheumatoidArthritisRisk].extension[category].valueString = "Comorbidities"

* component[serumCreatinineRisk].id = "serumCreatinineRiskDriver"
* component[serumCreatinineRisk].valueQuantity.value = 0.08
* component[serumCreatinineRisk].interpretation = RDSRD#increase
* component[serumCreatinineRisk].referenceRange.low.value = 0.01
* component[serumCreatinineRisk].referenceRange.high.value = 0.1
* component[serumCreatinineRisk].referenceRange.text = "Serum Creatinine Range"
* component[serumCreatinineRisk].extension[category].valueString = "Labs"

* component[potassiumRisk].id = "potassiumRiskDriver"
* component[potassiumRisk].valueQuantity.value = 0.07
* component[potassiumRisk].interpretation = RDSRD#increase
* component[potassiumRisk].referenceRange.low.value = 0.01
* component[potassiumRisk].referenceRange.high.value = 0.1
* component[potassiumRisk].referenceRange.text = "Potassium Range"
* component[potassiumRisk].extension[category].valueString = "Labs"

* component[ANCRisk].id = "ANCRiskDriver"
* component[ANCRisk].valueQuantity.value = 0.03
* component[ANCRisk].interpretation = RDSRD#increase
* component[ANCRisk].referenceRange.low.value = 0.01
* component[ANCRisk].referenceRange.high.value = 0.1
* component[ANCRisk].referenceRange.text = "ANC Range"
* component[ANCRisk].extension[category].valueString = "Labs"

* component[ageComparison].id = "AgePatientComparison"
* component[ageComparison].valueInteger = 190

* component[overallMatchComparison].id = "overallMatchPatientComparison"
* component[overallMatchComparison].valueInteger = 161

* component[performanceStatusComparison].id = "performanceStatusPatientComparison"
* component[performanceStatusComparison].valueInteger = 200

* component[stageAndTNMComparison].id = "stageAndTNMPatientComparison"
* component[stageAndTNMComparison].valueInteger = 160

* component[priorOrCurrentTreatmentsComparison].id = "priorOrCurrentTreatmentsPatientComparison"
* component[priorOrCurrentTreatmentsComparison].valueInteger = 160

* component[CCIComparison].id = "CCIPatientComparison"
* component[CCIComparison].valueInteger = 130

* component[activeMedicationComparison].id = "activeMedicationPatientComparison"
* component[activeMedicationComparison].valueInteger = 130

* component[labs].id = "Labs"
* component[labs].code.coding[0] = RDSLAB#31f8a5a3-19c5-4789-b46e-77d6a851a4cc "Amylase"
* component[labs].code.coding[0].version = "1"

* component[labs].code.coding[1] = RDSLAB#eca5e803-675c-4615-8992-4e03508a778f "INR"
* component[labs].code.coding[1].version = "1"

* component[labs].code.coding[2] = RDSLAB#dd0113d4-f448-478c-b8db-d84d4a36601f "CA15.3"
* component[labs].code.coding[2].version = "2"

* component[symptoms].id = "Symptoms"
* component[symptoms].code.coding[0] = RDSSYMPTOM#Fever "Fever"
* component[symptoms].code.coding[0].extension[eventDate].valueDate = "2021-10-31"

* component[symptoms].code.coding[1] = RDSSYMPTOM#Nausea/vomiting "Nausea/Vomiting"
* component[symptoms].code.coding[1].extension[eventDate].valueDate = "2021-11-20"

* component[symptoms].code.coding[2] = RDSSYMPTOM#Diarrhea "Diarrhea"
* component[symptoms].code.coding[2].extension[eventDate].valueDate = "2020-08-10"

* component[symptoms].code.coding[3] = RDSSYMPTOM#ShortnessOfBreath "Shortness of breath"
* component[symptoms].code.coding[3].extension[eventDate].valueDate = "2019-10-15"

* component[symptoms].code.coding[4] = RDSSYMPTOM#Pain "Pain"
* component[symptoms].code.coding[4].extension[eventDate].valueDate = "2018-08-12"
