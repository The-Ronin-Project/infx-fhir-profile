// OncologyTestData.fsh contains a set of 5 patients as initial examples for testing
// Two tenants created: MDA and PSJ.

// Five Appointments, 3 MDA, 2 PSJ
Instance: roninOncologyPatientAppointment01Test
InstanceOf: OncologyAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointment01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-appointment"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* minutesDuration = 60
* comment = "Patient experiencing abdominal pain"
* start = "2019-02-07T13:28:17.000Z"
* end = "2019-02-07T14:28:17.000Z"
* status = #checked-in
* participant[0].actor = Reference(roninPatient01Test)
* participant[0].actor.display = "John B. Bass"
* participant[0].status = #accepted
* participant[1].actor = Reference(roninMDAPractitioner01Test)
* participant[1].actor.display = "Dr. Harvey Feest"
* participant[1].status = #accepted
* appointmentType = AppmtType#CHECKUP "A routine check-up, such as an annual physical"
// * reasonReference = Reference(roninPrimaryOncologyCondition01Test)
* extension[department][0].valueReference = Reference(roninMDAPartnerDepartmentTest)

Instance: roninOncologyPatientAppointment02Test
InstanceOf: OncologyAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointment02Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-appointment"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* minutesDuration = 30
* comment = "Patient noticing rashes"
* start = "2020-06-03T17:23:17.000Z"
* end = "2020-06-03T17:53:17.000Z"
* status = #checked-in
* participant[0].actor = Reference(roninPatient02Test)
* participant[0].actor.display = "Wyatt A. Chad"
* participant[0].status = #accepted
* participant[1].actor = Reference(roninMDAPractitioner02Test)
* participant[1].actor.display = "Dr. Alfred Grey"
* participant[1].status = #accepted
* appointmentType = AppmtType#WALKIN "A previously unscheduled walk-in visit"
// * reasonReference = Reference(roninPrimaryOncologyCondition02Test)
* extension[department][0].valueReference = Reference(roninMDAPartnerDepartmentTest)

Instance: roninOncologyPatientAppointment03Test
InstanceOf: OncologyAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointment03Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-appointment"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* minutesDuration = 90
* comment = "Patient having severe vomiting"
* start = "2020-01-01T00:05:00.000Z"
* end = "2020-01-01T01:35:00.000Z"
* status = #checked-in
* participant[0].actor = Reference(roninPatient03Test)
* participant[0].actor.display = "Vivaan B. Acostal"
* participant[0].status = #accepted
* participant[1].actor = Reference(roninMDAPractitioner02Test)
* participant[1].actor.display = "Dr. Alfred Grey"
* participant[1].status = #accepted
* appointmentType = AppmtType#EMERGENCY "Emergency appointment"
// * reasonReference = Reference(roninPrimaryOncologyCondition03Test)
* extension[department][0].valueReference = Reference(roninMDAPartnerDepartmentTest)

Instance: roninOncologyPatientAppointment04Test
InstanceOf: OncologyAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointment04Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-appointment"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* minutesDuration = 30
* comment = "Patient having severe vomiting"
* start = "2018-10-11T05:30:00.000Z"
* end = "2018-10-11T06:00:00.000Z"
* status = #checked-in
* participant[0].actor = Reference(roninPatient04Test)
* participant[0].actor.display = "Wilmatar Z. Oud"
* participant[0].status = #accepted
* participant[1].actor = Reference(roninPSJPractitioner04Test)
* participant[1].actor.display = "Dr. Wendyline Kebbe"
* participant[1].status = #accepted
* appointmentType = AppmtType#ROUTINE "Routine appointment - default if not valued"
// * reasonReference = Reference(roninPrimaryOncologyCondition04Test)
* extension[department][0].valueReference = Reference(roninPSJPartnerDepartmentTest)

Instance: roninOncologyPatientAppointment05Test
InstanceOf: OncologyAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointment05Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-appointment"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* minutesDuration = 30
* comment = "Patient having severe vomiting"
* start = "2021-09-03T05:30:00.000Z"
* end = "2021-09-03T06:00:00.000Z"
* status = #checked-in
* participant[0].actor = Reference(roninPatient05Test)
* participant[0].actor.display = "Kane M. Random"
* participant[0].status = #accepted
* participant[1].actor = Reference(roninPSJPractitioner05Test)
* participant[1].actor.display = "Dr. Brian Allergy"
* participant[1].status = #accepted
* appointmentType = AppmtType#ROUTINE "Routine appointment - default if not valued"
// * reasonReference = Reference(roninPrimaryOncologyCondition05Test)
* extension[department][0].valueReference = Reference(roninPSJPartnerDepartmentTest)

// Five patients, 3 MDA, 2 PSJ
Instance: roninPatient01Test
InstanceOf: OncologyPatient
Description: "Ronin Test Patient 01 - MDA"
* id = "roninPatient01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-patient"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "01111"
* name.family = "Bass"
* name.given[0] = "John"
* name.given[1] = "B."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-555-5555"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "john.bass@example.com"
* telecom.system = #phone
* telecom.value = "1-555-555-3413"
* telecom.use = #home
* gender = #male
* birthDate = "1951-01-20"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.state = "MA"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"
* maritalStatus.coding.code = #M
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.text = "Married"
* generalPractitioner.display = "Dr. Harvey Feest"
* generalPractitioner = Reference(roninMDAPractitioner01Test)

//Patient 2
Instance: roninPatient02Test
InstanceOf: OncologyPatient
Description: "Ronin Test Patient 02 - MDA"
* id = "roninPatient02Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-patient"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "01112"
* name.family = "Wyatt"
* name.given[0] = "Chad"
* name.given[1] = "A."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "1-222-555-1111"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "wyatt.chad@example.com"
* telecom.system = #phone
* telecom.value = "1-555-155-9999"
* telecom.use = #home
* gender = #male
* birthDate = "1963-03-01"
* address.line = "222 Feta Street"
* address.city = "Patras"
* address.postalCode = "94340"
* address.state = "TX"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"
* maritalStatus.coding.code = #U
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.text = "Unmarried"
* generalPractitioner.display = "Dr. Alfred Gray"
* generalPractitioner = Reference(roninMDAPractitioner02Test)

//Patient 3
Instance: roninPatient03Test
InstanceOf: OncologyPatient
Description: "Ronin Test Patient 03 - MDA"
* id = "roninPatient03Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-patient"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "01113"
* name.family = "Acostal"
* name.given[0] = "Vivaan"
* name.given[1] = "B."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "1-111-555-4444"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "acostal.vivaan@example.com"
* telecom.system = #phone
* telecom.value = "1-555-934-0001"
* telecom.use = #home
* gender = #female
* birthDate = "1972-01-09"
* address.line = "856 Parmesan Street"
* address.city = "Little Italy"
* address.postalCode = "042345"
* address.state = "CA"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"
* maritalStatus.coding.code = #S
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.text = "Never Married"
* generalPractitioner.display = "Gabrielius Foster"
* generalPractitioner = Reference(roninMDAPractitioner03Test)

//Patient 4
Instance: roninPatient04Test
InstanceOf: OncologyPatient
Description: "Ronin Test Patient 04 - PSJ"
* id = "roninPatient04Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-patient"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "20221"
* name.family = "Oud"
* name.given[0] = "Wilmatar"
* name.given[1] = "Z."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "1-544-555-6622"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "oud.wilmatar@example.com"
* telecom.system = #phone
* telecom.value = "1-717-555-5555"
* telecom.use = #home
* gender = #female
* birthDate = "1959-05-11"
* address.line = "900 Tabbouli Street"
* address.city = "Lebanon"
* address.postalCode = "17042"
* address.state = "PA"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"
* maritalStatus.coding.code = #M
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.text = "Married"
* generalPractitioner.display = "Dr. Wendyline Kebbe"
* generalPractitioner = Reference(roninPSJPractitioner04Test)

//Patient 5
Instance: roninPatient05Test
InstanceOf: OncologyPatient
Description: "Ronin Test Patient 05 - PSJ"
* id = "roninPatient05Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-patient"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "20220"
* name.family = "Random"
* name.given[0] = "Kane"
* name.given[1] = "M."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "1-999-555-1133"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "random.kane@example.com"
* telecom.system = #phone
* telecom.value = "1-555-923-2201"
* telecom.use = #home
* gender = #male
* birthDate = "1930-08-19"
* address.line = "82 Shellfish Street"
* address.city = "Seacity"
* address.state = "TX"
* address.postalCode = "923345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"
* maritalStatus.coding.code = #D
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.text = "Divorced"
* generalPractitioner.display = "Dr. Brian Allergy"
* generalPractitioner = Reference(roninPSJPractitioner05Test)

// Practitioner 1
Instance: roninMDAPractitioner01Test
InstanceOf: OncologyPractitioner
Description: "Ronin Practitioner 01 - MDA"
* id = "roninMDAPractitioner01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitioner"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "22221"
* identifier[NPI].type.coding.system = IDTYPE
* identifier[NPI].type.coding.code = IDTYPE#NPI
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "9988776655"
* name.family = "Feest"
* name.given = "Harvey"
* name.prefix = "Dr."
* gender = #male
* address.use = #work
* address.line = "567 Health Street"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
// Commented to conform with Gold output
// * qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360|2.7#MD "Doctor of Medicine"
// * qualification.issuer = Reference(roninMDAPartnerDepartmentTest)

// Practitioner 2
Instance: roninMDAPractitioner02Test
InstanceOf: OncologyPractitioner
Description: "Ronin Practitioner 02 - MDA"
* id = "roninMDAPractitioner02Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitioner"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "22222"
* identifier[NPI].type.coding.system = IDTYPE
* identifier[NPI].type.coding.code = IDTYPE#NPI
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "2281376654"
* name.family = "Gray"
* name.given = "Alfred"
* name.prefix = "Dr."
* gender = #male
* address.use = #work
* address.line = "91 Medicine Court"
* address.city = "Dallas"
* address.state = "TX"
* address.postalCode = "192334"
* address.country = "US"
// Commented to conform with Gold output
// * qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360|2.7#MD "Doctor of Medicine"
// * qualification.issuer = Reference(roninMDAPartnerDepartmentTest)

// Practitioner 3
Instance: roninMDAPractitioner03Test
InstanceOf: OncologyPractitioner
Description: "Ronin Practitioner 03 - MDA"
* id = "roninMDAPractitioner03Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitioner"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "22223"
* identifier[NPI].type.coding.system = IDTYPE
* identifier[NPI].type.coding.code = IDTYPE#NPI
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1098276451"
* name.family = "Foster"
* name.given = "Gabrielius"
* name.prefix = "Dr."
* gender = #female
* address.use = #work
* address.line = "567 Healthcare Drive"
* address.city = "Little Italy"
* address.state = "CA"
* address.postalCode = "042345"
* address.country = "US"
// Commented to conform with Gold output
// * qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360|2.7#DO "Doctor of Osteopathy"
// * qualification.issuer = Reference(roninMDAPartnerDepartmentTest)

// Practitioner 4
Instance: roninPSJPractitioner04Test
InstanceOf: OncologyPractitioner
Description: "Ronin Practitioner 04 - PSJ"
* id = "roninPSJPractitioner04Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitioner"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "11111"
* identifier[NPI].type.coding.system = IDTYPE
* identifier[NPI].type.coding.code = IDTYPE#NPI
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "2333230098"
* name.family = "Kebbe"
* name.given = "Wendyline"
* name.prefix = "Dr."
* gender = #female
* address.use = #work
* address.line = "2020 Healthcare Lane"
* address.city = "Lebanon"
* address.state = "PA"
* address.postalCode = "17042"
* address.country = "US"
// Commented to conform with Gold output
// * qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360|2.7#MD "Doctor of Medicine"
// * qualification.issuer = Reference(roninPSJPartnerDepartmentTest)

// Practitioner 5
Instance: roninPSJPractitioner05Test
InstanceOf: OncologyPractitioner
Description: "Ronin Practitioner 05 - PSJ"
* id = "roninPSJPractitioner05Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitioner"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "11112"
* identifier[NPI].type.coding.system = IDTYPE
* identifier[NPI].type.coding.code = IDTYPE#NPI
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "2312223033"
* name.family = "Allergy"
* name.given = "Brian"
* name.prefix = "Dr."
* gender = #male
* address.use = #work
* address.line = "5 Shellfish Healthcare Drive"
* address.city = "Seacity"
* address.state = "TX"
* address.postalCode = "923346"
* address.country = "US"
// Commented to conform with Gold output
// * qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360|2.7#DO "Doctor of Osteopathy"
// * qualification.issuer = Reference(roninPSJPartnerDepartmentTest)

// Practitioner Role 1
Instance: roninMDAPractitionerRole01Test
InstanceOf: OncologyPractitionerRole
Description: "Ronin PractitionerRole 01 - MDA"
* id = "roninMDAPractitionerRole01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitionerrole"
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* organization = Reference(roninMDAPartnerDepartmentTest)
* practitioner = Reference(roninMDAPractitioner01Test)
* telecom.system = #phone
* telecom.value = "1-555-544-3334"
* telecom.use = #work

// Practitioner Role 2
Instance: roninMDAPractitionerRole02Test
InstanceOf: OncologyPractitionerRole
Description: "Ronin PractitionerRole 02 - MDA"
* id = "roninMDAPractitionerRole02Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitionerrole"
* code = SCT#62247001 "Family medicine specialist"
* organization = Reference(roninMDAPartnerDepartmentTest)
* practitioner = Reference(roninMDAPractitioner02Test)
* telecom.system = #phone
* telecom.value = "1-677-555-5555"
* telecom.use = #work

// Practitioner Role 3
Instance: roninMDAPractitionerRole03Test
InstanceOf: OncologyPractitionerRole
Description: "Ronin PractitionerRole 03 - MDA"
* id = "roninMDAPractitionerRole03Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitionerrole"
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* organization = Reference(roninMDAPartnerDepartmentTest)
* practitioner = Reference(roninMDAPractitioner03Test)
* telecom.system = #phone
* telecom.value = "1-222-111-2333"
* telecom.use = #work

// Practitioner Role 4
Instance: roninPSJPractitionerRole04Test
InstanceOf: OncologyPractitionerRole
Description: "Ronin PractitionerRole 04 - PSJ"
* id = "roninPSJPractitionerRole04Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitionerrole"
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* organization = Reference(roninPSJPartnerDepartmentTest)
* practitioner = Reference(roninPSJPractitioner04Test)
* telecom.system = #phone
* telecom.value = "1-444-544-8888"
* telecom.use = #work

// Practitioner Role 5
Instance: roninMDAPractitionerRole05Test
InstanceOf: OncologyPractitionerRole
Description: "Ronin PractitionerRole 05 - PSJ"
* id = "roninPSJPractitionerRole05Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitionerrole"
* code = SCT#112247003 "Medical doctor"
* organization = Reference(roninPSJPartnerDepartmentTest)
* practitioner = Reference(roninPSJPractitioner05Test)
* telecom.system = #phone
* telecom.value = "1-999-144-1111"
* telecom.use = #work

// PartnerDepartment 1
Instance: roninMDAPartnerDepartmentTest
InstanceOf: PartnerDepartment
Description: "Ronin MDA Partner"
* id = "roninMDAPartnerDepartmentTest"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/partner-department"
* active = true
* name = "MDA"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MDA</div>"

// PartnerDepartment 2
Instance: roninPSJPartnerDepartmentTest
InstanceOf: PartnerDepartment
Description: "Ronin PSJ Partner"
* id = "roninPSJPartnerDepartmentTest"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/partner-department"
* active = true
* name = "PSJ"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">PSJ</div>"

// DocumentReference Note 1.
Instance:   roninDocumentReference01Test
InstanceOf: OncologyDocumentReference
Description: "Ronin Example for Oncology Document Reference"
* id = "roninDocumentReference01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-document-reference"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #current
* date = "2019-02-07T13:28:17.239+02:00"
* context.id = "exampleContextId"
* type = LNC#28568-4 "Physician Emergency department Note"
* category = DocCat#clinical-note "Clinical Note"
* subject = Reference(roninPatient01Test)
* content.id = "note_mda1.html"
//Note that content.attachment.data must be base64Binary,
//that's why the value is encoded and when decoded = content.id value in this example.
* content.attachment.data = "bm90ZV9tZGExLmh0bWwK"
* content.attachment.contentType = #text/html
* author = Reference(roninMDAPractitioner01Test)

// DocumentReference Note 2.
Instance:   roninDocumentReference02Test
InstanceOf: OncologyDocumentReference
Description: "Ronin Example for Oncology Document Reference"
* id = "roninDocumentReference02Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-document-reference"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #current
* date = "2018-02-07T13:28:17.239+02:00"
* context.id = "exampleContextId"
* type = LNC#28568-4 "Physician Emergency department Note"
* category = DocCat#clinical-note "Clinical Note"
* subject = Reference(roninPatient02Test)
* content.id = "note_mda2.html"
//Note that content.attachment.data must be base64Binary,
//that's why the value is encoded and when decoded = content.id value in this example.
* content.attachment.data = "bm90ZV9tZGEyLmh0bWwK"
* content.attachment.contentType = #text/html
* author = Reference(roninMDAPractitioner02Test)

// DocumentReference Note 3.
Instance:   roninDocumentReference03Test
InstanceOf: OncologyDocumentReference
Description: "Ronin Example for Oncology Document Reference"
* id = "roninDocumentReference03Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-document-reference"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #current
* date = "2017-02-07T13:28:17.239+02:00"
* context.id = "exampleContextId"
* type = LNC#28568-4 "Physician Emergency department Note"
* category = DocCat#clinical-note "Clinical Note"
* subject = Reference(roninPatient03Test)
* content.id = "note_mda3.html"
//Note that content.attachment.data must be base64Binary,
//that's why the value is encoded and when decoded = content.id value in this example.
* content.attachment.data = "bm90ZV9tZGEzLmh0bWwK"
* content.attachment.contentType = #text/html
* author = Reference(roninMDAPractitioner03Test)

// DocumentReference Note 4.
Instance:   roninDocumentReference04Test
InstanceOf: OncologyDocumentReference
Description: "Ronin Example for Oncology Document Reference"
* id = "roninDocumentReference04Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-document-reference"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* status = #current
* date = "2021-02-07T13:28:17.239+02:00"
* context.id = "exampleContextId"
* type = LNC#28568-4 "Physician Emergency department Note"
* category = DocCat#clinical-note "Clinical Note"
* subject = Reference(roninPatient04Test)
//Note that content.attachment.data must be base64Binary,
//that's why the value is encoded and when decoded = content.id value in this example.
* content.id = "note_psj1.html"
* content.attachment.data = "bm90ZV9wc2oxLmh0bWwK"
* content.attachment.contentType = #text/html
* author = Reference(roninPSJPractitioner04Test)

// DocumentReference Note 5.
Instance:   roninDocumentReference05Test
InstanceOf: OncologyDocumentReference
Description: "Ronin Example for Oncology Document Reference"
* id = "roninDocumentReference05Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-document-reference"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* status = #current
* date = "2020-02-07T13:28:17.239+02:00"
* context.id = "exampleContextId"
* type = LNC#28568-4 "Physician Emergency department Note"
* category = DocCat#clinical-note "Clinical Note"
* subject = Reference(roninPatient05Test)
* content.id = "note_psj2.html"
//Note that content.attachment.data must be base64Binary,
//that's why the value is encoded and when decoded = content.id value in this example.
* content.attachment.data = "bm90ZV9wc2oyLmh0bWwK"
* content.attachment.contentType = #text/html
* author = Reference(roninPSJPractitioner05Test)


// Risk Assessments 1
Instance: roninEdVisitRiskAssessment01Test
InstanceOf: EDVisitRiskAssessment
Description: "Example ED Visit Risk Assessment"
* id = "roninEdVisitRiskAssessment01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-risk-assessment"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #final
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "1"
* subject = Reference(Patient/roninPatient01Test)
* occurrenceDateTime = "2021-10-07"
* prediction.probabilityDecimal = 0.43
* basis = Reference(roninEdVisitRationale01Test)
* extension[sampleSize].valueInteger = 200
* extension[cohortSize].valueInteger = 500

// Risk Assessments 2
Instance: roninEdVisitRiskAssessment02Test
InstanceOf: EDVisitRiskAssessment
Description: "Example ED Visit Risk Assessment"
* id = "roninEdVisitRiskAssessment02Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-risk-assessment"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #final
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "2"
* subject = Reference(Patient/roninPatient02Test)
* occurrenceDateTime = "2021-11-08"
* prediction.probabilityDecimal = 0.72
* basis = Reference(roninEdVisitRationale02Test)
* extension[sampleSize].valueInteger = 400
* extension[cohortSize].valueInteger = 725

// Risk Assessments 3
Instance: roninEdVisitRiskAssessment03Test
InstanceOf: EDVisitRiskAssessment
Description: "Example ED Visit Risk Assessment"
* id = "roninEdVisitRiskAssessment03Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-risk-assessment"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #final
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "1.5"
* subject = Reference(Patient/roninPatient03Test)
* occurrenceDateTime = "2021-07-07"
* prediction.probabilityDecimal = 0.25
* basis = Reference(roninEdVisitRationale01Test)
* extension[sampleSize].valueInteger = 250
* extension[cohortSize].valueInteger = 455

// Risk Assessments 4
Instance: roninEdVisitRiskAssessment04Test
InstanceOf: EDVisitRiskAssessment
Description: "Example ED Visit Risk Assessment"
* id = "roninEdVisitRiskAssessment04Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-risk-assessment"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* status = #final
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "1.3"
* subject = Reference(Patient/roninPatient04Test)
* occurrenceDateTime = "2021-05-01"
* prediction.probabilityDecimal = 0.63
* basis = Reference(roninEdVisitRationale01Test)
* extension[sampleSize].valueInteger = 325
* extension[cohortSize].valueInteger = 600

// Risk Assessments 5
Instance: roninEdVisitRiskAssessment05Test
InstanceOf: EDVisitRiskAssessment
Description: "Example ED Visit Risk Assessment"
* id = "roninEdVisitRiskAssessment05Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-risk-assessment"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* status = #final
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "0.9"
* subject = Reference(Patient/roninPatient05Test)
* occurrenceDateTime = "2021-10-10"
* prediction.probabilityDecimal = 0.9
* basis = Reference(roninEdVisitRationale01Test)
* extension[sampleSize].valueInteger = 425
* extension[cohortSize].valueInteger = 500

// ED Visit Rationale 1
Instance: roninEdVisitRationale01Test
InstanceOf: EDVisitRationale
Description: "Rationale associated with roninEdVisitRiskAssessment01Test"
* id = "roninEdVisitRationale01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-rationale"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #final
* code = SCT#4525004 "Emergency department patient visit"
* focus = Reference(roninEdVisitRiskAssessment01Test)
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
* component[riskDrivers][6].referenceRange.low.value = 0.0
* component[riskDrivers][6].referenceRange.high.value = 1.0
* component[riskDrivers][6].referenceRange.text = "Rheumatoid Arthritis Range"
* component[riskDrivers][6].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"

* component[riskDrivers][7].id = "CreatinineRiskDriver"
* component[riskDrivers][7].valueQuantity.value = 0.08
* component[riskDrivers][7].code = RDSRD#Creatinine  "Creatinine"
* component[riskDrivers][7].interpretation = RDSRD#increase
* component[riskDrivers][7].referenceRange.low.value = 0.0
* component[riskDrivers][7].referenceRange.high.value = 1
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
* component[riskDrivers][9].referenceRange.low.value = 0
* component[riskDrivers][9].referenceRange.high.value = 1
* component[riskDrivers][9].referenceRange.text = "ANC Range"
* component[riskDrivers][9].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][10].id = "SodiumRiskDriver"
* component[riskDrivers][10].valueQuantity.value = 0.9
* component[riskDrivers][10].code = RDSRD#Sodium  "Sodium"
* component[riskDrivers][10].interpretation = RDSRD#increase
* component[riskDrivers][10].referenceRange.low.value = 0
* component[riskDrivers][10].referenceRange.high.value = 1
* component[riskDrivers][10].referenceRange.text = "Sodium Range"
* component[riskDrivers][10].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

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
* component[labs].code.coding[0] = RDSLAB#65c86cb9-7ff6-486a-81f3-823779b73f4b "WBC"
* component[labs].code.coding[0].version = "1"

* component[labs].code.coding[1] = RDSLAB#c1c45bf7-e61b-4fed-a007-a0d2185a9ca9 "Sodium"
* component[labs].code.coding[1].version = "1"

* component[labs].code.coding[2] = RDSLAB#dd0113d4-f448-478c-b8db-d84d4a36601f "CA15.3"
* component[labs].code.coding[2].version = "2"

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

// ED Visit Rationale 2
Instance: roninEdVisitRationale02Test
InstanceOf: EDVisitRationale
Description: "Rationale associated with roninEdVisitRiskAssessment01Test"
* id = "roninEdVisitRationale02Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-rationale"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #final
* code = SCT#4525004 "Emergency department patient visit"
* focus = Reference(roninEdVisitRiskAssessment02Test)
* issued = "2021-10-07T13:28:17.000Z"

// I added ID to this example but we don't have to use it
// We can use code.coding.code in search.
// NOTE that id has to be unique.
* component[riskDrivers][0].id = "AgeRiskDriver"
* component[riskDrivers][0].valueQuantity.value = 0.4
* component[riskDrivers][0].code = RDSRD#Age  "Age"
* component[riskDrivers][0].interpretation = RDSRD#increase
* component[riskDrivers][0].referenceRange.low.value = 0.0
* component[riskDrivers][0].referenceRange.high.value = 1.0
* component[riskDrivers][0].referenceRange.text = "Age Range"
* component[riskDrivers][0].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"

* component[riskDrivers][1].id = "MaritalStatusRiskDriver"
* component[riskDrivers][1].valueQuantity.value = 0.8
* component[riskDrivers][1].code = RDSRD#MS-Without-SS  "Marital Status - Without Spousal Support"
* component[riskDrivers][1].interpretation = RDSRD#increase
* component[riskDrivers][1].referenceRange.low.value = 0.0
* component[riskDrivers][1].referenceRange.high.value = 1.0
* component[riskDrivers][1].referenceRange.text = "Marital Status Range"
* component[riskDrivers][1].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"

* component[riskDrivers][2].id = "ImmunosuppressantRiskDriver"
* component[riskDrivers][2].valueQuantity.value = 0.65
* component[riskDrivers][2].code = RDSRD#ISP  "Immunosuppressants"
* component[riskDrivers][2].interpretation = RDSRD#increase
* component[riskDrivers][2].referenceRange.low.value = 0.0
* component[riskDrivers][2].referenceRange.high.value = 1.0
* component[riskDrivers][2].referenceRange.text = "Immunosuppressants Range"
* component[riskDrivers][2].extension[category].valueCodeableConcept = RDSRDC#Medications "Medications"

* component[riskDrivers][3].id = "TSP-1RiskDriver"
* component[riskDrivers][3].valueQuantity.value = 0.24
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
* component[riskDrivers][5].valueQuantity.value = 0.77
* component[riskDrivers][5].code = RDSRD#Hypertension "Hypertension"
* component[riskDrivers][5].interpretation = RDSRD#increase
* component[riskDrivers][5].referenceRange.low.value = 0.0
* component[riskDrivers][5].referenceRange.high.value = 1.0
* component[riskDrivers][5].referenceRange.text = "Hypertension Range"
* component[riskDrivers][5].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"

* component[riskDrivers][6].id = "RheumatoidArthritisRiskDriver"
* component[riskDrivers][6].valueQuantity.value = 0.88
* component[riskDrivers][6].code = RDSRD#RA "Rheumatoid Arthritis"
* component[riskDrivers][6].interpretation = RDSRD#increase
* component[riskDrivers][6].referenceRange.low.value = 0.0
* component[riskDrivers][6].referenceRange.high.value = 1.0
* component[riskDrivers][6].referenceRange.text = "Rheumatoid Arthritis Range"
* component[riskDrivers][6].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"

* component[riskDrivers][7].id = "CreatinineRiskDriver"
* component[riskDrivers][7].valueQuantity.value = 0.9
* component[riskDrivers][7].code = RDSRD#Creatinine  "Creatinine"
* component[riskDrivers][7].interpretation = RDSRD#increase
* component[riskDrivers][7].referenceRange.low.value = 0.0
* component[riskDrivers][7].referenceRange.high.value = 1.0
* component[riskDrivers][7].referenceRange.text = "Creatinine Range"
* component[riskDrivers][7].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][8].id = "PotassiumRiskDriver"
* component[riskDrivers][8].valueQuantity.value = 0.1
* component[riskDrivers][8].code = RDSRD#Potassium "Potassium"
* component[riskDrivers][8].interpretation = RDSRD#increase
* component[riskDrivers][8].referenceRange.low.value = 0
* component[riskDrivers][8].referenceRange.high.value = 1
* component[riskDrivers][8].referenceRange.text = "Potassium Range"
* component[riskDrivers][8].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][9].id = "ANCRiskDriver"
* component[riskDrivers][9].valueQuantity.value = 0.7
* component[riskDrivers][9].code = RDSRD#ANC  "Absolute Neutrophil Count (ANC)"
* component[riskDrivers][9].interpretation = RDSRD#increase
* component[riskDrivers][9].referenceRange.low.value = 0.0
* component[riskDrivers][9].referenceRange.high.value = 1.0
* component[riskDrivers][9].referenceRange.text = "ANC Range"
* component[riskDrivers][9].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[patientComparisons][0].id = "AgePatientComparison"
* component[patientComparisons][0].code = RDSPC#AgeComparison "Age Comparison"
* component[patientComparisons][0].valueQuantity.value = 45

* component[patientComparisons][1].id = "PerformanceStatusPatientComparison"
* component[patientComparisons][1].code = RDSPC#PerformanceStatusComparison "Performance Status Comparison"
* component[patientComparisons][1].valueQuantity.value = 10

* component[patientComparisons][2].id = "StageAndTNMPatientComparison"
* component[patientComparisons][2].code = RDSPC#StageAndTNMComparison "Stage and TNM Comparison"
* component[patientComparisons][2].valueQuantity.value = 40

* component[patientComparisons][3].id = "PriorOrCurrentTreatmentsPatientComparison"
* component[patientComparisons][3].code = RDSPC#PriorOrCurrentTreatmentsComparison "Prior or Current Treatments Comparison"
* component[patientComparisons][3].valueQuantity.value = 20

* component[patientComparisons][4].id = "ActiveMedicationPatientComparison"
* component[patientComparisons][4].code = RDSPC#ActiveMedicationComparison "Active Medication Comparison"
* component[patientComparisons][4].valueQuantity.value = 90

* component[patientComparisons][5].id = "CCIPatientComparison"
* component[patientComparisons][5].code = RDSPC#CCIComparison "Comorbidity Charlson Index Comparison"
* component[patientComparisons][5].valueQuantity.value = 15

* component[labs].id = "Labs"
* component[labs].code.coding[0] = RDSLAB#e6af1c3c-69a4-48cb-92be-56ee6e99450f  "HGB"
* component[labs].code.coding[0].version = "1"

* component[labs].code.coding[1] = RDSLAB#c725d530-9de3-4c17-92ac-697c1f68f4f2  "Direct Bilirubin"
* component[labs].code.coding[1].version = "1"

* component[labs].code.coding[2] = RDSLAB#7fda0337-fef1-4a5a-a7e7-124d2da2f4b8  "Glucose"
* component[labs].code.coding[2].version = "2"

* component[symptoms].id = "Symptoms"
* component[symptoms].code.coding[0] = RDSSYMPTOM#ShortnessOfBreath "Shortness of breath"
* component[symptoms].code.coding[0].extension[eventDate].valueDate = "2019-10-15"

* component[symptoms].code.coding[1] = RDSSYMPTOM#Pain "Pain"
* component[symptoms].code.coding[1].extension[eventDate].valueDate = "2018-08-12"


// ED Visit Rationale 3
Instance: roninEdVisitRationale03Test
InstanceOf: EDVisitRationale
Description: "Rationale associated with roninEdVisitRiskAssessment03Test"
* id = "roninEdVisitRationale03Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-rationale"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #final
* code = SCT#4525004 "Emergency department patient visit"
* focus = Reference(roninEdVisitRiskAssessment03Test)
* issued = "2021-10-07T13:28:17.000Z"

// I added ID to this example but we don't have to use it
// We can use code.coding.code in search.
// NOTE that id has to be unique.
* component[riskDrivers][0].id = "AgeRiskDriver"
* component[riskDrivers][0].valueQuantity.value = 0.25
* component[riskDrivers][0].code = RDSRD#Age  "Age"
* component[riskDrivers][0].interpretation = RDSRD#decrease
* component[riskDrivers][0].referenceRange.low.value = 0.0
* component[riskDrivers][0].referenceRange.high.value = 1.0
* component[riskDrivers][0].referenceRange.text = "Age Range"
* component[riskDrivers][0].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"

* component[riskDrivers][1].id = "MaritalStatusRiskDriver"
* component[riskDrivers][1].valueQuantity.value = 0.19
* component[riskDrivers][1].code = RDSRD#MS-Without-SS  "Marital Status - Without Spousal Support"
* component[riskDrivers][1].interpretation = RDSRD#increase
* component[riskDrivers][1].referenceRange.low.value = 0.0
* component[riskDrivers][1].referenceRange.high.value = 1.0
* component[riskDrivers][1].referenceRange.text = "Marital Status Range"
* component[riskDrivers][1].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"

* component[riskDrivers][2].id = "ImmunosuppressantRiskDriver"
* component[riskDrivers][2].valueQuantity.value = 0.42
* component[riskDrivers][2].code = RDSRD#ISP  "Immunosuppressants"
* component[riskDrivers][2].interpretation = RDSRD#increase
* component[riskDrivers][2].referenceRange.low.value = 0.0
* component[riskDrivers][2].referenceRange.high.value = 1.0
* component[riskDrivers][2].referenceRange.text = "Immunosuppressants Range"
* component[riskDrivers][2].extension[category].valueCodeableConcept = RDSRDC#Medications "Medications"

* component[riskDrivers][3].id = "TSP-1RiskDriver"
* component[riskDrivers][3].valueQuantity.value = 0.14
* component[riskDrivers][3].code = RDSRD#TSP-1  "T Stage 1 (Pathologic)"
* component[riskDrivers][3].interpretation = RDSRD#decrease
* component[riskDrivers][3].referenceRange.low.value = 0.0
* component[riskDrivers][3].referenceRange.high.value = 1.0
* component[riskDrivers][3].referenceRange.text = "T Stage 1 (Pathologic) Range"
* component[riskDrivers][3].extension[category].valueCodeableConcept = RDSRDC#DSRF "Disease-specific Risk Factors"

* component[riskDrivers][4].id = "DiabetesRiskDriver"
* component[riskDrivers][4].valueQuantity.value = 0.69
* component[riskDrivers][4].code = RDSRD#DC "Diabetes (Complicated)"
* component[riskDrivers][4].interpretation = RDSRD#increase
* component[riskDrivers][4].referenceRange.low.value = 0.0
* component[riskDrivers][4].referenceRange.high.value = 1.0
* component[riskDrivers][4].referenceRange.text = "Diabetes (Complicated) Range"
* component[riskDrivers][4].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"

* component[riskDrivers][5].id = "HypertensionRiskDriver"
* component[riskDrivers][5].valueQuantity.value = 0.4
* component[riskDrivers][5].code = RDSRD#Hypertension "Hypertension"
* component[riskDrivers][5].interpretation = RDSRD#increase
* component[riskDrivers][5].referenceRange.low.value = 0.0
* component[riskDrivers][5].referenceRange.high.value = 1.0
* component[riskDrivers][5].referenceRange.text = "Hypertension Range"
* component[riskDrivers][5].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"

* component[riskDrivers][6].id = "RheumatoidArthritisRiskDriver"
* component[riskDrivers][6].valueQuantity.value = 0.9
* component[riskDrivers][6].code = RDSRD#RA "Rheumatoid Arthritis"
* component[riskDrivers][6].interpretation = RDSRD#increase
* component[riskDrivers][6].referenceRange.low.value = 0
* component[riskDrivers][6].referenceRange.high.value = 1.0
* component[riskDrivers][6].referenceRange.text = "Rheumatoid Arthritis Range"
* component[riskDrivers][6].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"

* component[riskDrivers][7].id = "CreatinineRiskDriver"
* component[riskDrivers][7].valueQuantity.value = 0.4
* component[riskDrivers][7].code = RDSRD#Creatinine  "Creatinine"
* component[riskDrivers][7].interpretation = RDSRD#increase
* component[riskDrivers][7].referenceRange.low.value = 0.0
* component[riskDrivers][7].referenceRange.high.value = 1
* component[riskDrivers][7].referenceRange.text = "Creatinine Range"
* component[riskDrivers][7].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][8].id = "PotassiumRiskDriver"
* component[riskDrivers][8].valueQuantity.value = 0.2
* component[riskDrivers][8].code = RDSRD#Potassium "Potassium"
* component[riskDrivers][8].interpretation = RDSRD#increase
* component[riskDrivers][8].referenceRange.low.value = 0
* component[riskDrivers][8].referenceRange.high.value = 1
* component[riskDrivers][8].referenceRange.text = "Potassium Range"
* component[riskDrivers][8].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][9].id = "ANCRiskDriver"
* component[riskDrivers][9].valueQuantity.value = 0.5
* component[riskDrivers][9].code = RDSRD#ANC  "Absolute Neutrophil Count (ANC)"
* component[riskDrivers][9].interpretation = RDSRD#increase
* component[riskDrivers][9].referenceRange.low.value = 0.0
* component[riskDrivers][9].referenceRange.high.value = 1.0
* component[riskDrivers][9].referenceRange.text = "ANC Range"
* component[riskDrivers][9].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][10].id = "TBNMissingRiskDriver"
* component[riskDrivers][10].valueQuantity.value = 0.99
* component[riskDrivers][10].code = RDSRD#TBN-M  "Total Bilirubin Missing"
* component[riskDrivers][10].interpretation = RDSRD#increase
* component[riskDrivers][10].referenceRange.low.value = 0.0
* component[riskDrivers][10].referenceRange.high.value = 1.0
* component[riskDrivers][10].referenceRange.text = "TBN-M Range"
* component[riskDrivers][10].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][11].id = "CO2RiskDriver"
* component[riskDrivers][11].valueQuantity.value = 0.195
* component[riskDrivers][11].code = RDSRD#CO2 "CO2"
* component[riskDrivers][11].interpretation = RDSRD#decrease
* component[riskDrivers][11].referenceRange.low.value = 0.0
* component[riskDrivers][11].referenceRange.high.value = 1.0
* component[riskDrivers][11].referenceRange.text = "CO2 Range"
* component[riskDrivers][11].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][12].id = "DBNRiskDriver"
* component[riskDrivers][12].valueQuantity.value = 0.733
* component[riskDrivers][12].code = RDSRD#DBN "Direct Bilirubin"
* component[riskDrivers][12].interpretation = RDSRD#increase
* component[riskDrivers][12].referenceRange.low.value = 0.0
* component[riskDrivers][12].referenceRange.high.value = 1.0
* component[riskDrivers][12].referenceRange.text = "DBN Range"
* component[riskDrivers][12].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][13].id = "BMIRiskDriver"
* component[riskDrivers][13].valueQuantity.value = 0.75
* component[riskDrivers][13].code = RDSRD#BMI "BMI"
* component[riskDrivers][13].interpretation = RDSRD#decrease
* component[riskDrivers][13].referenceRange.low.value = 0.0
* component[riskDrivers][13].referenceRange.high.value = 1.0
* component[riskDrivers][13].referenceRange.text = "BMI Range"
* component[riskDrivers][13].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"


* component[patientComparisons][0].id = "AgePatientComparison"
* component[patientComparisons][0].code = RDSPC#AgeComparison "Age Comparison"
* component[patientComparisons][0].valueQuantity.value = 10

* component[patientComparisons][1].id = "PerformanceStatusPatientComparison"
* component[patientComparisons][1].code = RDSPC#PerformanceStatusComparison "Performance Status Comparison"
* component[patientComparisons][1].valueQuantity.value = 100

* component[patientComparisons][2].id = "StageAndTNMPatientComparison"
* component[patientComparisons][2].code = RDSPC#StageAndTNMComparison "Stage and TNM Comparison"
* component[patientComparisons][2].valueQuantity.value = 29

* component[patientComparisons][3].id = "PriorOrCurrentTreatmentsPatientComparison"
* component[patientComparisons][3].code = RDSPC#PriorOrCurrentTreatmentsComparison "Prior or Current Treatments Comparison"
* component[patientComparisons][3].valueQuantity.value = 23

* component[patientComparisons][4].id = "ActiveMedicationPatientComparison"
* component[patientComparisons][4].code = RDSPC#ActiveMedicationComparison "Active Medication Comparison"
* component[patientComparisons][4].valueQuantity.value = 44

* component[patientComparisons][5].id = "CCIPatientComparison"
* component[patientComparisons][5].code = RDSPC#CCIComparison "Comorbidity Charlson Index Comparison"
* component[patientComparisons][5].valueQuantity.value = 12

* component[labs].id = "Labs"
* component[labs].code.coding[0] = RDSLAB#fbce9f7b-2455-4ae0-9829-e22fc7ebd4e1  "LDH"
* component[labs].code.coding[0].version = "1"

* component[labs].code.coding[1] = RDSLAB#ad691140-8ef7-4712-ac02-f8994f85c97a  "CA27.29"
* component[labs].code.coding[1].version = "1"

* component[labs].code.coding[2] = RDSLAB#9db71342-e580-4330-aba9-d4aa770ef904  "Beta HCG"
* component[labs].code.coding[2].version = "2"

* component[labs].code.coding[3] = RDSLAB#7dfd4847-5a45-42c1-9c08-c17de4a24b0b  "BUN"
* component[labs].code.coding[3].version = "1.2"

* component[symptoms].id = "Symptoms"
* component[symptoms].code.coding[0] = RDSSYMPTOM#Fever "Fever"
* component[symptoms].code.coding[0].extension[eventDate].valueDate = "2021-10-31"

* component[symptoms].code.coding[1] = RDSSYMPTOM#Nausea-vomiting "Nausea/Vomiting"
* component[symptoms].code.coding[1].extension[eventDate].valueDate = "2021-11-20"

* component[symptoms].code.coding[2] = RDSSYMPTOM#Diarrhea "Diarrhea"
* component[symptoms].code.coding[2].extension[eventDate].valueDate = "2020-08-10"

* component[symptoms].code.coding[3] = RDSSYMPTOM#Pain "Pain"
* component[symptoms].code.coding[3].extension[eventDate].valueDate = "2018-08-12"

// ED Visit Rationale 4
Instance: roninEdVisitRationale04Test
InstanceOf: EDVisitRationale
Description: "Rationale associated with roninEdVisitRiskAssessment04Test"
* id = "roninEdVisitRationale04Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-rationale"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #final
* code = SCT#4525004 "Emergency department patient visit"
* focus = Reference(roninEdVisitRiskAssessment04Test)
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
* component[riskDrivers][9].valueQuantity.value = 0.5
* component[riskDrivers][9].code = RDSRD#ANC  "Absolute Neutrophil Count (ANC)"
* component[riskDrivers][9].interpretation = RDSRD#increase
* component[riskDrivers][9].referenceRange.low.value = 0.0
* component[riskDrivers][9].referenceRange.high.value = 1.0
* component[riskDrivers][9].referenceRange.text = "ANC Range"
* component[riskDrivers][9].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][10].id = "LDHMissingRiskDriver"
* component[riskDrivers][10].valueQuantity.value = 0.5
* component[riskDrivers][10].code = RDSRD#LDH-M  "LDH Missing"
* component[riskDrivers][10].interpretation = RDSRD#decrease
* component[riskDrivers][10].referenceRange.low.value = 0.0
* component[riskDrivers][10].referenceRange.high.value = 1.0
* component[riskDrivers][10].referenceRange.text = "LDH Missing Range"
* component[riskDrivers][10].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][11].id = "HGBMissingRiskDriver"
* component[riskDrivers][11].valueQuantity.value = 0.7
* component[riskDrivers][11].code = RDSRD#HGB-M               "Hemoglobin (HGB) Missing"
* component[riskDrivers][11].interpretation = RDSRD#increase
* component[riskDrivers][11].referenceRange.low.value = 0.0
* component[riskDrivers][11].referenceRange.high.value = 1.0
* component[riskDrivers][11].referenceRange.text = "ANC Range"
* component[riskDrivers][11].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[riskDrivers][12].id = "GlucoseRiskDriver"
* component[riskDrivers][12].valueQuantity.value = 0.8
* component[riskDrivers][12].code = RDSRD#Glucose  "Glucose"
* component[riskDrivers][12].interpretation = RDSRD#decrease
* component[riskDrivers][12].referenceRange.low.value = 0.0
* component[riskDrivers][12].referenceRange.high.value = 1.0
* component[riskDrivers][12].referenceRange.text = "ANC Range"
* component[riskDrivers][12].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"

* component[patientComparisons][0].id = "AgePatientComparison"
* component[patientComparisons][0].code = RDSPC#AgeComparison "Age Comparison"
* component[patientComparisons][0].valueQuantity.value = 4

* component[patientComparisons][1].id = "PerformanceStatusPatientComparison"
* component[patientComparisons][1].code = RDSPC#PerformanceStatusComparison "Performance Status Comparison"
* component[patientComparisons][1].valueQuantity.value = 20

* component[patientComparisons][2].id = "StageAndTNMPatientComparison"
* component[patientComparisons][2].code = RDSPC#StageAndTNMComparison "Stage and TNM Comparison"
* component[patientComparisons][2].valueQuantity.value = 60

* component[patientComparisons][3].id = "PriorOrCurrentTreatmentsPatientComparison"
* component[patientComparisons][3].code = RDSPC#PriorOrCurrentTreatmentsComparison "Prior or Current Treatments Comparison"
* component[patientComparisons][3].valueQuantity.value = 50

* component[patientComparisons][4].id = "ActiveMedicationPatientComparison"
* component[patientComparisons][4].code = RDSPC#ActiveMedicationComparison "Active Medication Comparison"
* component[patientComparisons][4].valueQuantity.value = 90

* component[patientComparisons][5].id = "CCIPatientComparison"
* component[patientComparisons][5].code = RDSPC#CCIComparison "Comorbidity Charlson Index Comparison"
* component[patientComparisons][5].valueQuantity.value = 100

* component[labs].id = "Labs"
* component[labs].code.coding[0] = RDSLAB#c1c45bf7-e61b-4fed-a007-a0d2185a9ca9  "Sodium"
* component[labs].code.coding[0].version = "1"

* component[labs].code.coding[1] = RDSLAB#272438f6-fc56-498f-8791-8509a04925b8  "AFP"
* component[labs].code.coding[1].version = "1"

* component[labs].code.coding[2] = RDSLAB#e50db242-3d3a-47a0-af20-00b1e0b3b46c  "Alkaline Phosphatase"
* component[labs].code.coding[2].version = "2"

* component[labs].code.coding[3] = RDSLAB#4cf9dcf2-8bb1-4952-90c8-4179b9ab2de9  "Potassium"
* component[labs].code.coding[3].version = "1"

* component[symptoms].id = "Symptoms"
* component[symptoms].code.coding[0] = RDSSYMPTOM#Diarrhea "Diarrhea"
* component[symptoms].code.coding[0].extension[eventDate].valueDate = "2020-08-10"

* component[symptoms].code.coding[1] = RDSSYMPTOM#ShortnessOfBreath "Shortness of breath"
* component[symptoms].code.coding[1].extension[eventDate].valueDate = "2019-10-15"

// ED Visit Rationale 5
Instance: roninEdVisitRationale05Test
InstanceOf: EDVisitRationale
Description: "Rationale associated with roninEdVisitRiskAssessment05Test"
* id = "roninEdVisitRationale05Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-rationale"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* status = #final
* code = SCT#4525004 "Emergency department patient visit"
* focus = Reference(roninEdVisitRiskAssessment05Test)
* issued = "2021-10-07T13:28:17.000Z"

// I added ID to this example but we don't have to use it
// We can use code.coding.code in search.
// NOTE that id has to be unique.
* component[riskDrivers][0].id = "AgeRiskDriver"
* component[riskDrivers][0].valueQuantity.value = 0.6
* component[riskDrivers][0].code = RDSRD#Age  "Age"
* component[riskDrivers][0].interpretation = RDSRD#increase
* component[riskDrivers][0].referenceRange.low.value = 0.0
* component[riskDrivers][0].referenceRange.high.value = 1.0
* component[riskDrivers][0].referenceRange.text = "Age Range"
* component[riskDrivers][0].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"

* component[riskDrivers][1].id = "ImmunosuppressantRiskDriver"
* component[riskDrivers][1].valueQuantity.value = 0.67
* component[riskDrivers][1].code = RDSRD#ISP  "Immunosuppressants"
* component[riskDrivers][1].interpretation = RDSRD#increase
* component[riskDrivers][1].referenceRange.low.value = 0.0
* component[riskDrivers][1].referenceRange.high.value = 1.0
* component[riskDrivers][1].referenceRange.text = "Immunosuppressants Range"
* component[riskDrivers][1].extension[category].valueCodeableConcept = RDSRDC#Medications "Medications"

* component[riskDrivers][2].id = "DiabetesRiskDriver"
* component[riskDrivers][2].valueQuantity.value = 0.55
* component[riskDrivers][2].code = RDSRD#DC "Diabetes (Complicated)"
* component[riskDrivers][2].interpretation = RDSRD#increase
* component[riskDrivers][2].referenceRange.low.value = 0.0
* component[riskDrivers][2].referenceRange.high.value = 1.0
* component[riskDrivers][2].referenceRange.text = "Diabetes (Complicated) Range"
* component[riskDrivers][2].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"

* component[riskDrivers][3].id = "CreatinineRiskDriver"
* component[riskDrivers][3].valueQuantity.value = 0.12
* component[riskDrivers][3].code = RDSRD#Creatinine  "Creatinine"
* component[riskDrivers][3].interpretation = RDSRD#increase
* component[riskDrivers][3].referenceRange.low.value = 0.0
* component[riskDrivers][3].referenceRange.high.value = 0.1
* component[riskDrivers][3].referenceRange.text = "Creatinine Range"
* component[riskDrivers][3].extension[category].valueCodeableConcept = RDSRDC#DSRF "Disease-specific Risk Factors"

* component[riskDrivers][4].id = "PotassiumRiskDriver"
* component[riskDrivers][4].valueQuantity.value = 0.35
* component[riskDrivers][4].code = RDSRD#Potassium "Potassium"
* component[riskDrivers][4].interpretation = RDSRD#increase
* component[riskDrivers][4].referenceRange.low.value = 0
* component[riskDrivers][4].referenceRange.high.value = 1
* component[riskDrivers][4].referenceRange.text = "Potassium Range"
* component[riskDrivers][4].extension[category].valueCodeableConcept = RDSRDC#DSRF "Disease-specific Risk Factors"

* component[patientComparisons][0].id = "AgePatientComparison"
* component[patientComparisons][0].code = RDSPC#AgeComparison "Age Comparison"
* component[patientComparisons][0].valueQuantity.value = 85

* component[patientComparisons][1].id = "PerformanceStatusPatientComparison"
* component[patientComparisons][1].code = RDSPC#PerformanceStatusComparison "Performance Status Comparison"
* component[patientComparisons][1].valueQuantity.value = 32

* component[patientComparisons][2].id = "StageAndTNMPatientComparison"
* component[patientComparisons][2].code = RDSPC#StageAndTNMComparison "Stage and TNM Comparison"
* component[patientComparisons][2].valueQuantity.value = 53

* component[labs].id = "Labs"
* component[labs].code.coding[0] = RDSLAB#31f8a5a3-19c5-4789-b46e-77d6a851a4cc "Amylase"
* component[labs].code.coding[0].version = "1"

* component[labs].code.coding[1] = RDSLAB#dd0113d4-f448-478c-b8db-d84d4a36601f "CA15.3"
* component[labs].code.coding[1].version = "2"

* component[symptoms].id = "Symptoms"
* component[symptoms].code.coding[0] = RDSSYMPTOM#Fever "Fever"
* component[symptoms].code.coding[0].extension[eventDate].valueDate = "2021-10-31"

* component[symptoms].code.coding[1] = RDSSYMPTOM#Nausea-vomiting "Nausea/Vomiting"
* component[symptoms].code.coding[1].extension[eventDate].valueDate = "2021-11-20"

* component[symptoms].code.coding[2] = RDSSYMPTOM#Pain "Pain"
* component[symptoms].code.coding[2].extension[eventDate].valueDate = "2018-08-12"
