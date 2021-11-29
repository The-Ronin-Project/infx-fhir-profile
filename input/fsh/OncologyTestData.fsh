// OncologyTestData.fsh contains a set of 5 patients as initial examples for testing
// Two tenants created: MDA and PSJ.

// Five Appointments, 3 MDA, 2 PSJ
Instance: roninOncologyPatientAppointment01Test
InstanceOf: OncologyAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointment01Test"
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
* participant[0].actor = Reference(roninPatient01Test)
* participant[0].actor.display = "John B. Bass"
* participant[0].status = #accepted
* participant[1].actor = Reference(roninMDAPractitioner01Test)
* participant[1].actor.display = "Dr. Harvey Feest"
* participant[1].status = #accepted
* appointmentType = AppmtType#CHECKUP "A routine check-up, such as an annual physical"
//* reasonReference = Reference(roninPrimaryOncologyCondition01Test)
* extension[department][0].valueReference = Reference(roninMDAPartnerDepartmentTest)

Instance: roninOncologyPatientAppointment02Test
InstanceOf: OncologyAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointment02Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-appointment"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
//* reasonReference = Reference(roninPrimaryOncologyCondition02Test)
* extension[department][0].valueReference = Reference(roninMDAPartnerDepartmentTest)

Instance: roninOncologyPatientAppointment03Test
InstanceOf: OncologyAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointment03Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-appointment"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
//* reasonReference = Reference(roninPrimaryOncologyCondition03Test)
* extension[department][0].valueReference = Reference(roninMDAPartnerDepartmentTest)

Instance: roninOncologyPatientAppointment04Test
InstanceOf: OncologyAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointment04Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-appointment"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
//* reasonReference = Reference(roninPrimaryOncologyCondition04Test)
* extension[department][0].valueReference = Reference(roninPSJPartnerDepartmentTest)

Instance: roninOncologyPatientAppointment05Test
InstanceOf: OncologyAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointment05Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-appointment"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
//* reasonReference = Reference(roninPrimaryOncologyCondition05Test)
* extension[department][0].valueReference = Reference(roninPSJPartnerDepartmentTest)

// Five patients, 3 MDA, 2 PSJ
Instance: roninPatient01Test
InstanceOf: OncologyPatient
Description: "Ronin Test Patient 01 - MDA"
* id = "roninPatient01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-patient"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[mrn].type = IDTYPE#MR "Medical Record Number"
* identifier[mrn].type.text = "MRN"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "01111"
* identifier[fhir_stu3_id].type = RFHIRID#STU3 "FHIR STU3 ID"
* identifier[fhir_stu3_id].type.text = "FHIR STU3"
* identifier[fhir_stu3_id].system = "http://projectronin.com/id/fhir"
* identifier[fhir_stu3_id].value = "stu3-01111"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[mrn].type = IDTYPE#MR "Medical Record Number"
* identifier[mrn].type.text = "MRN"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "01112"
* identifier[fhir_stu3_id].type = RFHIRID#STU3 "FHIR STU3 ID"
* identifier[fhir_stu3_id].type.text = "FHIR STU3"
* identifier[fhir_stu3_id].system = "http://projectronin.com/id/fhir"
* identifier[fhir_stu3_id].value = "stu3-01112"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[mrn].type = IDTYPE#MR "Medical Record Number"
* identifier[mrn].type.text = "MRN"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "01113"
* identifier[fhir_stu3_id].type = RFHIRID#STU3 "FHIR STU3 ID"
* identifier[fhir_stu3_id].type.text = "FHIR STU3"
* identifier[fhir_stu3_id].system = "http://projectronin.com/id/fhir"
* identifier[fhir_stu3_id].value = "stu3-01113"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* identifier[mrn].type = IDTYPE#MR "Medical Record Number"
* identifier[mrn].type.text = "MRN"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "20221"
* identifier[fhir_stu3_id].type = RFHIRID#STU3 "FHIR STU3 ID"
* identifier[fhir_stu3_id].type.text = "FHIR STU3"
* identifier[fhir_stu3_id].system = "http://projectronin.com/id/fhir"
* identifier[fhir_stu3_id].value = "stu3-20221"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* identifier[mrn].type = IDTYPE#MR "Medical Record Number"
* identifier[mrn].type.text = "MRN"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "20220"
* identifier[fhir_stu3_id].type = RFHIRID#STU3 "FHIR STU3 ID"
* identifier[fhir_stu3_id].type.text = "FHIR STU3"
* identifier[fhir_stu3_id].system = "http://projectronin.com/id/fhir"
* identifier[fhir_stu3_id].value = "stu3-20220"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[SER].type = RSERID#SER "Provider SER Identifier"
* identifier[SER].type.text = "Provider SER Identifier"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "22221"
* identifier[NPI].type = IDTYPE#NPI "National provider identifier"
* identifier[NPI].type.text = "National provider identifier"
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
//* qualification.code = http://terminology.hl7.org/CodeSystem/v2-03602.7#MD "Doctor of Medicine"
//* qualification.issuer = Reference(roninMDAPartnerDepartmentTest)

// Practitioner 2
Instance: roninMDAPractitioner02Test
InstanceOf: OncologyPractitioner
Description: "Ronin Practitioner 02 - MDA"
* id = "roninMDAPractitioner02Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitioner"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[SER].type = RSERID#SER "Provider SER Identifier"
* identifier[SER].type.text = "Provider SER Identifier"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "22222"
* identifier[NPI].type = IDTYPE#NPI "National provider identifier"
* identifier[NPI].type.text = "National provider identifier"
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
//* qualification.code = http://terminology.hl7.org/CodeSystem/v2-03602.7#MD "Doctor of Medicine"
//* qualification.issuer = Reference(roninMDAPartnerDepartmentTest)

// Practitioner 3
Instance: roninMDAPractitioner03Test
InstanceOf: OncologyPractitioner
Description: "Ronin Practitioner 03 - MDA"
* id = "roninMDAPractitioner03Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitioner"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* identifier[SER].type = RSERID#SER "Provider SER Identifier"
* identifier[SER].type.text = "Provider SER Identifier"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "22223"
* identifier[NPI].type = IDTYPE#NPI "National provider identifier"
* identifier[NPI].type.text = "National provider identifier"
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
//* qualification.code = http://terminology.hl7.org/CodeSystem/v2-03602.7#DO "Doctor of Osteopathy"
//* qualification.issuer = Reference(roninMDAPartnerDepartmentTest)

// Practitioner 4
Instance: roninPSJPractitioner04Test
InstanceOf: OncologyPractitioner
Description: "Ronin Practitioner 04 - PSJ"
* id = "roninPSJPractitioner04Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitioner"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* identifier[SER].type = RSERID#SER "Provider SER Identifier"
* identifier[SER].type.text = "Provider SER Identifier"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "11111"
* identifier[NPI].type = IDTYPE#NPI "National provider identifier"
* identifier[NPI].type.text = "National provider identifier"
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
//* qualification.code = http://terminology.hl7.org/CodeSystem/v2-03602.7#MD "Doctor of Medicine"
//* qualification.issuer = Reference(roninPSJPartnerDepartmentTest)

// Practitioner 5
Instance: roninPSJPractitioner05Test
InstanceOf: OncologyPractitioner
Description: "Ronin Practitioner 05 - PSJ"
* id = "roninPSJPractitioner05Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitioner"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* identifier[SER].type = RSERID#SER "Provider SER Identifier"
* identifier[SER].type.text = "Provider SER Identifier"
* identifier[SER].system = "http://projectronin.com/id/ser"
* identifier[SER].value = "11112"
* identifier[NPI].type = IDTYPE#NPI "National provider identifier"
* identifier[NPI].type.text = "National provider identifier"
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
//* qualification.code = http://terminology.hl7.org/CodeSystem/v2-03602.7#DO "Doctor of Osteopathy"
//* qualification.issuer = Reference(roninPSJPartnerDepartmentTest)

// Practitioner Role 1
Instance: roninMDAPractitionerRole01Test
InstanceOf: OncologyPractitionerRole
Description: "Ronin PractitionerRole 01 - MDA"
* id = "roninMDAPractitionerRole01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitionerrole"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
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
Instance: roninDocumentReference01Test
InstanceOf: OncologyDocumentReference
Description: "Ronin Example for Oncology Document Reference"
* id = "roninDocumentReference01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-document-reference"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
Instance: roninDocumentReference02Test
InstanceOf: OncologyDocumentReference
Description: "Ronin Example for Oncology Document Reference"
* id = "roninDocumentReference02Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-document-reference"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
Instance: roninDocumentReference03Test
InstanceOf: OncologyDocumentReference
Description: "Ronin Example for Oncology Document Reference"
* id = "roninDocumentReference03Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-document-reference"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
Instance: roninDocumentReference04Test
InstanceOf: OncologyDocumentReference
Description: "Ronin Example for Oncology Document Reference"
* id = "roninDocumentReference04Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-document-reference"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
Instance: roninDocumentReference05Test
InstanceOf: OncologyDocumentReference
Description: "Ronin Example for Oncology Document Reference"
* id = "roninDocumentReference05Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-document-reference"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #final
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "v1.0"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #final
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "v1.0"
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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* status = #final
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "1.5"
* subject = Reference(Patient/roninPatient03Test)
* occurrenceDateTime = "2021-07-07"
* prediction.probabilityDecimal = 0.25
* basis = Reference(roninEdVisitRationale03Test)
* extension[sampleSize].valueInteger = 250
* extension[cohortSize].valueInteger = 455

// Risk Assessments 4
Instance: roninEdVisitRiskAssessment04Test
InstanceOf: EDVisitRiskAssessment
Description: "Example ED Visit Risk Assessment"
* id = "roninEdVisitRiskAssessment04Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-risk-assessment"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* status = #final
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "1.3"
* subject = Reference(Patient/roninPatient04Test)
* occurrenceDateTime = "2021-05-01"
* prediction.probabilityDecimal = 0.63
* basis = Reference(roninEdVisitRationale04Test)
* extension[sampleSize].valueInteger = 325
* extension[cohortSize].valueInteger = 600

// Risk Assessments 5
Instance: roninEdVisitRiskAssessment05Test
InstanceOf: EDVisitRiskAssessment
Description: "Example ED Visit Risk Assessment"
* id = "roninEdVisitRiskAssessment05Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-risk-assessment"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* status = #final
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "0.9"
* subject = Reference(Patient/roninPatient05Test)
* occurrenceDateTime = "2021-10-10"
* prediction.probabilityDecimal = 0.9
* basis = Reference(roninEdVisitRationale05Test)
* extension[sampleSize].valueInteger = 425
* extension[cohortSize].valueInteger = 500

// ED Visit Rationale 1
Instance: roninEdVisitRationale01Test
InstanceOf: EDVisitRationale
Description: "Rationale associated with roninEdVisitRiskAssessment01Test"
* id = "roninEdVisitRationale01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-rationale"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
* component[labs].code.coding[0].version = "v1.0"

* component[labs].code.coding[1] = RDSLAB#c1c45bf7-e61b-4fed-a007-a0d2185a9ca9 "Sodium"
* component[labs].code.coding[1].version = "v1.0"

* component[labs].code.coding[2] = RDSLAB#dd0113d4-f448-478c-b8db-d84d4a36601f "CA15.3"
* component[labs].code.coding[2].version = "v1.0"

* component[labs].code.coding[3] = RDSLAB#31f8a5a3-19c5-4789-b46e-77d6a851a4cc "Amylase"
* component[labs].code.coding[3].version = "v1.0"

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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
* component[labs].code.coding[0].version = "v1.0"

* component[labs].code.coding[1] = RDSLAB#c725d530-9de3-4c17-92ac-697c1f68f4f2  "Direct Bilirubin"
* component[labs].code.coding[1].version = "v1.0"

* component[labs].code.coding[2] = RDSLAB#7fda0337-fef1-4a5a-a7e7-124d2da2f4b8  "Glucose"
* component[labs].code.coding[2].version = "v1.0"

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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
* component[labs].code.coding[0].version = "v1.0"

* component[labs].code.coding[1] = RDSLAB#ad691140-8ef7-4712-ac02-f8994f85c97a  "CA27.29"
* component[labs].code.coding[1].version = "v1.0"

* component[labs].code.coding[2] = RDSLAB#9db71342-e580-4330-aba9-d4aa770ef904  "Beta HCG"
* component[labs].code.coding[2].version = "v1.0"

* component[labs].code.coding[3] = RDSLAB#7dfd4847-5a45-42c1-9c08-c17de4a24b0b  "BUN"
* component[labs].code.coding[3].version = "v1.0"

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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
* component[riskDrivers][11].code = RDSRD#HGB-M "Hemoglobin (HGB) Missing"
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
* component[labs].code.coding[0].version = "v1.0"

* component[labs].code.coding[1] = RDSLAB#272438f6-fc56-498f-8791-8509a04925b8  "AFP"
* component[labs].code.coding[1].version = "v1.0"

* component[labs].code.coding[2] = RDSLAB#e50db242-3d3a-47a0-af20-00b1e0b3b46c  "Alkaline Phosphatase"
* component[labs].code.coding[2].version = "v1.0"

* component[labs].code.coding[3] = RDSLAB#4cf9dcf2-8bb1-4952-90c8-4179b9ab2de9  "Potassium"
* component[labs].code.coding[3].version = "v1.0"

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
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
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
* component[labs].code.coding[0].version = "v1.0"

* component[labs].code.coding[1] = RDSLAB#dd0113d4-f448-478c-b8db-d84d4a36601f "CA15.3"
* component[labs].code.coding[1].version = "v1.0"

* component[symptoms].id = "Symptoms"
* component[symptoms].code.coding[0] = RDSSYMPTOM#Fever "Fever"
* component[symptoms].code.coding[0].extension[eventDate].valueDate = "2021-10-31"

* component[symptoms].code.coding[1] = RDSSYMPTOM#Nausea-vomiting "Nausea/Vomiting"
* component[symptoms].code.coding[1].extension[eventDate].valueDate = "2021-11-20"

* component[symptoms].code.coding[2] = RDSSYMPTOM#Pain "Pain"
* component[symptoms].code.coding[2].extension[eventDate].valueDate = "2018-08-12"


ValueSet: WBC
Id: 65c86cb9-7ff6-486a-81f3-823779b73f4b
Title: "White Blood Count"
Description: "Includes LOINC codes for White Blood Count"
* LNC|v2.70#26464-8 "Leukocytes [#/volume] in Blood"
* LNC|v2.70#6690-2  "Leukocytes [#/volume] in Blood by Automated count"
* LNC|v2.70#49498-9 "Leukocytes [#/volume] in Blood by Estimate"
* LNC|v2.70#804-5   "Leukocytes [#/volume] in Blood by Manual count"

ValueSet: CA15_3
Id: dd0113d4-f448-478c-b8db-d84d4a36601f
Title: "Cancer Ag 15.3"
Description: "Includes LOINC codes for Cancer Ag 15.3"
* LNC|v2.70#19186-6 "Cancer Ag 15-3 [Units/volume] in Pleural fluid"
* LNC|v2.70#2007-3  "Cancer Ag 15-3 [Presence] in Serum or Plasma"
* LNC|v2.70#29153-4 "Cancer Ag 15-3 [Units/volume] in Body fluid"
* LNC|v2.70#50776-4 "Cancer Ag 15-3 [Units/volume] in Cerebral spinal fluid"
* LNC|v2.70#50777-2 "Cancer Ag 15-3 [Units/volume] in Pericardial fluid"
* LNC|v2.70#50778-0 "Cancer Ag 15-3 [Units/volume] in Peritoneal fluid"
* LNC|v2.70#6875-9  "Cancer Ag 15-3 [Units/volume] in Serum or Plasma"
* LNC|v2.70#83083-6 "Cancer Ag 15-3 [Units/volume] in Serum or Plasma by Immunoassay"
* LNC|v2.70#97749-6 "Cancer Ag 15-3 [Units/volume] in Aspirate"

ValueSet: Amylase
Id: 31f8a5a3-19c5-4789-b46e-77d6a851a4cc
Title: "Amylase"
Description: "Includes LOINC codes for Amylase"
* LNC|v2.70#24333-7 "Amylase isoenzyme 3 panel - Serum or Plasma"
* LNC|v2.70#14589-6 "Amylase isoenzymes [Interpretation] in Serum or Plasma"
* LNC|v2.70#15020-1 "Amylase.P1/Amylase.total in Serum or Plasma"
* LNC|v2.70#15021-9 "Amylase.P2/Amylase.total in Serum or Plasma"
* LNC|v2.70#15022-7 "Amylase.P3/Amylase.total in Serum or Plasma"
* LNC|v2.70#15023-5 "Amylase S1/Amylase.total in Serum or Plasma"
* LNC|v2.70#15024-3 "Amylase S2/Amylase.total in Serum or Plasma"
* LNC|v2.70#15025-0 "Amylase S3/Amylase.total in Serum or Plasma"
* LNC|v2.70#1798-8  "Amylase [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#1802-8  "Amylase.P1 [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#1803-6  "Amylase.P2 [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#1804-4  "Amylase.P3 [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#1805-1  "Amylase.pancreatic [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#1806-9  "Amylase S1 [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#1807-7  "Amylase S2 [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#1808-5  "Amylase S3 [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#1809-3  "Amylase.salivary [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#25312-0 "Amylase.pancreatic/Amylase.total in Serum or Plasma"
* LNC|v2.70#25313-8 "Amylase.salivary/Amylase.total in Serum or Plasma"
* LNC|v2.70#26011-7 "Macroamylase/Amylase.total in Serum or Plasma"
* LNC|v2.70#49251-2 "Amylase isoenzymes [Interpretation] in Serum or Plasma Narrative"
* LNC|v2.70#54472-6 "Amylase.macromolecular/Amylase.total in Serum or Plasma"
* LNC|v2.70#56776-8 "Amylase S3+S4/Amylase.total in Serum or Plasma"
* LNC|v2.70#56782-6 "Amylase S4/Amylase.total in Serum or Plasma"
* LNC|v2.70#72272-8 "Amylase and triacylglycerol lipase panel - Serum or Plasma"
* LNC|v2.70#72571-3 "Amylase.pancreatic/Amylase.total [Pure catalytic fraction] in Serum or Plasma"
* LNC|v2.70#72572-1 "Amylase.salivary/Amylase.total [Pure catalytic fraction] in Serum or Plasma"
* LNC|v2.70#1810-1  "Amylase/Creatinine [Mass Ratio] in Serum or Plasma"

ValueSet: Hemoglobin
Id: e6af1c3c-69a4-48cb-92be-56ee6e99450f
Title: "Hemoglobin"
Description: "Includes LOINC codes for Hemoglobin"
* LNC|v2.70#59260-0 "Hemoglobin [Moles/volume] in Blood"
* LNC|v2.70#55782-7 "Hemoglobin [Mass/volume] in Blood by Oximetry"
* LNC|v2.70#20509-6 "Hemoglobin [Mass/volume] in Blood by calculation"
* LNC|v2.70#718-7   "Hemoglobin [Mass/volume] in Blood"
* LNC|v2.70#717-9   "Hemoglobin [Presence] in Blood"

ValueSet: DirectBilirubin
Id: c725d530-9de3-4c17-92ac-697c1f68f4f2
Title: "Direct Bilirubin"
Description: "Includes LOINC codes for Direct Bilirubin"
* LNC|v2.70#48623-3 "Bilirubin.direct [Mass/volume] in Cord blood"
* LNC|v2.70#1968-7  "Bilirubin.direct [Mass/volume] in Serum or Plasma"

ValueSet: Glucose
Id: 7fda0337-fef1-4a5a-a7e7-124d2da2f4b8
Title: "Glucose"
Description: "Includes LOINC codes for Glucose"
* LNC|v2.70#93791-2 "Glucose [Mass/volume] mean in Serum or Plasma"
* LNC|v2.70#2339-0  "Glucose [Mass/volume] in Blood"
* LNC|v2.70#32016-8 "Glucose [Mass/volume] in Capillary blood"
* LNC|v2.70#2345-7  "Glucose [Mass/volume] in Serum or Plasma"
* LNC|v2.70#41651-1 "Glucose [Mass/volume] in Arterial blood"
* LNC|v2.70#96594-7 "Glucose [Mass/volume] in DBS"
* LNC|v2.70#41652-9 "Glucose [Mass/volume] in Venous blood"
* LNC|v2.70#74774-1 "Glucose [Mass/volume] in Serum, Plasma or Blood"
* LNC|v2.70#41653-7 "Glucose [Mass/volume] in Capillary blood by Glucometer"
* LNC|v2.70#2341-6  "Glucose [Mass/volume] in Blood by Test strip manual"
* LNC|v2.70#2340-8  "Glucose [Mass/volume] in Blood by Automated test strip"

ValueSet: LDH
Id: fbce9f7b-2455-4ae0-9829-e22fc7ebd4e1
Title: "LDH"
Description: "Includes LOINC codes for LDH"
* LNC|v2.70#2538-7  "Lactate dehydrogenase 2 [Enzymatic activity/volume] in Serum or Plasma by Chemical separation"
* LNC|v2.70#2545-2  "Lactate dehydrogenase 4/Lactate dehydrogenase.total in Serum or Plasma by Electrophoresis"
* LNC|v2.70#2547-8  "Lactate dehydrogenase 5 [Enzymatic activity/volume] in Serum or Plasma by Chemical separation"
* LNC|v2.70#5910-5  "Lactate dehydrogenase isoenzymes [Interpretation] in Serum or Plasma"
* LNC|v2.70#2546-0  "Lactate dehydrogenase 4 [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#19248-4 "Lactate dehydrogenase 2 [Enzymatic activity/volume] in Serum or Plasma by Electrophoresis"
* LNC|v2.70#14119-2 "Lactate dehydrogenase 1/Lactate dehydrogenase 2 [Enzymatic activity ratio] in Serum or Plasma"
* LNC|v2.70#2544-5  "Lactate dehydrogenase 4 [Enzymatic activity/volume] in Serum or Plasma by Chemical separation"
* LNC|v2.70#2542-9  "Lactate dehydrogenase 3/Lactate dehydrogenase.total in Serum or Plasma by Electrophoresis"
* LNC|v2.70#2537-9  "Lactate dehydrogenase 1 [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#49279-3 "Lactate dehydrogenase isoenzymes [Interpretation] in Serum or Plasma Narrative"
* LNC|v2.70#2539-5  "Lactate dehydrogenase 2/Lactate dehydrogenase.total in Serum or Plasma by Electrophoresis"
* LNC|v2.70#2548-6  "Lactate dehydrogenase 5/Lactate dehydrogenase.total in Serum or Plasma by Electrophoresis"
* LNC|v2.70#2535-3  "Lactate dehydrogenase 1 [Enzymatic activity/volume] in Serum or Plasma by Chemical separation"
* LNC|v2.70#2549-4  "Lactate dehydrogenase 5 [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#2536-1  "Lactate dehydrogenase 1/Lactate dehydrogenase.total in Serum or Plasma by Electrophoresis"
* LNC|v2.70#2541-1  "Lactate dehydrogenase 3 [Enzymatic activity/volume] in Serum or Plasma by Chemical separation"
* LNC|v2.70#2543-7  "Lactate dehydrogenase 3 [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#2540-3  "Lactate dehydrogenase 2 [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#14805-6 "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Pyruvate to lactate reaction"
* LNC|v2.70#14804-9 "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction"
* LNC|v2.70#42929-0 "Lactate dehydrogenase panel - Serum or Plasma"

ValueSet: CA27_29
Id: ad691140-8ef7-4712-ac02-f8994f85c97a
Title: "Cancer Ag 27-29"
Description: "Includes LOINC codes for Cancer Ag 27-29"
* LNC|v2.70#17842-6 "Cancer Ag 27-29 [Units/volume] in Serum or Plasma"
* LNC|v2.70#19187-4 "Cancer Ag 27-29 [Units/volume] in Pleural fluid"
* LNC|v2.70#2012-3  "Cancer Ag 27-29 [Presence] in Serum or Plasma"
* LNC|v2.70#50782-2 "Cancer Ag 27-29 [Units/volume] in Cerebral spinal fluid"

ValueSet: BetaHCG
Id: 9db71342-e580-4330-aba9-d4aa770ef904
Title: "Beta HCG"
Description: "Includes LOINC codes for Beta HCG"
* LNC|v2.70#2111-3  "Choriogonadotropin.beta subunit [Moles/volume] in Serum or Plasma"
* LNC|v2.70#20415-6 "Choriogonadotropin.beta subunit [Units/volume] in Serum or Plasma by Immunoassay (EIA) 3rd IS"
* LNC|v2.70#23841-0 "Choriogonadotropin.beta subunit [Multiple of the median] adjusted in Serum or Plasma"
* LNC|v2.70#55868-4 "Choriogonadotropin.beta subunit [Multiple of the median] in Serum or Plasma"
* LNC|v2.70#55869-2 "Choriogonadotropin.beta subunit [Mass/volume] in Serum or Plasma"
* LNC|v2.70#21198-7 "Choriogonadotropin.beta subunit [Units/volume] in Serum or Plasma"

ValueSet: BUN
Id: 7dfd4847-5a45-42c1-9c08-c17de4a24b0b
Title: "BUN"
Description: "Includes LOINC codes for BUN"
* LNC|v2.70#12961-9 "Urea nitrogen [Mass/volume] in Arterial blood"
* LNC|v2.70#35234-4 "Urea nitrogen [Mass or Moles/volume] in Serum or Plasma"
* LNC|v2.70#59570-2 "Urea nitrogen [Moles/volume] in Blood"
* LNC|v2.70#14937-7 "Urea nitrogen [Moles/volume] in Serum or Plasma"
* LNC|v2.70#6299-2 "Urea nitrogen [Mass/volume] in Blood"
* LNC|v2.70#12963-5 "Urea nitrogen [Mass/volume] in Peripheral blood"
* LNC|v2.70#3094-0 "Urea nitrogen [Mass/volume] in Serum or Plasma"
* LNC|v2.70#12962-7 "Urea nitrogen [Mass/volume] in Venous blood"

ValueSet: Sodium
Id: c1c45bf7-e61b-4fed-a007-a0d2185a9ca9
Title: "Sodium"
Description: "Includes LOINC codes for Sodium"
* LNC|v2.70#39792-7 "Sodium [Moles/volume] in Capillary blood"
* LNC|v2.70#77139-4 "Sodium [Moles/volume] in Serum, Plasma or Blood"
* LNC|v2.70#41657-8 "Sodium [Moles/volume] in Mixed venous blood"
* LNC|v2.70#2947-0 "Sodium [Moles/volume] in Blood"
* LNC|v2.70#44783-9 "Sodium [Moles/volume] (Maximum value during study) in Serum or Plasma"
* LNC|v2.70#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* LNC|v2.70#39791-9 "Sodium [Moles/volume] in Venous blood"
* LNC|v2.70#32717-1 "Sodium [Moles/volume] in Arterial blood"

ValueSet: AFP
Id: 272438f6-fc56-498f-8791-8509a04925b8
Title: "AFP"
Description: "Includes LOINC codes for AFP"
* LNC|v2.70#19176-7 "Alpha-1-Fetoprotein [Units/volume] in Serum or Plasma"
* LNC|v2.70#20450-3 "Alpha-1-Fetoprotein [Multiple of the median] in Serum or Plasma"
* LNC|v2.70#49246-2 "Alpha-1-Fetoprotein interpretation in Serum or Plasma Narrative"
* LNC|v2.70#83072-9 "Alpha-1-Fetoprotein [Units/volume] in Serum or Plasma by Immunoassay"
* LNC|v2.70#42332-7 "Alpha-1-Fetoprotein L3/Alpha-1-fetoprotein.total in Serum or Plasma"
* LNC|v2.70#41274-2 "Alpha-1-Fetoprotein interpretation in Serum or Plasma"
* LNC|v2.70#96451-0 "Alpha-1-Fetoprotein and Alpha-1-Fetoprotein.L3 panel - Serum or Plasma"
* LNC|v2.70#53960-1 "Alpha-1-fetoprotein.tumor marker [Moles/volume] in Serum or Plasma"
* LNC|v2.70#48802-3 "Alpha-1-Fetoprotein panel - Serum or Plasma"
* LNC|v2.70#43998-4 "Alpha-1-Fetoprotein [Multiple of the median] adjusted for diabetes in Serum or Plasma"
* LNC|v2.70#31993-9 "Alpha-1-Fetoprotein [Presence] in Serum or Plasma"
* LNC|v2.70#1834-1 "Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma"
* LNC|v2.70#83073-7 "Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma by Immunoassay"
* LNC|v2.70#19177-5 "Alpha-1-Fetoprotein [Moles/volume] in Serum or Plasma"
* LNC|v2.70#90293-2 "Liver cancer antibodies and AFP panel - Serum or Plasma by Immunoassay"
* LNC|v2.70#53962-7 "Alpha-1-fetoprotein.tumor marker [Mass/volume] in Serum or Plasma"
* LNC|v2.70#43997-6 "Alpha-1-Fetoprotein [Multiple of the median] adjusted for weight in Serum or Plasma"
* LNC|v2.70#53961-9 "Alpha-1-fetoprotein.tumor marker [Units/volume] in Serum or Plasma"
* LNC|v2.70#90292-4 "Liver cancer antibodies and AFP [Interpretation] in Serum or Plasma Qualitative"
* LNC|v2.70#49585-3 "Alpha-1-Fetoprotein multiple of the median cutoff [Multiple of the median] in Serum or Plasma"
* LNC|v2.70#50610-5 "Alpha-1-Fetoprotein [Multiple of the median] adjusted for multiple gestations in Serum or Plasma"
* LNC|v2.70#43996-8 "Alpha-1-Fetoprotein [Multiple of the median] adjusted for diabetes+weight in Serum or Plasma"
* LNC|v2.70#23811-3 "Alpha-1-Fetoprotein [Multiple of the median] adjusted in Serum or Plasma"
* LNC|v2.70#90290-8 "Alpha-1-Fetoprotein Ab [Units/volume] in Serum or Plasma by Immunoassay"

ValueSet: AlkalinePhosphatase
Id: e50db242-3d3a-47a0-af20-00b1e0b3b46c
Title: "Alkaline Phosphatase"
Description: "Includes LOINC codes for Alkaline Phosphatase"
* LNC|v2.70#1783-0 "Alkaline phosphatase [Enzymatic activity/volume] in Blood"
* LNC|v2.70#6768-6 "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"
* LNC|v2.70#55971-6 "Alkaline phosphatase [Enzymatic activity/volume] in Cord blood"
* LNC|v2.70#77141-0 "Alkaline phosphatase [Enzymatic activity/volume] in Serum, Plasma or Blood"

ValueSet: Potassium
Id: 4cf9dcf2-8bb1-4952-90c8-4179b9ab2de9
Title: "Potassium"
Description: "Includes LOINC codes for Potassium"
* LNC|v2.70#75940-7 "Potassium [Mass/volume] in Blood"
* LNC|v2.70#6298-4 "Potassium [Moles/volume] in Blood"
* LNC|v2.70#77142-8 "Potassium [Moles/volume] in Serum, Plasma or Blood"
* LNC|v2.70#39790-1 "Potassium [Moles/volume] in Capillary blood"
* LNC|v2.70#39789-3 "Potassium [Moles/volume] in Venous blood"
* LNC|v2.70#32713-0 "Potassium [Moles/volume] in Arterial blood"
* LNC|v2.70#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* LNC|v2.70#41656-0 "Potassium [Moles/volume] in Mixed venous blood"


Instance: OncologyObservation01Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 01 Test WBC (Bld) [#/Vol]"
* id = "OncologyObservation01Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#26464-8 "Leukocytes [#/volume] in Blood"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2020-10-12T22:09:16.509423Z"
* issued = "2020-10-12T22:09:30.00Z"
* valueQuantity = 5000 '10*3/uL' "10*3/uL"
* referenceRange.low = 5000 '10*3/uL' "10*3/uL"
* referenceRange.high = 10000 '10*3/uL' "10*3/uL"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"

Instance: OncologyObservation02Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 02 Test WBC Auto (Bld) [#/Vol]"
* id = "OncologyObservation02Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#6690-2  "Leukocytes [#/volume] in Blood by Automated count"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2020-10-13T22:09:16.509423Z"
* issued = "2020-10-13T22:09:30.00Z"
* valueQuantity = 3000 '10*3/uL' "10*3/uL"
* referenceRange.low = 5000 '10*3/uL' "10*3/uL"
* referenceRange.high = 10000 '10*3/uL' "10*3/uL"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"

Instance: OncologyObservation03Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 03 Test WBC Estimate (Bld) [#/Vol]"
* id = "OncologyObservation03Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#49498-9 "Leukocytes [#/volume] in Blood by Estimate"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2020-10-14T22:09:16.509423Z"
* issued = "2020-10-14T22:09:30.00Z"
* valueQuantity = 7000 '10*3/uL' "10*3/uL"
* referenceRange.low = 5000 '10*3/uL' "10*3/uL"
* referenceRange.high = 10000 '10*3/uL' "10*3/uL"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"

Instance: OncologyObservation04Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 03 Test WBC Manual cnt (Bld) [#/Vol]"
* id = "OncologyObservation04Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#804-5 "Leukocytes [#/volume] in Blood by Manual count"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2020-10-15T22:09:16.509423Z"
* issued = "2020-10-15T22:09:30.00Z"
* valueQuantity = 11000 '10*3/uL' "10*3/uL"
* referenceRange.low = 5000 '10*3/uL' "10*3/uL"
* referenceRange.high = 10000 '10*3/uL' "10*3/uL"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"

Instance: OncologyObservation05Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 05 Test Sodium (Bld) [Moles/Vol]"
* id = "OncologyObservation05Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#2947-0 "Sodium [Moles/Volume] in Blood"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2020-10-16T22:09:16.509423Z"
* issued = "2020-10-16T22:09:30.00Z"
* valueQuantity = 133 'meq/L' "meq/L"
* referenceRange.low = 136 'meq/L' "meq/L"
* referenceRange.high = 146 'meq/L' "meq/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "136 - 146 meq/L"
* interpretation = ObsInt#L "Low"
* interpretation.text = "Low"

Instance: OncologyObservation06Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 06 Test Sodium (Bld) [Moles/Vol] High"
* id = "OncologyObservation06Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#2947-0 "Sodium [Moles/Volume] in Blood"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2020-10-17T22:09:16.509423Z"
* issued = "2020-10-17T22:09:30.00Z"
* valueQuantity = 148 'meq/L' "meq/L"
* referenceRange.low = 136 'meq/L' "meq/L"
* referenceRange.high = 146 'meq/L' "meq/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "136 - 146 meq/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation07Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 07 Test Cancer Ag 15-3 High"
* id = "OncologyObservation07Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#6875-9 "Cancer Ag 15-3 [Units/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-18T22:09:16.509423Z"
* issued = "2021-08-18T22:09:30.00Z"
* valueQuantity = 498.7 'U/mL' "U/mL"
* referenceRange.low = 0 'U/mL' "U/mL"
* referenceRange.high = 25 'U/mL' "U/mL"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "0.0 - 25.0 U/mL"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"


Instance: OncologyObservation08Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 08 Test Amylase High"
* id = "OncologyObservation08Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#24333-7 "Amylase isoenzyme 3 panel - Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-19T22:09:16.509423Z"
* issued = "2021-08-19T22:09:30.00Z"
* valueQuantity = 111 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation09Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 08 Test Amylase Normal"
* id = "OncologyObservation09Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#14589-6 "Amylase isoenzymes [Interpretation] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-20T22:09:16.509423Z"
* issued = "2021-08-21T22:09:30.00Z"
* valueQuantity = 50 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#N "Normal"
* interpretation.text = "Normal"

Instance: OncologyObservation10Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 10 Test Amylase Low"
* id = "OncologyObservation10Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#15020-1 "Amylase.P1/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-22T22:09:16.509423Z"
* issued = "2021-08-22T22:09:30.00Z"
* valueQuantity = 20 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#L "Low"
* interpretation.text = "Low"

Instance: OncologyObservation11Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 11 Test Amylase High"
* id = "OncologyObservation11Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#15021-9 "Amylase.P2/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-23T22:09:16.509423Z"
* issued = "2021-08-23T22:09:30.00Z"
* valueQuantity = 115 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation12Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 12 Test Amylase Low"
* id = "OncologyObservation12Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#15022-7 "Amylase.P3/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-24T22:09:16.509423Z"
* issued = "2021-08-24T22:09:30.00Z"
* valueQuantity = 30 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#L "Low"
* interpretation.text = "Low"

Instance: OncologyObservation13Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 13 Test Amylase Normal"
* id = "OncologyObservation13Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#15023-5 "Amylase S1/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-25T22:09:16.509423Z"
* issued = "2021-08-25T22:09:30.00Z"
* valueQuantity = 100 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#N "Normal"
* interpretation.text = "Normal"

Instance: OncologyObservation14Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 14 Test Amylase High"
* id = "OncologyObservation14Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#15024-3 "Amylase S2/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-26T22:09:16.509423Z"
* issued = "2021-08-26T22:09:30.00Z"
* valueQuantity = 150 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation15Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 15 Test Amylase Normal"
* id = "OncologyObservation15Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#15025-0 "Amylase S3/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-26T22:09:16.509423Z"
* issued = "2021-08-26T22:09:30.00Z"
* valueQuantity = 100 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#N "Normal"
* interpretation.text = "Normal"

Instance: OncologyObservation16Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 16 Test Amylase High"
* id = "OncologyObservation16Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1798-8  "Amylase [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-26T22:09:16.509423Z"
* issued = "2021-08-26T22:09:30.00Z"
* valueQuantity = 112 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation17Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 17 Test Amylase High"
* id = "OncologyObservation17Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1802-8  "Amylase.P1 [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-27T22:09:16.509423Z"
* issued = "2021-08-27T22:09:30.00Z"
* valueQuantity = 117 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation18Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 18 Test Amylase Low"
* id = "OncologyObservation18Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1803-6  "Amylase.P2 [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-28T22:09:16.509423Z"
* issued = "2021-08-28T22:09:30.00Z"
* valueQuantity = 25 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#L "Low"
* interpretation.text = "Low"

Instance: OncologyObservation19Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 19 Test Amylase Low"
* id = "OncologyObservation19Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1804-4  "Amylase.P3 [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-29T22:09:16.509423Z"
* issued = "2021-08-29T22:09:30.00Z"
* valueQuantity = 10 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#L "Low"
* interpretation.text = "Low"

Instance: OncologyObservation20Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 20 Test Amylase Normal"
* id = "OncologyObservation20Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1805-1  "Amylase.pancreatic [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-29T22:09:16.509423Z"
* issued = "2021-08-29T22:09:30.00Z"
* valueQuantity = 50 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#N "Normal"
* interpretation.text = "Normal"

Instance: OncologyObservation21Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 21 Test Amylase High"
* id = "OncologyObservation21Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1806-9  "Amylase S1 [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-29T22:09:16.509423Z"
* issued = "2021-08-29T22:09:30.00Z"
* valueQuantity = 111 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation22Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 22 Test Amylase Normal"
* id = "OncologyObservation22Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1807-7  "Amylase S2 [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-29T22:09:16.509423Z"
* issued = "2021-08-29T22:09:30.00Z"
* valueQuantity = 70 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#N "Normal"
* interpretation.text = "Normal"

Instance: OncologyObservation23Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 23 Test Amylase Normal"
* id = "OncologyObservation23Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1808-5  "Amylase S3 [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-30T22:09:16.509423Z"
* issued = "2021-08-30T22:09:30.00Z"
* valueQuantity = 80 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#N "Normal"
* interpretation.text = "Normal"

Instance: OncologyObservation24Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 24 Test Amylase High"
* id = "OncologyObservation24Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1809-3  "Amylase.salivary [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-30T22:09:16.509423Z"
* issued = "2021-08-30T22:09:30.00Z"
* valueQuantity = 111 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation25Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 25 Test Amylase Normal"
* id = "OncologyObservation25Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#25312-0 "Amylase.pancreatic/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-08-30T22:09:16.509423Z"
* issued = "2021-08-30T22:09:30.00Z"
* valueQuantity = 90 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#N "Normal"
* interpretation.text = "Normal"

Instance: OncologyObservation26Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 26 Test Amylase High"
* id = "OncologyObservation26Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#25313-8 "Amylase.salivary/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-09-15T22:09:16.509423Z"
* issued = "2021-09-15T22:09:30.00Z"
* valueQuantity = 115 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation27Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 27 Test Amylase Low"
* id = "OncologyObservation27Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#26011-7 "Macroamylase/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-09-16T22:09:16.509423Z"
* issued = "2021-09-16T22:09:30.00Z"
* valueQuantity = 22 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#L "Low"
* interpretation.text = "Low"

Instance: OncologyObservation28Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 28 Test Amylase High"
* id = "OncologyObservation28Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#49251-2 "Amylase isoenzymes [Interpretation] in Serum or Plasma Narrative"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-09-05T22:09:16.509423Z"
* issued = "2021-09-05T22:09:30.00Z"
* valueQuantity = 122 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation29Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 29 Test Amylase Normal"
* id = "OncologyObservation29Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#54472-6 "Amylase.macromolecular/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-09-10T22:09:16.509423Z"
* issued = "2021-09-10T22:09:30.00Z"
* valueQuantity = 70 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#N "Normal"
* interpretation.text = "Normal"

Instance: OncologyObservation30Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 30 Test Amylase High"
* id = "OncologyObservation30Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#56776-8 "Amylase S3+S4/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-09-12T22:09:16.509423Z"
* issued = "2021-09-12T22:09:30.00Z"
* valueQuantity = 117 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation31Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 31 Test Amylase Low"
* id = "OncologyObservation31Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#56782-6 "Amylase S4/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-09-13T22:09:16.509423Z"
* issued = "2021-09-13T22:09:30.00Z"
* valueQuantity = 28 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#L "Low"
* interpretation.text = "Low"

Instance: OncologyObservation32Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 32 Test Amylase High"
* id = "OncologyObservation32Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#72272-8 "Amylase and triacylglycerol lipase panel - Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-09-13T22:09:16.509423Z"
* issued = "2021-09-13T22:09:30.00Z"
* valueQuantity = 144 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation33Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 33 Test Amylase Normal"
* id = "OncologyObservation33Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#72571-3 "Amylase.pancreatic/Amylase.total [Pure catalytic fraction] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-09-13T22:09:16.509423Z"
* issued = "2021-09-14T22:09:30.00Z"
* valueQuantity = 80 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#N "Normal"
* interpretation.text = "Normal"

Instance: OncologyObservation34Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 34 Test Amylase High"
* id = "OncologyObservation34Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#72572-1 "Amylase.salivary/Amylase.total [Pure catalytic fraction] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-09-01T22:09:16.509423Z"
* issued = "2021-09-15T22:09:30.00Z"
* valueQuantity = 111 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#H "High"
* interpretation.text = "High"

Instance: OncologyObservation35Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 35 Test Amylase Low"
* id = "OncologyObservation35Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1810-1  "Amylase/Creatinine [Mass Ratio] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninMDAPractitioner01Test)
* effectiveDateTime = "2021-09-08T22:09:16.509423Z"
* issued = "2021-09-07T22:09:30.00Z"
* valueQuantity = 12 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#L "Low"
* interpretation.text = "Low"