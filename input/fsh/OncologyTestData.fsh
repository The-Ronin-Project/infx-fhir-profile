// OncologyTestData.fsh contains a set of 5 patients as initial examples for testing
// Two tenants created: MDA and PSJ.

// Five Appointments, 1 PEENG, 2 MDA, 2 PSJ
Instance: roninOncologyPatientAppointment01Test
InstanceOf: OncologyAppointment
Description: "Ronin Example for Oncology Patient Appointment"
* id = "roninOncologyPatientAppointment01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-appointment"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "PEENG"
* minutesDuration = 60
* comment = "Patient experiencing abdominal pain"
* start = "2021-12-07T13:28:17.000Z"
* end = "2021-12-07T14:28:17.000Z"
* status = #checked-in
* participant[0].actor = Reference(roninPatient01Test)
* participant[0].actor.display = "John B. Bass"
* participant[0].status = #accepted
* participant[1].actor = Reference(roninPEENGPractitioner01Test)
* participant[1].actor.display = "Dr. Harvey Feest"
* participant[1].status = #accepted
* appointmentType = AppmtType#CHECKUP "A routine check-up, such as an annual physical"
//* reasonReference = Reference(roninPrimaryOncologyCondition01Test)
* extension[department][0].valueReference = Reference(roninPEENGPartnerDepartmentTest)

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
* participant[1].actor = Reference(roninMDAPractitioner03Test)
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

// Five patients, 1 PEENG, 2 MDA, 2 PSJ
Instance: roninPatient01Test
InstanceOf: OncologyPatient
Description: "Ronin Test Patient 01 - PEENG"
* id = "roninPatient01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-patient"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "PEENG"
* identifier[mrn].type = IDTYPE#MR "Medical Record Number"
* identifier[mrn].type.text = "MRN"
* identifier[mrn].system = "http://projectronin.com/id/mrn"
* identifier[mrn].value = "7654321"
* identifier[fhir_stu3_id].type = RFHIRID#STU3 "FHIR STU3 ID"
* identifier[fhir_stu3_id].type.text = "FHIR STU3"
* identifier[fhir_stu3_id].system = "http://projectronin.com/id/fhir"
* identifier[fhir_stu3_id].value = "stu3-7654321"
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
* generalPractitioner = Reference(roninPEENGPractitioner01Test)

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
Instance: roninPEENGPractitioner01Test
InstanceOf: OncologyPractitioner
Description: "Ronin Practitioner 01 - PEENG"
* id = "roninPEENGPractitioner01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitioner"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "PEENG"
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
Instance: roniPEENGPractitionerRole01Test
InstanceOf: OncologyPractitionerRole
Description: "Ronin PractitionerRole 01 - PEENG"
* id = "roninPEENGPractitionerRole01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-practitionerrole"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "PEENG"
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* organization = Reference(roninPEENGPartnerDepartmentTest)
* practitioner = Reference(roninPEENGPractitioner01Test)
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
Instance: roninPEENGPartnerDepartmentTest
InstanceOf: PartnerDepartment
Description: "Ronin PEENG Partner"
* id = "roninPEENGPartnerDepartmentTest"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/partner-department"
* active = true
* name = "PEENG"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">PEENG</div>"

// PartnerDepartment 2
Instance: roninMDAPartnerDepartmentTest
InstanceOf: PartnerDepartment
Description: "Ronin MDA Partner"
* id = "roninMDAPartnerDepartmentTest"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/partner-department"
* active = true
* name = "MDA"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MDA</div>"

// PartnerDepartment 3
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
* identifier[tenantId].value = "PEENG"
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
* author = Reference(roninPEENGPractitioner01Test)

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
* identifier[tenantId].value = "PEENG"
* status = #final
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "v1.0"
* subject = Reference(Patient/roninPatient01Test)
* occurrenceDateTime = "2021-10-07"
* prediction.probabilityDecimal = 0.43
* basis = Reference(roninEdVisitRationale01Test)
* extension[sampleSize].valueInteger = 1000
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
* extension[sampleSize].valueInteger = 4000
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
* extension[sampleSize].valueInteger = 2220
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
* extension[sampleSize].valueInteger = 3255
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
* extension[sampleSize].valueInteger = 4250
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
* identifier[tenantId].value = "PEENG"
* status = #final
* code = SCT#4525004 "Emergency department patient visit"
* focus = Reference(roninEdVisitRiskAssessment01Test)
* issued = "2021-10-07T13:28:17.000Z"

// I added ID to this example but we don't have to use it
// We can use code.coding.code in search.
// NOTE that id has to be unique.
* component[riskDrivers][0].id = "AgeRiskDriver"
* component[riskDrivers][0].valueQuantity.value = 0.8
* component[riskDrivers][0].code = RDSRD#AGE  "Age"
* component[riskDrivers][0].interpretation = RDSRDI#increase
* component[riskDrivers][0].referenceRange.low.value = 0.0
* component[riskDrivers][0].referenceRange.high.value = 1.0
* component[riskDrivers][0].referenceRange.text = "Age Range"
* component[riskDrivers][0].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"
* component[riskDrivers][0].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][1].id = "MaritalStatusRiskDriver"
* component[riskDrivers][1].valueQuantity.value = 0.1
* component[riskDrivers][1].code = RDSRD#MS  "Marital Status"
* component[riskDrivers][1].interpretation = RDSRDI#increase
* component[riskDrivers][1].referenceRange.low.value = 0.0
* component[riskDrivers][1].referenceRange.high.value = 1.0
* component[riskDrivers][1].referenceRange.text = "Marital Status Range"
* component[riskDrivers][1].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"
* component[riskDrivers][1].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][2].id = "ImmunosuppressantRiskDriver"
* component[riskDrivers][2].valueQuantity.value = 0.45
* component[riskDrivers][2].code = RDSRD#ISP  "Immunosuppressants"
* component[riskDrivers][2].interpretation = RDSRDI#increase
* component[riskDrivers][2].referenceRange.low.value = 0.0
* component[riskDrivers][2].referenceRange.high.value = 1.0
* component[riskDrivers][2].referenceRange.text = "Immunosuppressants Range"
* component[riskDrivers][2].extension[category].valueCodeableConcept = RDSRDC#Medications "Medications"
* component[riskDrivers][2].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][3].id = "TSPRiskDriver"
* component[riskDrivers][3].valueQuantity.value = 0.1
* component[riskDrivers][3].code = RDSRD#TSP  "T Stage (Pathologic)"
* component[riskDrivers][3].interpretation = RDSRDI#decrease
* component[riskDrivers][3].referenceRange.low.value = 0.0
* component[riskDrivers][3].referenceRange.high.value = 1.0
* component[riskDrivers][3].referenceRange.text = "T Stage (Pathologic) Range"
* component[riskDrivers][3].extension[category].valueCodeableConcept = RDSRDC#DSRF "Disease-specific Risk Factors"
* component[riskDrivers][3].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][4].id = "DiabetesRiskDriver"
* component[riskDrivers][4].valueQuantity.value = 0.6
* component[riskDrivers][4].code = RDSRD#DIA-C "Diabetes (Complicated)"
* component[riskDrivers][4].interpretation = RDSRDI#increase
* component[riskDrivers][4].referenceRange.low.value = 0.0
* component[riskDrivers][4].referenceRange.high.value = 1.0
* component[riskDrivers][4].referenceRange.text = "Diabetes (Complicated) Range"
* component[riskDrivers][4].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][4].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][5].id = "HypertensionRiskDriver"
* component[riskDrivers][5].valueQuantity.value = 0.45
* component[riskDrivers][5].code = RDSRD#HYP "Hypertension"
* component[riskDrivers][5].interpretation = RDSRDI#increase
* component[riskDrivers][5].referenceRange.low.value = 0.0
* component[riskDrivers][5].referenceRange.high.value = 1.0
* component[riskDrivers][5].referenceRange.text = "Hypertension Range"
* component[riskDrivers][5].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][5].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][6].id = "RheumatoidArthritisRiskDriver"
* component[riskDrivers][6].valueQuantity.value = 0.35
* component[riskDrivers][6].code = RDSRD#RA "Rheumatoid Arthritis"
* component[riskDrivers][6].interpretation = RDSRDI#increase
* component[riskDrivers][6].referenceRange.low.value = 0.0
* component[riskDrivers][6].referenceRange.high.value = 1.0
* component[riskDrivers][6].referenceRange.text = "Rheumatoid Arthritis Range"
* component[riskDrivers][6].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][6].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][7].id = "CreatinineRiskDriver"
* component[riskDrivers][7].valueQuantity.value = 0.08
* component[riskDrivers][7].code = RDSRD#CRE  "Creatinine"
* component[riskDrivers][7].interpretation = RDSRDI#increase
* component[riskDrivers][7].referenceRange.low.value = 0.0
* component[riskDrivers][7].referenceRange.high.value = 1
* component[riskDrivers][7].referenceRange.text = "Creatinine Range"
* component[riskDrivers][7].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][7].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][8].id = "PotassiumRiskDriver"
* component[riskDrivers][8].valueQuantity.value = 0.7
* component[riskDrivers][8].code = RDSRD#K "Potassium"
* component[riskDrivers][8].interpretation = RDSRDI#increase
* component[riskDrivers][8].referenceRange.low.value = 0
* component[riskDrivers][8].referenceRange.high.value = 1
* component[riskDrivers][8].referenceRange.text = "Potassium Range"
* component[riskDrivers][8].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][8].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][9].id = "ANCRiskDriver"
* component[riskDrivers][9].valueQuantity.value = 0.03
* component[riskDrivers][9].code = RDSRD#ANC  "Absolute Neutrophil Count (ANC)"
* component[riskDrivers][9].interpretation = RDSRDI#increase
* component[riskDrivers][9].referenceRange.low.value = 0
* component[riskDrivers][9].referenceRange.high.value = 1
* component[riskDrivers][9].referenceRange.text = "ANC Range"
* component[riskDrivers][9].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][9].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][10].id = "SodiumRiskDriver"
* component[riskDrivers][10].valueQuantity.value = 0.9
* component[riskDrivers][10].code = RDSRD#NA  "Sodium"
* component[riskDrivers][10].interpretation = RDSRDI#increase
* component[riskDrivers][10].referenceRange.low.value = 0
* component[riskDrivers][10].referenceRange.high.value = 1
* component[riskDrivers][10].referenceRange.text = "Sodium Range"
* component[riskDrivers][10].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][10].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[patientComparisons][0].id = "AgePatientComparison"
* component[patientComparisons][0].code = RDSRD#AGE  "Age"
* component[patientComparisons][0].valueQuantity.value = 90
* component[patientComparisons][0].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][1].id = "PerformanceStatusPatientComparison"
* component[patientComparisons][1].code = RDSRD#PVSS-P1990GWV "Population Veteran Status"
* component[patientComparisons][1].valueQuantity.value = 60
* component[patientComparisons][1].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][2].id = "StageAndTNMPatientComparison"
* component[patientComparisons][2].code = RDSRD#TSP "T Stage (Pathologic)"
* component[patientComparisons][2].valueQuantity.value = 20
* component[patientComparisons][2].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][3].id = "PriorOrCurrentTreatmentsPatientComparison"
* component[patientComparisons][3].code = RDSRD#MTC "Medication Treatment Cycle"
* component[patientComparisons][3].valueQuantity.value = 70
* component[patientComparisons][3].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][4].id = "ActiveMedicationPatientComparison"
* component[patientComparisons][4].code = RDSRD#NAMI "No Active Medication Identified"
* component[patientComparisons][4].valueQuantity.value = 50
* component[patientComparisons][4].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][5].id = "CCIPatientComparison"
* component[patientComparisons][5].code = RDSRD#PD "Pepticular Disease"
* component[patientComparisons][5].valueQuantity.value = 10
* component[patientComparisons][5].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][6].id = "OverallPatientComparison"
* component[patientComparisons][6].code = RDSPC#OC  "Overall Comparison"
* component[patientComparisons][6].valueQuantity.value = 78.8
* component[patientComparisons][6].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[labs].id = "Labs"
* component[labs].extension[componentType].valueCodeableConcept = ROBSCT#Labs  "Labs Component"
* component[labs].code.coding[0] = RDSLAB#96523e66-7ae6-11ec-ba14-00163e0e3b1e "WBC"
* component[labs].code.coding[0].version = "2"
* component[labs].code.coding[0].extension[rank].valueQuantity.value = 0.34

* component[labs].code.coding[1] = RDSLAB#95f1088a-7ae6-11ec-ba14-00163e0e3b1e "Sodium"
* component[labs].code.coding[1].version = "2"
* component[labs].code.coding[1].extension[rank].valueQuantity.value = 0.67

* component[labs].code.coding[2] = RDSLAB#93895b6a-7ae6-11ec-ba14-00163e0e3b1e "CA15.3"
* component[labs].code.coding[2].version = "2"
* component[labs].code.coding[2].extension[rank].valueQuantity.value = 0.60

* component[labs].code.coding[3] = RDSLAB#9299bd8a-7ae6-11ec-ba14-00163e0e3b1e "Amylase"
* component[labs].code.coding[3].version = "2"
* component[labs].code.coding[3].extension[rank].valueQuantity.value = 0.90

* component[symptoms].id = "Symptoms"
* component[symptoms].extension[componentType].valueCodeableConcept = ROBSCT#Symptoms  "Symptoms Component"
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
* component[riskDrivers][0].code = RDSRD#AGE  "Age"
* component[riskDrivers][0].interpretation = RDSRDI#increase
* component[riskDrivers][0].referenceRange.low.value = 0.0
* component[riskDrivers][0].referenceRange.high.value = 1.0
* component[riskDrivers][0].referenceRange.text = "Age Range"
* component[riskDrivers][0].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"
* component[riskDrivers][0].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][1].id = "MaritalStatusRiskDriver"
* component[riskDrivers][1].valueQuantity.value = 0.8
* component[riskDrivers][1].code = RDSRD#MS  "Marital Status"
* component[riskDrivers][1].interpretation = RDSRDI#increase
* component[riskDrivers][1].referenceRange.low.value = 0.0
* component[riskDrivers][1].referenceRange.high.value = 1.0
* component[riskDrivers][1].referenceRange.text = "Marital Status Range"
* component[riskDrivers][1].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"
* component[riskDrivers][1].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][2].id = "ImmunosuppressantRiskDriver"
* component[riskDrivers][2].valueQuantity.value = 0.65
* component[riskDrivers][2].code = RDSRD#ISP  "Immunosuppressants"
* component[riskDrivers][2].interpretation = RDSRDI#increase
* component[riskDrivers][2].referenceRange.low.value = 0.0
* component[riskDrivers][2].referenceRange.high.value = 1.0
* component[riskDrivers][2].referenceRange.text = "Immunosuppressants Range"
* component[riskDrivers][2].extension[category].valueCodeableConcept = RDSRDC#Medications "Medications"
* component[riskDrivers][2].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][3].id = "TSPRiskDriver"
* component[riskDrivers][3].valueQuantity.value = 0.24
* component[riskDrivers][3].code = RDSRD#TSP  "T Stage (Pathologic)"
* component[riskDrivers][3].interpretation = RDSRDI#decrease
* component[riskDrivers][3].referenceRange.low.value = 0.0
* component[riskDrivers][3].referenceRange.high.value = 1.0
* component[riskDrivers][3].referenceRange.text = "T Stage (Pathologic) Range"
* component[riskDrivers][3].extension[category].valueCodeableConcept = RDSRDC#DSRF "Disease-specific Risk Factors"
* component[riskDrivers][3].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][4].id = "DiabetesRiskDriver"
* component[riskDrivers][4].valueQuantity.value = 0.6
* component[riskDrivers][4].code = RDSRD#DIA-C "Diabetes (Complicated)"
* component[riskDrivers][4].interpretation = RDSRDI#increase
* component[riskDrivers][4].referenceRange.low.value = 0.0
* component[riskDrivers][4].referenceRange.high.value = 1.0
* component[riskDrivers][4].referenceRange.text = "Diabetes (Complicated) Range"
* component[riskDrivers][4].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][4].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][5].id = "HypertensionRiskDriver"
* component[riskDrivers][5].valueQuantity.value = 0.77
* component[riskDrivers][5].code = RDSRD#HYP "Hypertension"
* component[riskDrivers][5].interpretation = RDSRDI#increase
* component[riskDrivers][5].referenceRange.low.value = 0.0
* component[riskDrivers][5].referenceRange.high.value = 1.0
* component[riskDrivers][5].referenceRange.text = "Hypertension Range"
* component[riskDrivers][5].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][5].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][6].id = "RheumatoidArthritisRiskDriver"
* component[riskDrivers][6].valueQuantity.value = 0.88
* component[riskDrivers][6].code = RDSRD#RA "Rheumatoid Arthritis"
* component[riskDrivers][6].interpretation = RDSRDI#increase
* component[riskDrivers][6].referenceRange.low.value = 0.0
* component[riskDrivers][6].referenceRange.high.value = 1.0
* component[riskDrivers][6].referenceRange.text = "Rheumatoid Arthritis Range"
* component[riskDrivers][6].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][6].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][7].id = "CreatinineRiskDriver"
* component[riskDrivers][7].valueQuantity.value = 0.9
* component[riskDrivers][7].code = RDSRD#CRE  "Creatinine"
* component[riskDrivers][7].interpretation = RDSRDI#increase
* component[riskDrivers][7].referenceRange.low.value = 0.0
* component[riskDrivers][7].referenceRange.high.value = 1.0
* component[riskDrivers][7].referenceRange.text = "Creatinine Range"
* component[riskDrivers][7].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][7].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][8].id = "PotassiumRiskDriver"
* component[riskDrivers][8].valueQuantity.value = 0.1
* component[riskDrivers][8].code = RDSRD#K "Potassium"
* component[riskDrivers][8].interpretation = RDSRDI#increase
* component[riskDrivers][8].referenceRange.low.value = 0
* component[riskDrivers][8].referenceRange.high.value = 1
* component[riskDrivers][8].referenceRange.text = "Potassium Range"
* component[riskDrivers][8].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][8].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][9].id = "ANCRiskDriver"
* component[riskDrivers][9].valueQuantity.value = 0.7
* component[riskDrivers][9].code = RDSRD#ANC  "Absolute Neutrophil Count (ANC)"
* component[riskDrivers][9].interpretation = RDSRDI#increase
* component[riskDrivers][9].referenceRange.low.value = 0.0
* component[riskDrivers][9].referenceRange.high.value = 1.0
* component[riskDrivers][9].referenceRange.text = "ANC Range"
* component[riskDrivers][9].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][9].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[patientComparisons][0].id = "AgePatientComparison"
* component[patientComparisons][0].code = RDSRD#AGE  "Age"
* component[patientComparisons][0].valueQuantity.value = 45
* component[patientComparisons][0].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][1].id = "PerformanceStatusPatientComparison"
* component[patientComparisons][1].code = RDSRD#WL "Weight Loss"
* component[patientComparisons][1].valueQuantity.value = 10
* component[patientComparisons][1].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][2].id = "StageAndTNMPatientComparison"
* component[patientComparisons][2].code = RDSRD#TSP "T Stage (Pathologic)"
* component[patientComparisons][2].valueQuantity.value = 40
* component[patientComparisons][2].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][3].id = "PriorOrCurrentTreatmentsPatientComparison"
* component[patientComparisons][3].code = RDSRD#ET "Endocrine Therapy"
* component[patientComparisons][3].valueQuantity.value = 20
* component[patientComparisons][3].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][4].id = "ActiveMedicationPatientComparison"
* component[patientComparisons][4].code = RDSRD#MTC "Medication Treatment Cycle"
* component[patientComparisons][4].valueQuantity.value = 90
* component[patientComparisons][4].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][5].id = "CCIPatientComparison"
* component[patientComparisons][5].code = RDSRD#LD "Liver Disease"
* component[patientComparisons][5].valueQuantity.value = 15
* component[patientComparisons][5].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][6].id = "OverallPatientComparison"
* component[patientComparisons][6].code = RDSPC#OC  "Overall Comparison"
* component[patientComparisons][6].valueQuantity.value = 86.2
* component[patientComparisons][6].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[labs].id = "Labs"
* component[labs].extension[componentType].valueCodeableConcept = ROBSCT#Labs  "Labs Component"
* component[labs].code.coding[0] = RDSLAB#941594ea-7ae6-11ec-ba14-00163e0e3b1e  "HGB"
* component[labs].code.coding[0].version = "2"
* component[labs].code.coding[0].extension[rank].valueQuantity.value = 0.90

* component[labs].code.coding[1] = RDSLAB#c3a3afda-6d99-11ec-a98d-00163efae4c9  "Direct Bilirubin"
* component[labs].code.coding[1].version = "1"
* component[labs].code.coding[1].extension[rank].valueQuantity.value = 0.60

* component[labs].code.coding[2] = RDSLAB#91da35be-7ae6-11ec-ba14-00163e0e3b1e  "Glucose"
* component[labs].code.coding[2].version = "2"
* component[labs].code.coding[2].extension[rank].valueQuantity.value = 0.30

* component[symptoms].id = "Symptoms"
* component[symptoms].extension[componentType].valueCodeableConcept = ROBSCT#Symptoms  "Symptoms Component"
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
* component[riskDrivers][0].code = RDSRD#AGE  "Age"
* component[riskDrivers][0].interpretation = RDSRDI#decrease
* component[riskDrivers][0].referenceRange.low.value = 0.0
* component[riskDrivers][0].referenceRange.high.value = 1.0
* component[riskDrivers][0].referenceRange.text = "Age Range"
* component[riskDrivers][0].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"
* component[riskDrivers][0].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][1].id = "MaritalStatusRiskDriver"
* component[riskDrivers][1].valueQuantity.value = 0.19
* component[riskDrivers][1].code = RDSRD#MS  "Marital Status"
* component[riskDrivers][1].interpretation = RDSRDI#increase
* component[riskDrivers][1].referenceRange.low.value = 0.0
* component[riskDrivers][1].referenceRange.high.value = 1.0
* component[riskDrivers][1].referenceRange.text = "Marital Status Range"
* component[riskDrivers][1].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"
* component[riskDrivers][1].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][2].id = "ImmunosuppressantRiskDriver"
* component[riskDrivers][2].valueQuantity.value = 0.42
* component[riskDrivers][2].code = RDSRD#ISP  "Immunosuppressants"
* component[riskDrivers][2].interpretation = RDSRDI#increase
* component[riskDrivers][2].referenceRange.low.value = 0.0
* component[riskDrivers][2].referenceRange.high.value = 1.0
* component[riskDrivers][2].referenceRange.text = "Immunosuppressants Range"
* component[riskDrivers][2].extension[category].valueCodeableConcept = RDSRDC#Medications "Medications"
* component[riskDrivers][2].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][3].id = "TSPRiskDriver"
* component[riskDrivers][3].valueQuantity.value = 0.14
* component[riskDrivers][3].code = RDSRD#TSP  "T Stage (Pathologic)"
* component[riskDrivers][3].interpretation = RDSRDI#decrease
* component[riskDrivers][3].referenceRange.low.value = 0.0
* component[riskDrivers][3].referenceRange.high.value = 1.0
* component[riskDrivers][3].referenceRange.text = "T Stage (Pathologic) Range"
* component[riskDrivers][3].extension[category].valueCodeableConcept = RDSRDC#DSRF "Disease-specific Risk Factors"
* component[riskDrivers][3].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][4].id = "DiabetesRiskDriver"
* component[riskDrivers][4].valueQuantity.value = 0.69
* component[riskDrivers][4].code = RDSRD#DIA-C "Diabetes (Complicated)"
* component[riskDrivers][4].interpretation = RDSRDI#increase
* component[riskDrivers][4].referenceRange.low.value = 0.0
* component[riskDrivers][4].referenceRange.high.value = 1.0
* component[riskDrivers][4].referenceRange.text = "Diabetes (Complicated) Range"
* component[riskDrivers][4].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][4].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][5].id = "HypertensionRiskDriver"
* component[riskDrivers][5].valueQuantity.value = 0.4
* component[riskDrivers][5].code = RDSRD#HYP "Hypertension"
* component[riskDrivers][5].interpretation = RDSRDI#increase
* component[riskDrivers][5].referenceRange.low.value = 0.0
* component[riskDrivers][5].referenceRange.high.value = 1.0
* component[riskDrivers][5].referenceRange.text = "Hypertension Range"
* component[riskDrivers][5].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][5].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][6].id = "RheumatoidArthritisRiskDriver"
* component[riskDrivers][6].valueQuantity.value = 0.9
* component[riskDrivers][6].code = RDSRD#RA "Rheumatoid Arthritis"
* component[riskDrivers][6].interpretation = RDSRDI#increase
* component[riskDrivers][6].referenceRange.low.value = 0
* component[riskDrivers][6].referenceRange.high.value = 1.0
* component[riskDrivers][6].referenceRange.text = "Rheumatoid Arthritis Range"
* component[riskDrivers][6].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][6].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][7].id = "CreatinineRiskDriver"
* component[riskDrivers][7].valueQuantity.value = 0.4
* component[riskDrivers][7].code = RDSRD#CRE  "Creatinine"
* component[riskDrivers][7].interpretation = RDSRDI#increase
* component[riskDrivers][7].referenceRange.low.value = 0.0
* component[riskDrivers][7].referenceRange.high.value = 1
* component[riskDrivers][7].referenceRange.text = "Creatinine Range"
* component[riskDrivers][7].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][7].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][8].id = "PotassiumRiskDriver"
* component[riskDrivers][8].valueQuantity.value = 0.2
* component[riskDrivers][8].code = RDSRD#K "Potassium"
* component[riskDrivers][8].interpretation = RDSRDI#increase
* component[riskDrivers][8].referenceRange.low.value = 0
* component[riskDrivers][8].referenceRange.high.value = 1
* component[riskDrivers][8].referenceRange.text = "Potassium Range"
* component[riskDrivers][8].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][8].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][9].id = "ANCRiskDriver"
* component[riskDrivers][9].valueQuantity.value = 0.5
* component[riskDrivers][9].code = RDSRD#ANC  "Absolute Neutrophil Count (ANC)"
* component[riskDrivers][9].interpretation = RDSRDI#increase
* component[riskDrivers][9].referenceRange.low.value = 0.0
* component[riskDrivers][9].referenceRange.high.value = 1.0
* component[riskDrivers][9].referenceRange.text = "ANC Range"
* component[riskDrivers][9].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][9].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][10].id = "TBNMissingRiskDriver"
* component[riskDrivers][10].valueQuantity.value = 0.99
* component[riskDrivers][10].code = RDSRD#TBN-M  "Total Bilirubin Missing"
* component[riskDrivers][10].interpretation = RDSRDI#increase
* component[riskDrivers][10].referenceRange.low.value = 0.0
* component[riskDrivers][10].referenceRange.high.value = 1.0
* component[riskDrivers][10].referenceRange.text = "TBN-M Range"
* component[riskDrivers][10].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][10].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][11].id = "CO2RiskDriver"
* component[riskDrivers][11].valueQuantity.value = 0.195
* component[riskDrivers][11].code = RDSRD#CO2 "CO2"
* component[riskDrivers][11].interpretation = RDSRDI#decrease
* component[riskDrivers][11].referenceRange.low.value = 0.0
* component[riskDrivers][11].referenceRange.high.value = 1.0
* component[riskDrivers][11].referenceRange.text = "CO2 Range"
* component[riskDrivers][11].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][11].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][12].id = "DBNRiskDriver"
* component[riskDrivers][12].valueQuantity.value = 0.733
* component[riskDrivers][12].code = RDSRD#DBN "Direct Bilirubin"
* component[riskDrivers][12].interpretation = RDSRDI#increase
* component[riskDrivers][12].referenceRange.low.value = 0.0
* component[riskDrivers][12].referenceRange.high.value = 1.0
* component[riskDrivers][12].referenceRange.text = "DBN Range"
* component[riskDrivers][12].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][12].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][13].id = "BMIRiskDriver"
* component[riskDrivers][13].valueQuantity.value = 0.75
* component[riskDrivers][13].code = RDSRD#BMI "BMI"
* component[riskDrivers][13].interpretation = RDSRDI#decrease
* component[riskDrivers][13].referenceRange.low.value = 0.0
* component[riskDrivers][13].referenceRange.high.value = 1.0
* component[riskDrivers][13].referenceRange.text = "BMI Range"
* component[riskDrivers][13].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"
* component[riskDrivers][13].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"


* component[patientComparisons][0].id = "AgePatientComparison"
* component[patientComparisons][0].code = RDSRD#AGE  "Age"
* component[patientComparisons][0].valueQuantity.value = 10
* component[patientComparisons][0].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][1].id = "PerformanceStatusPatientComparison"
* component[patientComparisons][1].code = RDSRD#PC "Platelet Count"
* component[patientComparisons][1].valueQuantity.value = 100
* component[patientComparisons][1].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][2].id = "StageAndTNMPatientComparison"
* component[patientComparisons][2].code = RDSRD#NSP "N Stage (Pathologic)"
* component[patientComparisons][2].valueQuantity.value = 29
* component[patientComparisons][2].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][3].id = "PriorOrCurrentTreatmentsPatientComparison"
* component[patientComparisons][3].code = RDSRD#MTC "Medication Treatment Cycle"
* component[patientComparisons][3].valueQuantity.value = 23
* component[patientComparisons][3].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][4].id = "ActiveMedicationPatientComparison"
* component[patientComparisons][4].code = RDSRD#CAR "Cytotoxic Antibiotics and Related"
* component[patientComparisons][4].valueQuantity.value = 44
* component[patientComparisons][4].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][5].id = "CCIPatientComparison"
* component[patientComparisons][5].code = RDSRD#LD "Liver Disease"
* component[patientComparisons][5].valueQuantity.value = 12
* component[patientComparisons][5].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][6].id = "OverallPatientComparison"
* component[patientComparisons][6].code = RDSPC#OC  "Overall Comparison"
* component[patientComparisons][6].valueQuantity.value = 64
* component[patientComparisons][6].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[labs].id = "Labs"
* component[labs].extension[componentType].valueCodeableConcept = ROBSCT#Labs  "Labs Component"
* component[labs].code.coding[0] = RDSLAB#94741934-7ae6-11ec-ba14-00163e0e3b1e  "LDH"
* component[labs].code.coding[0].version = "2"
* component[labs].code.coding[0].extension[rank].valueQuantity.value = 0.20

* component[labs].code.coding[1] = RDSLAB#91b0399e-7ae6-11ec-ba14-00163e0e3b1e  "CA27.29"
* component[labs].code.coding[1].version = "2"
* component[labs].code.coding[1].extension[rank].valueQuantity.value = 0.30

* component[labs].code.coding[2] = RDSLAB#92fd4472-7ae6-11ec-ba14-00163e0e3b1e  "Beta HCG"
* component[labs].code.coding[2].version = "2"
* component[labs].code.coding[2].extension[rank].valueQuantity.value = 0.50

* component[labs].code.coding[3] = RDSLAB#932c0f5a-7ae6-11ec-ba14-00163e0e3b1e  "BUN"
* component[labs].code.coding[3].version = "2"
* component[labs].code.coding[3].extension[rank].valueQuantity.value = 0.45

* component[symptoms].id = "Symptoms"
* component[symptoms].extension[componentType].valueCodeableConcept = ROBSCT#Symptoms  "Symptoms Component"
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
* component[riskDrivers][0].code = RDSRD#AGE  "Age"
* component[riskDrivers][0].interpretation = RDSRDI#increase
* component[riskDrivers][0].referenceRange.low.value = 0.0
* component[riskDrivers][0].referenceRange.high.value = 1.0
* component[riskDrivers][0].referenceRange.text = "Age Range"
* component[riskDrivers][0].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"
* component[riskDrivers][0].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][1].id = "MaritalStatusRiskDriver"
* component[riskDrivers][1].valueQuantity.value = 0.1
* component[riskDrivers][1].code = RDSRD#MS  "Marital Status"
* component[riskDrivers][1].interpretation = RDSRDI#increase
* component[riskDrivers][1].referenceRange.low.value = 0.0
* component[riskDrivers][1].referenceRange.high.value = 1.0
* component[riskDrivers][1].referenceRange.text = "Marital Status Range"
* component[riskDrivers][1].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"
* component[riskDrivers][1].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][2].id = "ImmunosuppressantRiskDriver"
* component[riskDrivers][2].valueQuantity.value = 0.45
* component[riskDrivers][2].code = RDSRD#ISP  "Immunosuppressants"
* component[riskDrivers][2].interpretation = RDSRDI#increase
* component[riskDrivers][2].referenceRange.low.value = 0.0
* component[riskDrivers][2].referenceRange.high.value = 1.0
* component[riskDrivers][2].referenceRange.text = "Immunosuppressants Range"
* component[riskDrivers][2].extension[category].valueCodeableConcept = RDSRDC#Medications "Medications"
* component[riskDrivers][2].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][3].id = "TSP-1RiskDriver"
* component[riskDrivers][3].valueQuantity.value = 0.1
* component[riskDrivers][3].code = RDSRD#TSP  "T Stage (Pathologic)"
* component[riskDrivers][3].interpretation = RDSRDI#decrease
* component[riskDrivers][3].referenceRange.low.value = 0.0
* component[riskDrivers][3].referenceRange.high.value = 1.0
* component[riskDrivers][3].referenceRange.text = "T Stage (Pathologic) Range"
* component[riskDrivers][3].extension[category].valueCodeableConcept = RDSRDC#DSRF "Disease-specific Risk Factors"
* component[riskDrivers][3].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][4].id = "DiabetesRiskDriver"
* component[riskDrivers][4].valueQuantity.value = 0.6
* component[riskDrivers][4].code = RDSRD#DIA-C "Diabetes (Complicated)"
* component[riskDrivers][4].interpretation = RDSRDI#increase
* component[riskDrivers][4].referenceRange.low.value = 0.0
* component[riskDrivers][4].referenceRange.high.value = 1.0
* component[riskDrivers][4].referenceRange.text = "Diabetes (Complicated) Range"
* component[riskDrivers][4].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][4].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][5].id = "HypertensionRiskDriver"
* component[riskDrivers][5].valueQuantity.value = 0.45
* component[riskDrivers][5].code = RDSRD#HYP "Hypertension"
* component[riskDrivers][5].interpretation = RDSRDI#increase
* component[riskDrivers][5].referenceRange.low.value = 0.0
* component[riskDrivers][5].referenceRange.high.value = 1.0
* component[riskDrivers][5].referenceRange.text = "Hypertension Range"
* component[riskDrivers][5].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][5].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][6].id = "RheumatoidArthritisRiskDriver"
* component[riskDrivers][6].valueQuantity.value = 0.35
* component[riskDrivers][6].code = RDSRD#RA "Rheumatoid Arthritis"
* component[riskDrivers][6].interpretation = RDSRDI#increase
* component[riskDrivers][6].referenceRange.low.value = 0.1
* component[riskDrivers][6].referenceRange.high.value = 0.7
* component[riskDrivers][6].referenceRange.text = "Rheumatoid Arthritis Range"
* component[riskDrivers][6].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][6].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][7].id = "CreatinineRiskDriver"
* component[riskDrivers][7].valueQuantity.value = 0.08
* component[riskDrivers][7].code = RDSRD#CRE  "Creatinine"
* component[riskDrivers][7].interpretation = RDSRDI#increase
* component[riskDrivers][7].referenceRange.low.value = 0.0
* component[riskDrivers][7].referenceRange.high.value = 0.1
* component[riskDrivers][7].referenceRange.text = "Creatinine Range"
* component[riskDrivers][7].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][7].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][8].id = "PotassiumRiskDriver"
* component[riskDrivers][8].valueQuantity.value = 0.7
* component[riskDrivers][8].code = RDSRD#K "Potassium"
* component[riskDrivers][8].interpretation = RDSRDI#increase
* component[riskDrivers][8].referenceRange.low.value = 0
* component[riskDrivers][8].referenceRange.high.value = 1
* component[riskDrivers][8].referenceRange.text = "Potassium Range"
* component[riskDrivers][8].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][8].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][9].id = "ANCRiskDriver"
* component[riskDrivers][9].valueQuantity.value = 0.5
* component[riskDrivers][9].code = RDSRD#ANC  "Absolute Neutrophil Count (ANC)"
* component[riskDrivers][9].interpretation = RDSRDI#increase
* component[riskDrivers][9].referenceRange.low.value = 0.0
* component[riskDrivers][9].referenceRange.high.value = 1.0
* component[riskDrivers][9].referenceRange.text = "ANC Range"
* component[riskDrivers][9].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][9].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][10].id = "LDHMissingRiskDriver"
* component[riskDrivers][10].valueQuantity.value = 0.5
* component[riskDrivers][10].code = RDSRD#LDH-M  "LDH Missing"
* component[riskDrivers][10].interpretation = RDSRDI#decrease
* component[riskDrivers][10].referenceRange.low.value = 0.0
* component[riskDrivers][10].referenceRange.high.value = 1.0
* component[riskDrivers][10].referenceRange.text = "LDH Missing Range"
* component[riskDrivers][10].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][10].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][11].id = "HGBMissingRiskDriver"
* component[riskDrivers][11].valueQuantity.value = 0.7
* component[riskDrivers][11].code = RDSRD#HGB-M "Hemoglobin (HGB) Missing"
* component[riskDrivers][11].interpretation = RDSRDI#increase
* component[riskDrivers][11].referenceRange.low.value = 0.0
* component[riskDrivers][11].referenceRange.high.value = 1.0
* component[riskDrivers][11].referenceRange.text = "ANC Range"
* component[riskDrivers][11].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][11].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][12].id = "GlucoseRiskDriver"
* component[riskDrivers][12].valueQuantity.value = 0.8
* component[riskDrivers][12].code = RDSRD#GLU  "Glucose"
* component[riskDrivers][12].interpretation = RDSRDI#decrease
* component[riskDrivers][12].referenceRange.low.value = 0.0
* component[riskDrivers][12].referenceRange.high.value = 1.0
* component[riskDrivers][12].referenceRange.text = "ANC Range"
* component[riskDrivers][12].extension[category].valueCodeableConcept = RDSRDC#LR "Lab Results"
* component[riskDrivers][12].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[patientComparisons][0].id = "AgePatientComparison"
* component[patientComparisons][0].code = RDSRD#AGE  "Age"
* component[patientComparisons][0].valueQuantity.value = 4
* component[patientComparisons][0].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][1].id = "PerformanceStatusPatientComparison"
* component[patientComparisons][1].code = RDSRD#OBE "Obesity"
* component[patientComparisons][1].valueQuantity.value = 20
* component[patientComparisons][1].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][2].id = "StageAndTNMPatientComparison"
* component[patientComparisons][2].code = RDSRD#MSP "M Stage (Pathologic)"
* component[patientComparisons][2].valueQuantity.value = 60
* component[patientComparisons][2].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][3].id = "PriorOrCurrentTreatmentsPatientComparison"
* component[patientComparisons][3].code = RDSRD#FED "Fluid-Electrolyte Disorder"
* component[patientComparisons][3].valueQuantity.value = 50
* component[patientComparisons][3].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][4].id = "ActiveMedicationPatientComparison"
* component[patientComparisons][4].code = RDSRD#CAR "Cytotoxic Antibiotics and Related"
* component[patientComparisons][4].valueQuantity.value = 90
* component[patientComparisons][4].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][5].id = "CCIPatientComparison"
* component[patientComparisons][5].code = RDSRD#DIA-C "Diabetes (Complicated)"
* component[patientComparisons][5].valueQuantity.value = 100
* component[patientComparisons][5].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][6].id = "OverallPatientComparison"
* component[patientComparisons][6].code = RDSPC#OC  "Overall Comparison"
* component[patientComparisons][6].valueQuantity.value = 92.0
* component[patientComparisons][6].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[labs].id = "Labs"
* component[labs].extension[componentType].valueCodeableConcept = ROBSCT#Labs  "Labs Component"
* component[labs].code.coding[0] = RDSLAB#95f1088a-7ae6-11ec-ba14-00163e0e3b1e  "Sodium"
* component[labs].code.coding[0].version = "2"
* component[labs].code.coding[0].extension[rank].valueQuantity.value = 0.50

* component[labs].code.coding[1] = RDSLAB#bce71d44-6d99-11ec-a98d-00163efae4c9  "AFP"
* component[labs].code.coding[1].version = "1"
* component[labs].code.coding[1].extension[rank].valueQuantity.value = 0.70

* component[labs].code.coding[2] = RDSLAB#923a8e78-7ae6-11ec-ba14-00163e0e3b1e  "Alkaline Phosphatase"
* component[labs].code.coding[2].version = "2"
* component[labs].code.coding[2].extension[rank].valueQuantity.value = 0.30

* component[labs].code.coding[3] = RDSLAB#95016654-7ae6-11ec-ba14-00163e0e3b1e  "Potassium"
* component[labs].code.coding[3].version = "2"
* component[labs].code.coding[3].extension[rank].valueQuantity.value = 0.90

* component[symptoms].id = "Symptoms"
* component[symptoms].extension[componentType].valueCodeableConcept = ROBSCT#Symptoms  "Symptoms Component"
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
* component[riskDrivers][0].code = RDSRD#AGE  "Age"
* component[riskDrivers][0].interpretation = RDSRDI#increase
* component[riskDrivers][0].referenceRange.low.value = 0.0
* component[riskDrivers][0].referenceRange.high.value = 1.0
* component[riskDrivers][0].referenceRange.text = "Age Range"
* component[riskDrivers][0].extension[category].valueCodeableConcept = RDSRDC#Demographics "Demographics"
* component[riskDrivers][0].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][1].id = "ImmunosuppressantRiskDriver"
* component[riskDrivers][1].valueQuantity.value = 0.67
* component[riskDrivers][1].code = RDSRD#ISP  "Immunosuppressants"
* component[riskDrivers][1].interpretation = RDSRDI#increase
* component[riskDrivers][1].referenceRange.low.value = 0.0
* component[riskDrivers][1].referenceRange.high.value = 1.0
* component[riskDrivers][1].referenceRange.text = "Immunosuppressants Range"
* component[riskDrivers][1].extension[category].valueCodeableConcept = RDSRDC#Medications "Medications"
* component[riskDrivers][1].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][2].id = "DiabetesRiskDriver"
* component[riskDrivers][2].valueQuantity.value = 0.55
* component[riskDrivers][2].code = RDSRD#DIA-C "Diabetes (Complicated)"
* component[riskDrivers][2].interpretation = RDSRDI#increase
* component[riskDrivers][2].referenceRange.low.value = 0.0
* component[riskDrivers][2].referenceRange.high.value = 1.0
* component[riskDrivers][2].referenceRange.text = "Diabetes (Complicated) Range"
* component[riskDrivers][2].extension[category].valueCodeableConcept = RDSRDC#CAP "Comorbidities and Acute Problems"
* component[riskDrivers][2].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][3].id = "CreatinineMissingRiskDriver"
* component[riskDrivers][3].valueQuantity.value = 0.12
* component[riskDrivers][3].code = RDSRD#CRE-M  "Creatinine Missing"
* component[riskDrivers][3].interpretation = RDSRDI#increase
* component[riskDrivers][3].referenceRange.low.value = 0.0
* component[riskDrivers][3].referenceRange.high.value = 0.1
* component[riskDrivers][3].referenceRange.text = "Creatinine Range"
* component[riskDrivers][3].extension[category].valueCodeableConcept = RDSRDC#DSRF "Disease-specific Risk Factors"
* component[riskDrivers][3].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][4].id = "PotassiumRiskDriver"
* component[riskDrivers][4].valueQuantity.value = 0.35
* component[riskDrivers][4].code = RDSRD#K "Potassium"
* component[riskDrivers][4].interpretation = RDSRDI#increase
* component[riskDrivers][4].referenceRange.low.value = 0
* component[riskDrivers][4].referenceRange.high.value = 1
* component[riskDrivers][4].referenceRange.text = "Potassium Range"
* component[riskDrivers][4].extension[category].valueCodeableConcept = RDSRDC#DSRF "Disease-specific Risk Factors"
* component[riskDrivers][4].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[patientComparisons][0].id = "AgePatientComparison"
* component[patientComparisons][0].code = RDSRD#AGE  "Age"
* component[patientComparisons][0].valueQuantity.value = 85
* component[patientComparisons][0].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][1].id = "PerformanceStatusPatientComparison"
* component[patientComparisons][1].code = RDSRD#FED "Fluid-Electrolyte Disorder"
* component[patientComparisons][1].valueQuantity.value = 32
* component[patientComparisons][1].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][2].id = "StageAndTNMPatientComparison"
* component[patientComparisons][2].code = RDSRD#MSP "M Stage (Pathologic)"
* component[patientComparisons][2].valueQuantity.value = 53
* component[patientComparisons][2].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][3].id = "OverallPatientComparison"
* component[patientComparisons][3].code = RDSPC#OC  "Overall Comparison"
* component[patientComparisons][3].valueQuantity.value = 45.5
* component[patientComparisons][3].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[labs].id = "Labs"
* component[labs].extension[componentType].valueCodeableConcept = ROBSCT#Labs  "Labs Component"
* component[labs].code.coding[0] = RDSLAB#9299bd8a-7ae6-11ec-ba14-00163e0e3b1e "Amylase"
* component[labs].code.coding[0].version = "2"
* component[labs].code.coding[0].extension[rank].valueQuantity.value = 0.90

* component[labs].code.coding[1] = RDSLAB#93895b6a-7ae6-11ec-ba14-00163e0e3b1e "CA15.3"
* component[labs].code.coding[1].version = "2"
* component[labs].code.coding[1].extension[rank].valueQuantity.value = 0.30

* component[symptoms].id = "Symptoms"
* component[symptoms].extension[componentType].valueCodeableConcept = ROBSCT#Symptoms  "Symptoms Component"
* component[symptoms].code.coding[0] = RDSSYMPTOM#Fever "Fever"
* component[symptoms].code.coding[0].extension[eventDate].valueDate = "2021-10-31"

* component[symptoms].code.coding[1] = RDSSYMPTOM#Nausea-vomiting "Nausea/Vomiting"
* component[symptoms].code.coding[1].extension[eventDate].valueDate = "2021-11-20"

* component[symptoms].code.coding[2] = RDSSYMPTOM#Pain "Pain"
* component[symptoms].code.coding[2].extension[eventDate].valueDate = "2018-08-12"


Instance: OncologyObservation01Test
InstanceOf: OncologyObservation
Description: "Oncology Observation 01 Test WBC (Bld) [#/Vol]"
* id = "OncologyObservation01Test"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#26464-8 "Leukocytes [#/volume] in Blood"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-10-12T22:09:16.509423Z"
* issued = "2021-10-13T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#6690-2  "Leukocytes [#/volume] in Blood by Automated count"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-11-13T22:09:16.509423Z"
* issued = "2021-11-13T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#49498-9 "Leukocytes [#/volume] in Blood by Estimate"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-14T22:09:16.509423Z"
* issued = "2021-12-15T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#804-5 "Leukocytes [#/volume] in Blood by Manual count"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-11-15T22:09:16.509423Z"
* issued = "2021-11-16T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#2947-0 "Sodium [Moles/Volume] in Blood"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-16T22:09:16.509423Z"
* issued = "2021-12-16T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#2947-0 "Sodium [Moles/Volume] in Blood"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-17T22:09:16.509423Z"
* issued = "2021-12-17T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#6875-9 "Cancer Ag 15-3 [Units/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-11-18T22:09:16.509423Z"
* issued = "2021-11-19T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#24333-7 "Amylase isoenzyme 3 panel - Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-10-19T22:09:16.509423Z"
* issued = "2021-10-20T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#14589-6 "Amylase isoenzymes [Interpretation] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2022-01-20T22:09:16.509423Z"
* issued = "2022-01-21T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#15020-1 "Amylase.P1/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-22T22:09:16.509423Z"
* issued = "2021-12-22T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#15021-9 "Amylase.P2/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-11-23T22:09:16.509423Z"
* issued = "2021-11-27T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#15022-7 "Amylase.P3/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-24T22:09:16.509423Z"
* issued = "2021-12-24T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#15023-5 "Amylase S1/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2022-02-25T22:09:16.509423Z"
* issued = "2022-01-30T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#15024-3 "Amylase S2/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-26T22:09:16.509423Z"
* issued = "2021-12-29T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#15025-0 "Amylase S3/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2022-02-26T22:09:16.509423Z"
* issued = "2022-02-28T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1798-8  "Amylase [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-26T22:09:16.509423Z"
* issued = "2021-12-26T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1802-8  "Amylase.P1 [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-11-27T22:09:16.509423Z"
* issued = "2021-11-27T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1803-6  "Amylase.P2 [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-28T22:09:16.509423Z"
* issued = "2021-12-28T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1804-4  "Amylase.P3 [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-29T22:09:16.509423Z"
* issued = "2021-12-30T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1805-1  "Amylase.pancreatic [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-29T22:09:16.509423Z"
* issued = "2021-12-30T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1806-9  "Amylase S1 [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-11-29T22:09:16.509423Z"
* issued = "2021-11-29T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1807-7  "Amylase S2 [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2022-01-28T22:09:16.509423Z"
* issued = "2022-01-29T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1808-5  "Amylase S3 [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2022-02-27T22:09:16.509423Z"
* issued = "2022-02-28T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1809-3  "Amylase.salivary [Enzymatic activity/volume] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2022-01-30T22:09:16.509423Z"
* issued = "2022-01-30T22:10:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#25312-0 "Amylase.pancreatic/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-30T22:09:16.509423Z"
* issued = "2021-12-30T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#25313-8 "Amylase.salivary/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-11-15T22:09:16.509423Z"
* issued = "2021-11-25T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#26011-7 "Macroamylase/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-10-16T22:09:16.509423Z"
* issued = "2021-10-20T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#49251-2 "Amylase isoenzymes [Interpretation] in Serum or Plasma Narrative"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-05T22:09:16.509423Z"
* issued = "2021-12-02T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#54472-6 "Amylase.macromolecular/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2022-01-10T22:09:16.509423Z"
* issued = "2022-01-11T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#56776-8 "Amylase S3+S4/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2022-01-12T22:09:16.509423Z"
* issued = "2022-01-20T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#56782-6 "Amylase S4/Amylase.total in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-11-13T22:09:16.509423Z"
* issued = "2021-11-15T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#72272-8 "Amylase and triacylglycerol lipase panel - Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-13T22:09:16.509423Z"
* issued = "2021-12-13T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#72571-3 "Amylase.pancreatic/Amylase.total [Pure catalytic fraction] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-11-13T22:09:16.509423Z"
* issued = "2021-11-14T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#72572-1 "Amylase.salivary/Amylase.total [Pure catalytic fraction] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-10-01T22:09:16.509423Z"
* issued = "2021-10-15T22:09:30.00Z"
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
* identifier[tenantId].value = "PEENG"
* subject = Reference(Patient/roninPatient01Test)
* subject.display = "John B. Bass"
* status = #final
* code = LNC|v2.70#1810-1  "Amylase/Creatinine [Mass Ratio] in Serum or Plasma"
* category = ObsCat#laboratory "Laboratory"
* performer = Reference(Practitioner/roninPEENGPractitioner01Test)
* effectiveDateTime = "2021-12-08T22:09:16.509423Z"
* issued = "2021-12-10T22:09:30.00Z"
* valueQuantity = 12 'U/L' "U/L"
* referenceRange.low = 30 'U/L' "U/L"
* referenceRange.high = 110 'U/L' "U/L"
* referenceRange.appliesTo = RefMeaning#treatment "Treatment Range"
* referenceRange.text = "30 - 110.0 U/L"
* interpretation = ObsInt#L "Low"
* interpretation.text = "Low"

Instance: roninEncounter01Test
InstanceOf: OncologyEncounter
Description: "Ronin Encounter Test 01"
* id = "roninEncounter01Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-encounter"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "PEENG"
* subject = Reference(roninPatient01Test)
* subject.display = "John B. Bass"
* reasonReference = Reference(OncologyObservation01Test)
* period.start = "2021-12-07T11:28:17.000Z"
* period.end = "2021-12-09T13:20:10.000Z"
* participant[0].individual = Reference(roninPEENGPractitioner01Test)
* participant[0].period.start = "2021-12-07T11:35:17.000Z"
* participant[0].period.end = "2021-12-07T12:00:10.000Z"
* participant[1].individual = Reference(roninPEENGPractitioner01Test)
* participant[1].period.start = "2021-12-08T13:28:17.000Z"
* participant[1].period.end = "2021-12-08T14:20:10.000Z"
* status = #finished
* class.code = #EMER
* class.display = "emergency"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type = SCT#4525004
* type.text = "Emergency department patient visit"

Instance: roninEncounter02Test
InstanceOf: OncologyEncounter
Description: "Ronin Encounter Test 02"
* id = "roninEncounter02Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-encounter"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* subject = Reference(roninPatient02Test)
* subject.display = "Wyatt A. Chad"
* period.start = "2019-02-07T11:10:17.000Z"
* period.end = "2019-02-07T15:20:10.000Z"
* participant.individual = Reference(roninMDAPractitioner02Test)
* participant.period.start = "2019-02-07T13:28:17.000Z"
* participant.period.end = "2019-02-07T14:20:10.000Z"
* status = #finished
* class.code = #ONC
* class.display = "Oncology"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type = SCT#24882007
* type.text = "Medical consultation on hospital inpatient"

Instance: roninEncounter03Test
InstanceOf: OncologyEncounter
Description: "Ronin Encounter Test 03"
* id = "roninEncounter03Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-encounter"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "mdaoc"
* appointment = Reference(roninOncologyPatientAppointment03Test)
* subject = Reference(roninPatient03Test)
* subject.display = "Vivaan B. Acostal"
* period.start = "2020-01-01T00:04:00.000Z"
* participant.individual = Reference(roninMDAPractitioner03Test)
* participant.period.start = "2020-01-01T00:05:00.000Z"
* participant.period.end = "2020-01-01T01:35:00.000Z"
* status = #in-progress
* class.code = #EMER
* class.display = "emergency"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type = SCT#4525004
* type.text = "Emergency department patient visit"

Instance: roninEncounter04Test
InstanceOf: OncologyEncounter
Description: "Ronin Encounter Test 04"
* id = "roninEncounter04Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-encounter"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* appointment = Reference(roninOncologyPatientAppointment04Test)
* subject = Reference(roninPatient04Test)
* subject.display = "Wilmatar Z. Oud"
* period.start = "2018-10-11T05:00:00.000Z"
* period.end = "2018-10-11T06:20:00.000Z"
* participant.individual = Reference(roninPSJPractitioner04Test)
* participant.period.start = "2018-10-11T05:30:00.000Z"
* participant.period.end = "2018-10-11T06:00:00.000Z"
* status = #finished
* class.code = #ONC
* class.display = "oncology"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type = SCT#185349003
* type.text = "Encounter for check up (procedure)"

Instance: roninEncounter05Test
InstanceOf: OncologyEncounter
Description: "Ronin Encounter Test 05"
* id = "roninEncounter05Test"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/oncology-encounter"
* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].type.text = "Tenant ID"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "psj"
* appointment = Reference(roninOncologyPatientAppointment05Test)
* subject = Reference(roninPatient05Test)
* subject.display = "Kane M. Random"
* period.start = "2021-09-03T04:30:00.000Z"
* period.end = "2021-09-03T06:20:00.000Z"
* participant[0].individual = Reference(roninPSJPractitioner05Test)
* participant[0].period.start = "2021-09-03T04:35:00.000Z"
* participant[0].period.end = "2021-09-03T04:55:00.000Z"
* participant[1].individual = Reference(roninPSJPractitioner05Test)
* participant[1].period.start = "2021-09-03T05:30:00.000Z"
* participant[1].period.end = "2021-09-03T06:10:00.000Z"
* status = #finished
* class.code = #MED
* class.display = "Medical"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type = SCT#185348006
* type.text = "Encounter for fear"