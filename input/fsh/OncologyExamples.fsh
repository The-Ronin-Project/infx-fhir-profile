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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[mrn].type = IDTYPE#MR "Medical Record Number"
* identifier[mrn].type.text = "MRN"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "123"
* identifier[fhir_stu3_id].type = RFHIRID#STU3 "FHIR STU3 ID"
* identifier[fhir_stu3_id].type.text = "FHIR STU3"
* identifier[fhir_stu3_id].system = "http://projectronin.com/id/fhir"
* identifier[fhir_stu3_id].value = "abc123"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[SER].type = RSERID#SER "Provider SER Identifier"
* identifier[SER].type.text = "Provider SER Identifier"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "999999"
* identifier[NPI].type = IDTYPE#NPI "National provider identifier"
* identifier[NPI].type.text = "National provider identifier"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #final
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "1"
* subject = Reference(Patient/roninPatientExample01)
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #final
* code = SCT#4525004 "Emergency department patient visit"
* focus = Reference(roninEdVisitRiskAssessmentExample01)
* issued = "2021-10-07T13:28:17.000Z"

// I added ID to this example but we don't have to use it
// We can use code.coding.code in search.
// NOTE that id has to be unique.
* component[riskDrivers][0].id = "AgeRiskDriver"
* component[riskDrivers][0].valueQuantity.value = 0.8
* component[riskDrivers][0].code = RDSRD#Age  "Age"
* component[riskDrivers][0].interpretation = RDSRD#increase
* component[riskDrivers][0].referenceRange.low.value = 0.0
* component[riskDrivers][0].referenceRange.high.value = 1.0
* component[riskDrivers][0].referenceRange.text = "Age Range"
* component[riskDrivers][0].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"

* component[riskDrivers][1].id = "MaritalStatusRiskDriver"
* component[riskDrivers][1].valueQuantity.value = 0.1
* component[riskDrivers][1].code = RDSRD#MS-Without-SS  "Marital Status - Without Spousal Support"
* component[riskDrivers][1].interpretation = RDSRD#increase
* component[riskDrivers][1].referenceRange.low.value = 0.0
* component[riskDrivers][1].referenceRange.high.value = 1.0
* component[riskDrivers][1].referenceRange.text = "Marital Status Range"
* component[riskDrivers][1].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"

* component[riskDrivers][2].id = "ImmunosuppressantRiskDriver"
* component[riskDrivers][2].valueQuantity.value = 0.45
* component[riskDrivers][2].code = RDSRD#ISP  "Immunosuppressants"
* component[riskDrivers][2].interpretation = RDSRD#increase
* component[riskDrivers][2].referenceRange.low.value = 0.0
* component[riskDrivers][2].referenceRange.high.value = 1.0
* component[riskDrivers][2].referenceRange.text = "Immunosuppressants Range"
* component[riskDrivers][2].extension[category].valueCodeableConcept = RDSRDC#Medications "Medications"

* component[riskDrivers][3].id = "TSP-1RiskDriver"
* component[riskDrivers][3].valueQuantity.value = 0.1
* component[riskDrivers][3].code = RDSRD#TSP-1  "T Stage 1 (Pathologic)"
* component[riskDrivers][3].interpretation = RDSRD#decrease
* component[riskDrivers][3].referenceRange.low.value = 0.0
* component[riskDrivers][3].referenceRange.high.value = 1.0
* component[riskDrivers][3].referenceRange.text = "T Stage 1 (Pathologic) Range"
* component[riskDrivers][3].extension[category].valueCodeableConcept = RDSRDC#DSRF "Disease-specific Risk Factors"

* component[riskDrivers][4].id = "DiabetesRiskDriver"
* component[riskDrivers][4].valueQuantity.value = 0.6
* component[riskDrivers][4].code = RDSRD#DC "Diabetes (Complicated)"
* component[riskDrivers][4].interpretation = RDSRD#increase
* component[riskDrivers][4].referenceRange.low.value = 0.0
* component[riskDrivers][4].referenceRange.high.value = 1.0
* component[riskDrivers][4].referenceRange.text = "Diabetes (Complicated) Range"
* component[riskDrivers][4].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"

* component[riskDrivers][5].id = "HypertensionRiskDriver"
* component[riskDrivers][5].valueQuantity.value = 0.45
* component[riskDrivers][5].code = RDSRD#Hypertension "Hypertension"
* component[riskDrivers][5].interpretation = RDSRD#increase
* component[riskDrivers][5].referenceRange.low.value = 0.0
* component[riskDrivers][5].referenceRange.high.value = 1.0
* component[riskDrivers][5].referenceRange.text = "Hypertension Range"
* component[riskDrivers][5].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"

* component[riskDrivers][6].id = "RheumatoidArthritisRiskDriver"
* component[riskDrivers][6].valueQuantity.value = 0.35
* component[riskDrivers][6].code = RDSRD#RA "Rheumatoid Arthritis"
* component[riskDrivers][6].interpretation = RDSRD#increase
* component[riskDrivers][6].referenceRange.low.value = 0.1
* component[riskDrivers][6].referenceRange.high.value = 0.7
* component[riskDrivers][6].referenceRange.text = "Rheumatoid Arthritis Range"
* component[riskDrivers][6].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"

* component[riskDrivers][7].id = "CreatinineRiskDriver"
* component[riskDrivers][7].valueQuantity.value = 0.08
* component[riskDrivers][7].code = RDSRD#Creatinine  "Creatinine"
* component[riskDrivers][7].interpretation = RDSRD#increase
* component[riskDrivers][7].referenceRange.low.value = 0.0
* component[riskDrivers][7].referenceRange.high.value = 0.1
* component[riskDrivers][7].referenceRange.text = "Creatinine Range"
* component[riskDrivers][7].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][8].id = "PotassiumRiskDriver"
* component[riskDrivers][8].valueQuantity.value = 0.7
* component[riskDrivers][8].code = RDSRD#Potassium "Potassium"
* component[riskDrivers][8].interpretation = RDSRD#increase
* component[riskDrivers][8].referenceRange.low.value = 0
* component[riskDrivers][8].referenceRange.high.value = 1
* component[riskDrivers][8].referenceRange.text = "Potassium Range"
* component[riskDrivers][8].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][9].id = "ANCRiskDriver"
* component[riskDrivers][9].valueQuantity.value = 0.03
* component[riskDrivers][9].code = RDSRD#ANC  "Absolute Neutrophil Count (ANC)"
* component[riskDrivers][9].interpretation = RDSRD#increase
* component[riskDrivers][9].referenceRange.low.value = 0.01
* component[riskDrivers][9].referenceRange.high.value = 0.1
* component[riskDrivers][9].referenceRange.text = "ANC Range"
* component[riskDrivers][9].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[patientComparisons][0].id = "AgePatientComparison"
* component[patientComparisons][0].code = RDSPC#AgeComparison "Age Comparison"
* component[patientComparisons][0].valueQuantity.value = 90

* component[patientComparisons][1].id = "PerformanceStatusPatientComparison"
* component[patientComparisons][1].code = RDSPC#PerformanceStatusComparison "Performance Status Comparison"
* component[patientComparisons][1].valueQuantity.value = 60

* component[patientComparisons][2].id = "StageAndTNMPatientComparison"
* component[patientComparisons][2].code = RDSPC#StageAndTNMComparison "Stage and TNM Comparison"
* component[patientComparisons][2].valueQuantity.value = 20

* component[patientComparisons][3].id = "PriorOrCurrentTreatmentsPatientComparison"
* component[patientComparisons][3].code = RDSPC#PriorOrCurrentTreatmentsComparison "Prior or Current Treatments Comparison"
* component[patientComparisons][3].valueQuantity.value = 70

* component[patientComparisons][4].id = "ActiveMedicationPatientComparison"
* component[patientComparisons][4].code = RDSPC#ActiveMedicationComparison "Active Medication Comparison"
* component[patientComparisons][4].valueQuantity.value = 50

* component[patientComparisons][5].id = "CCIPatientComparison"
* component[patientComparisons][5].code = RDSPC#CCIComparison "Comorbidity Charlson Index Comparison"
* component[patientComparisons][5].valueQuantity.value = 10

* component[labs].id = "Labs"
* component[labs].code.coding[0] = RDSLAB#31f8a5a3-19c5-4789-b46e-77d6a851a4cc "Amylase"
* component[labs].code.coding[0].version = "1"
* component[labs].code.coding[0].extension[rank].valueQuantity.value = 0.80

* component[labs].code.coding[1] = RDSLAB#eca5e803-675c-4615-8992-4e03508a778f "INR"
* component[labs].code.coding[1].version = "1"
* component[labs].code.coding[1].extension[rank].valueQuantity.value = 0.60

* component[labs].code.coding[2] = RDSLAB#dd0113d4-f448-478c-b8db-d84d4a36601f "CA15.3"
* component[labs].code.coding[2].version = "2"
* component[labs].code.coding[2].extension[rank].valueQuantity.value = 0.40

* component[symptoms].id = "Symptoms"
* component[symptoms].code.coding[0] = RDSSYMPTOM#Fever "Fever"
* component[symptoms].code.coding[0].extension[eventDate].valueDate = "2021-10-31"

* component[symptoms].code.coding[1] = RDSSYMPTOM#Nausea-vomiting "Nausea/Vomiting"
* component[symptoms].code.coding[1].extension[eventDate].valueDate = "2021-11-20"

* component[symptoms].code.coding[2] = RDSSYMPTOM#Diarrhea "Diarrhea"
* component[symptoms].code.coding[2].extension[eventDate].valueDate = "2020-08-10"

* component[symptoms].code.coding[3] = RDSSYMPTOM#ShortnessOfBreath "Shortness of breath"
* component[symptoms].code.coding[3].extension[eventDate].valueDate = "2019-10-15"

* component[symptoms].code.coding[4] = RDSSYMPTOM#Pain "Pain"
* component[symptoms].code.coding[4].extension[eventDate].valueDate = "2018-08-12"
