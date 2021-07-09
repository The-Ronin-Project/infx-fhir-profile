// Example PartnerDepartment
Instance: roninPartnerDepartmentExample01
InstanceOf: PartnerDepartment
Description: "Ronin Example Partner"
* id = "roninPartnerDepartmentExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/partner-department"
* identifier[0].system = "tenantId"
* identifier[0].value = "013"
* active = true
* name = "MDA"
* text.status = #active
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MDA</div>"


Instance: roninPrimaryOncologyConditionExample01
InstanceOf: OncologyCondition
Description: "Ronin Example for Primary Oncology Condition"
* id = "roninPrimaryOncologyConditionExample01"
* identifier[0].system = "http://projectronin.com/fhir/us/ronin"
* identifier[1].value = "12345"
* identifier[1].system = "tenantId"
* identifier[1].value = "013"
* category.coding.display = "encounter-diagnosis"
* category.text = "Encounter Diagnosis"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-condition"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* code = SCT#254637007 "Non-small cell lung Oncology (disorder)"
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
* identifier[0].use = #usual
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier[0].system = "http://hospital.example.org"
* identifier[0].value = "m123"
* identifier[1].system = "tenantId"
* identifier[1].value = "013"
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
* identifier[0].system = "tenantId"
* identifier[0].value = "013"
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
* identifier.system = "http://projectronin.com/fhir/us/ronin"
* identifier.value = "12345"
* qualification.issuer = Reference(roninPartnerDepartmentExample01)


Instance: roninEncounterExample01
InstanceOf: OncologyEncounter
Description: "Ronin Example for Encounter"
* id = "roninEncounterExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-encounter"
* identifier[0].system = "http://projectronin.com/fhir/us/ronin"
* identifier[0].value = "12345"
* identifier[1].system = "tenantId"
* identifier[1].value = "013"
* subject = Reference(roninPatientExample01)
* subject.display = "John Anyperson"
* participant.individual = Reference(roninPractitionerExample01)
* participant.period.start = "2019-02-07T13:28:17.000Z"
* participant.period.end = "2019-02-07T14:20:10.000Z"
* status = #arrived
* class.code = #AMB
* class.display = "ambulatory"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.text = "Outpatient"


Instance: roninDiagnosticReportNoteExample01
InstanceOf: OncologyDiagnosticReportNote
Description: "Ronin Example for Diagnostic Report Note"
* id = "roninDiagnosticReportNoteExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-diagnostic-report-note"
* identifier[0].system = "http://projectronin.com/fhir/us/ronin"
* identifier[0].value = "diag_report_12345"
* identifier[1].system = "tenantId"
* identifier[1].value = "013"
* category.coding.display = "Imaging"
* category.text = "Imaging"
* code.text = "code text"
* subject = Reference(roninPatientExample01)
* subject.display = "John Anyperson"
* status = #registered
* effectiveDateTime = "2017-01-01T00:00:00.000Z"
* encounter = Reference("roninEncounterExample01")


Instance:   roninDocumentReferenceExample01
InstanceOf: OncologyDocumentReference
Description: "Ronin Example for Oncology Document Reference"
* id = "roninDocumentReferenceExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-document-reference"
* identifier[0].system = "http://projectronin.com/fhir/us/ronin"
* identifier[0].value = "doc_ref_12345"
* identifier[1].system = "tenantId"
* identifier[1].value = "013"
* status = #active
* date = "2015-02-07T13:28:17.239+02:00"
* context.id = "exampleContextId"
* type = AJCC#3C "IIIC"
* category = AJCC#3C "IIIC"
* subject = Reference(roninPatientExample01)
* content.id = "exampleContentId"
* content.attachment.url = "http://example.com"
* content.attachment.contentType = #json
* author = Reference(xyzPractitionerExample01)


Instance: roninOncologyCarePlanExample01
InstanceOf: OncologyCarePlan
Description: "Ronin Example for Oncology CarePlan"
* id = "roninOncologyCarePlanExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-care-plan"
* identifier[0].system = "http://projectronin.com/fhir/us/ronin"
* identifier[0].value = "plan_12345"
* identifier[1].system = "tenantId"
* identifier[1].value = "013"
* status = #active
* intent = #proposal
* subject = Reference(roninPatientExample01)
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Lung Cancer</div>"
* encounter = Reference(roninEncounterExample01)
* addresses = Reference(roninPrimaryOncologyConditionExample01)
* author = Reference(roninPractitionerExample01)



Instance: roninOncologyPatientAppointmentExample01
InstanceOf: OncologyPatientAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointmentExample01"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-patient-appointment"
* identifier[0].system = "http://projectronin.com/fhir/us/ronin"
* identifier[0].value = "appointment_12345"
* identifier[1].system = "tenantId"
* identifier[1].value = "013"
* minutesDuration = 60
* comment = "Patient experiencing abdominal pain"
* start = "2019-02-07T13:28:17.000Z"
* status = #checked-in
* participant[0].actor = Reference(roninPatientExample01)
* participant[0].actor.identifier.value = "m123"
* participant[0].actor.display = "John Anyperson"
* participant[0].status = #accepted
* participant[1].actor = Reference(roninPractitionerExample01)
* participant[1].actor.identifier.value = "9988776655"
* participant[1].actor.display = "Dr. Frami Anyperson"
* participant[1].status = #accepted
* appointmentType = AppmtType#CHECKUP "CHECKUP"
* reasonReference = Reference(roninPrimaryOncologyConditionExample01)
