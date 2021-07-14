/*
OncologyDocumentReference is a resource that models the note details for an oncology patient.
HIGHLY EXPERIMENTAL and IN DIRE NEED OF EXTENSIONS
REVISIT - MAYBE we should use USCoreDiagnosticReport since it is for report and note exchange.
*/
Profile: OncologyDocumentReference
Parent: USCoreDocumentReference
Id: oncology-document-reference
Title: "Oncology Document Reference"
Description: "A DocumentReference resource that is used to model note details for oncology patients"

* ^status = #draft
* ^experimental = true
* identifier 1..* MS
//Slice identifier to ensure tenantId identifier is present.
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains
    tenantId 1..1

* identifier[tenantId].system = "http://projectronin.com/id/tenantId"

* status MS
//lastEditTime	N/A
//date MS //creationTime
//context MS
//context.period.start MS //dateOfService
//isSensitive	N/A
//subject.identifier MS //mrn
//content MS
//content.attachment.url MS //noteID.id
//content.attachment.contentType MS //noteID.type
//noteContactID.id
//noteContactID.type
* subject only Reference(OncologyPatient)
* subject.identifier MS //mrn and patientID.id
* subject.type MS //patientID.type	
* custodian MS //contactID.id
* custodian.type MS //contactID.type
//* type MS
* type.coding.display MS //type.abbreviation
* type.text MS //type.title
* type.coding.code MS 
//type.value	
* context.related MS //service.abbreviation service.title service.value	
//* author MS

// authorType.abbreviation	Create a new resource
// authorType.title	author.reference
// authorType.value	
// author.id	
// author.extId	
// author.name	
// author.displayName	
// author.ini	
// author.recordLastUpdatedOn	

* extension contains 
    DeletionStatus named isDeleted 0..1 MS and
    DeletionUser named deletionUser 0..1 MS and
    DeletionDate named deletionDate 0..1 MS and
    LastEditorId named lastEditorId 0..1 MS and
    LastEditorExtId named lastEditorExtId 0..1 MS and
    LastEditorName named lastEditorName 0..1 MS and
    LastEditorDisplayName named lastEditorDisplayName 0..1 MS and
    LastEditorIni named lastEditorIni 0..1 MS and
    LastEditorUpdate named lastEditorUpdate 0..1 MS and
    CosignRequirementAbbreviation named cosignRequirementAbbreviation 0..1 MS and
    CosignRequirementTitle named cosignRequirementTitle 0..1 MS and
    CosignRequirementName named cosignRequirementName 0..1 MS and
    CosignerName named cosignerName 0..1 MS and
    CosignDateTime named cosignDateTime 0..1 MS


Extension: DeletionStatus
Id: isDeleted
Title: "Status of deletion"
Description: "Document Reference Deletion Status"
* value[x] only boolean

Extension: DeletionUser
Id: deletionUser
Title: "User who deleted the document"
Description: "Document Reference Deletion User"
* value[x] only string

Extension: DeletionDate
Id: deletionDate
Title: "Date of document deletion"
Description: "Document Reference Deletion Date"
* value[x] only date

Extension: LastEditorId
Id: lastEditorId
Title: "Last Editor ID"
Description: "Last Editor ID"
* value[x] only string

Extension: LastEditorExtId
Id: lastEditorExtId
Title: "Last Editor ExtID"
Description: "Last Editor ExtID"
* value[x] only string

Extension: LastEditorName
Id: lastEditorName
Title: "Last Editor Name"
Description: "Last Editor Name"
* value[x] only string

Extension: LastEditorDisplayName
Id: lastEditorDisplayName
Title: "Last Editor Display Name"
Description: "Last Editor Display Name"
* value[x] only string

Extension: LastEditorIni
Id: lastEditorIni
Title: "Last Editor Ini"
Description: "Last Editor Ini"
* value[x] only string

Extension: LastEditorUpdate
Id: lastEditorUpdate
Title: "Last Editor Update"
Description: "Last Editor Update"
* value[x] only dateTime


/*
Cosign Information
*/
Extension: CosignRequirementAbbreviation
Id: cosignRequirementAbbreviation
Title: "Cosign Requirement Abbreviation"
Description: "Cosign Requirement Abbreviation"
* value[x] only string

Extension: CosignRequirementTitle
Id: cosignRequirementTitle
Title: "Cosign Requirement Title"
Description: "Cosign Requirement Title"
* value[x] only string

Extension: CosignRequirementName
Id: cosignRequirementName
Title: "Cosign Requirement Name"
Description: "Cosign Requirement Name"
* value[x] only string

Extension: CosignerName
Id: cosignerName
Title: "Cosigner Name"
Description: "Cosign Requirement Cosigner Name"
* value[x] only string

Extension: CosignDateTime
Id: cosignDateTime
Title: "Cosign Time"
Description: "Cosign Requirement Time"
* value[x] only dateTime


/* Sample Document Reference*/
Instance:   ExampleDocumentReference
InstanceOf: OncologyDocumentReference
Description: "Example Document Reference"
//Must Support
* id = "documentReferenceExample1"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* status = #current
* date = "2015-02-07T13:28:17.239+02:00"
* context.id = "exampleContextId"
* type = LNC#11526-1 "Pathology study"
* category = DocCat#clinical-note "Clinical Note"
* subject = Reference(ExamplePatient)
* content.id = "exampleContentId"
* content.attachment.url = "http://example.com"
* content.attachment.contentType = #json
* extension[isDeleted].valueBoolean = true
* extension[deletionUser].valueString = "Tony"
* extension[deletionDate].valueDate = "2019-02-07"
* extension[deletionUser].valueString = "Tony"
* extension[lastEditorId].valueString = "123"
* extension[lastEditorExtId].valueString = "ABC"
* extension[lastEditorName].valueString = "Tony"
* extension[lastEditorDisplayName].valueString = "Tony T"
* extension[lastEditorIni].valueString = "No clue"
* extension[lastEditorUpdate].valueDateTime = "2019-02-07T13:28:17.000Z"
* extension[cosignRequirementAbbreviation].valueString = "ABC"
* extension[cosignRequirementName].valueString = "ABC XYZ"
* extension[cosignRequirementTitle].valueString = "Some title"
* extension[cosignDateTime].valueDateTime = "2019-02-07T13:28:17.000Z"
* extension[cosignerName].valueString = "Steve"

