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
* participant[1].actor = Reference(roninPractitioner01Test)
* participant[1].actor.display = "Dr. Harvey Feest"
* participant[1].status = #accepted
* appointmentType = AppmtType#CHECKUP "A routine check-up, such as an annual physical"
* reasonReference = Reference(roninPrimaryOncologyCondition01Test)
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
* participant[1].actor = Reference(roninPractitioner02Test)
* participant[1].actor.display = "Dr. Alfred Grey"
* participant[1].status = #accepted
* appointmentType = AppmtType#WALKIN "A previously unscheduled walk-in visit"
* reasonReference = Reference(roninPrimaryOncologyCondition02Test)
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
* participant[1].actor = Reference(roninPractitioner02Test)
* participant[1].actor.display = "Dr. Alfred Grey"
* participant[1].status = #accepted
* appointmentType = AppmtType#EMERGENCY "Emergency appointment"
* reasonReference = Reference(roninPrimaryOncologyCondition03Test)
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
* participant[1].actor = Reference(roninPractitioner04Test)
* participant[1].actor.display = "Dr. Wendyline Kebbe"
* participant[1].status = #accepted
* appointmentType = AppmtType#ROUTINE "Routine appointment - default if not valued"
* reasonReference = Reference(roninPrimaryOncologyCondition04Test)
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
* participant[1].actor = Reference(roninPractitioner05Test)
* participant[1].actor.display = "Dr. Brian Allergy"
* participant[1].status = #accepted
* appointmentType = AppmtType#ROUTINE "Routine appointment - default if not valued"
* reasonReference = Reference(roninPrimaryOncologyCondition05Test)
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
