/*
EDVisitRiskAssessment profile is a RiskAssessment modeled to meet Ronin's minimal requirements/constraints.
All other fields are automatically inherited from Parent: RiskAssessment
*/
Profile: EDVisitRiskAssessment
Parent: RiskAssessment
Id: ed-visit-risk-assessment
Title: "ED Visit Risk Assessment"
Description: "An assessment of the likely outcome(s) for a patient to visit ED and the likelihood of each outcome.
              The RiskAssessment has a basis pointing to an Observation that detail risk drivers and patient comparisons. 
              LOINC code(s) for a risk driver would be in the Observation.component.code. 
              The LOINC code(s) for a single component of the risk driver can be used to retrieve all
              Lab observation values within a date range for that patient to draw the graph.
              Follow the FHIR: RiskAssessment -> .basis-> Observation-> .component (RiskDrivers/PatientComparison) for each entry."
* ^status = #draft
* ^experimental = true

* identifier 1..* MS
//Slice identifier to ensure tenantId identifier is present.
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    tenantId 1..1 and
    mrn 0..1

* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].system = RTID //"http://projectronin.com/id/tenantId"
* identifier[mrn].type = IDTYPE#MR "Medical Record Number"
* identifier[mrn].system = RMRN //"http://projectronin.com/id/mrn"

* insert NotUsed(basedOn)
* insert NotUsed(parent)
* insert NotUsed(modifierExtension)
* insert NotUsed(method)
* insert NotUsed(encounter)
* insert NotUsed(condition)
* insert NotUsed(performer)
* insert NotUsed(reasonCode)
* insert NotUsed(reasonReference)
* insert NotUsed(mitigation)
* insert NotUsed(note)

* status MS
* code MS
* subject 1..1 MS
* subject only Reference(OncologyPatient)
* occurrenceDateTime MS
* basis MS
* basis only Reference(EDVisitRationale)
* prediction MS
* prediction.outcome MS
* extension contains
    RiskAssessmentSampleSize named sampleSize 1..1 MS and
    RiskAssessmentCohortSize named cohortSize 1..1 MS


// EDVisitRationale models the Observation made in support of the ED Visit risk assessment.
Profile: EDVisitRationale
Parent: Observation
Id: ed-visit-rationale
Description: "Observations to support ED Visit assessment, includes patient comparison and risk drivers"
* ^status = #draft
* ^experimental = true

* identifier 1..* MS
//Slice identifier to ensure tenantId identifier is present.
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    tenantId 1..1 and
    mrn 0..1

* identifier[tenantId].type = RTID#TID "Ronin-specified Tenant Identifier"
* identifier[tenantId].system = RTID //"http://projectronin.com/id/tenantId"
* identifier[mrn].type = IDTYPE#MR "Medical Record Number"
* identifier[mrn].system = RMRN //"http://projectronin.com/id/mrn"

* status MS
* code MS
* insert(NotUsed(basedOn))
* insert(NotUsed(partOf))
* insert(NotUsed(category))
* insert(NotUsed(code))
* insert(NotUsed(subject))
* focus 1..1 MS
* focus only Reference(EDVisitRiskAssessment)
* insert(NotUsed(encounter))
* insert(NotUser(effective[x]))
* issued MS
* insert(NotUsed(performer))
* insert(NotUsed(value[x]))
* insert(NotUsed(dataAbsentReason))
* insert(NotUsed(interpretation))
* insert(NotUsed(bodySite))
* insert(NotUsed(method))
* insert(NotUsed(specimen))
* insert(NotUsed(device))
* insert(NotUsed(referenceRange))
* insert(NotUsed(hasMember))
* insert(NotUsed(derivedFrom))
* insert ObservationComponentSlicingRules

* insert CreateRiskDriversComponent(ageRisk, 0, 1, "Age Risk Driver", 
            "The risk driver based on age", RDSRD#ageRisk , "Age Risk")

* insert CreateRiskDriversComponent(maritalStatusRisk, 0, 1, "Marital Status Risk Driver", 
            "The risk driver based on marital status", RDSRD#maritalStatusRisk , "Marital Status Risk")

* insert CreateRiskDriversComponent(immunotherapyRisk, 0, 1, "Immunotherapy Risk Driver",
            "The risk driver based on immunotherapy", RDSRD#immunotherapyRisk , "Immunotherapy Risk")

* insert CreateRiskDriversComponent(TNMRisk, 0, 1, "TNM Risk Driver",
            "The risk driver based on TNM", RDSRD#TNMRisk , "TNM Risk")

* insert CreateRiskDriversComponent(diabetesRisk, 0, 1, "Diabetes Risk Driver",
            "The risk driver based on diabetes", RDSRD#diabetesRisk , "Diabetes Risk" )

* insert CreateRiskDriversComponent(hypertensionRisk, 0, 1, "Hypertension Risk Driver",
            "The risk driver based on hypertension", RDSRD#hypertensionRisk , "Hypertension Risk")

* insert CreateRiskDriversComponent(rheumatoidArthritisRisk, 0, 1, "Rheumatoid Arthritis Risk Driver",
            "The risk driver based on rheumatoid arthritis", RDSRD#rheumatoidArthritisRisk , "Rheumatoid Arthritis Risk")

* insert CreateRiskDriversComponent(serumCreatinineRisk, 0, 1, "Serum Creatinine Risk Driver",
            "The risk driver based on serum creatinine", RDSRD#serumCreatinineRisk , "Serum Creatinine Risk")

* insert CreateRiskDriversComponent(potassiumRisk, 0, 1, "Potassium Risk Driver",
            "The risk driver based on potassium", RDSRD#potassiumRisk , "Potassium Risk")

* insert CreateRiskDriversComponent(ANCRisk, 0, 1, "ANC Risk Driver",
            "The risk driver based on ANC", RDSRD#ANCRisk , "ANC Risk")

* insert CreatePatientComparisonComponent(overallMatchComparison, 0, 1, "Patient Overall Match Comparison",
            "Patient comparison overall match", RDSPC#overallMatchComparison , "Overall Match Comparison")

* insert CreatePatientComparisonComponent(performanceStatusComparison, 0, 1, "Patient Performance Status Comparison",
            "Patient comparison performance status", RDSPC#performanceStatusComparison , "Age Comparison")

* insert CreatePatientComparisonComponent(ageComparison, 0, 1, "Patient Age Comparison",
            "Patient comparison age attribute", RDSPC#ageComparison , "Age Comparison")

* insert CreatePatientComparisonComponent(stageAndTNMComparison, 0, 1, "Patient Stage and TNM Comparison",
            "Patient comparison stage and TNM attribute", RDSPC#stageAndTNMComparison , "Stage and TNM Comparison")

* insert CreatePatientComparisonComponent(priorOrCurrentTreatmentsComparison, 0, 1, 
            "Patient Prior or Current Treatments Comparison",
            "Patient prior or current treatments attribute",
            RDSPC#priorOrCurrentTreatmentsComparison , "Prior or Current Treatments Comparison")

* insert CreatePatientComparisonComponent(CCIComparison, 0, 1, 
            "Patient Comorbidity Charlson Index Comparison", 
            "Patient comparison Comorbidity Charlson Index attribute",
            RDSPC#CCIComparison , "Comorbidity Charlson Index Comparison")

* insert CreatePatientComparisonComponent(activeMedicationComparison, 0, 1, 
            "Patient Active Medication Comparison",
            "Patient comparison active medication attribute",
            RDSPC#activeMedicationComparison , "Active Medication Comparison")

// Labs and Symptoms are different.  We don't use value[x] but we use a list of codes 
// for a single Labs/Symptoms component and extend code with date for symptoms
* insert CreateLabsComponent(labs, 0, *, "Patient Labs", "Patient significant labs")
* insert CreateSymptomsComponent(symptoms, 0, *, "Patient Symptoms", "Patient reported symptoms")


// Test Instances
Instance: roninEdVisitRiskAssessment
InstanceOf: EDVisitRiskAssessment
Description: "Example ED Visit Risk Assessment"
* id = "roninEdVisitRiskAssessment"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-risk-assessment"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* status = #final
* subject = Reference(ExamplePatient)
* occurrenceDateTime = "2019-12-07"
* prediction.probabilityDecimal = 0.32
* prediction.outcome = SCT#4525004 "Emergency department patient visit"
* basis = Reference(roninEdVisitRationale)
* extension[sampleSize].valueInteger = 300
* extension[cohortSize].valueInteger = 1000


Instance: roninEdVisitRationale
InstanceOf: EDVisitRationale
Description: "Rationale associated with roninEdVisitRiskAssessment"
* id = "roninEdVisitRationale"
* meta.profile = "http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-rationale"
* identifier[tenantId].system = "http://projectronin.com/id/tenantId"
* identifier[tenantId].value = "013"
* status = #final
* code = SCT#4525004 "Emergency department patient visit"
* focus = Reference(roninEdVisitRiskAssessment)
* issued = "2019-12-07T13:28:17.000Z"

// I added ID to this example but we don't have to use it
// We can use code.coding.code in search.
* component[ageRisk].id = "AgeRiskDriver"
* component[ageRisk].valueInteger = 70
* component[ageRisk].interpretation = RDSRD#decrease
* component[ageRisk].referenceRange.low.value = 50
* component[ageRisk].referenceRange.high.value = 120
* component[ageRisk].referenceRange.text = "Age Range"
* component[ageRisk].extension[category].valueString = "Socioeconomic / Demographics"

* component[maritalStatusRisk].id = "MaritalStatusRiskDriver"
* component[maritalStatusRisk].valueQuantity.value = 0.09
* component[maritalStatusRisk].interpretation = RDSRD#increase
* component[maritalStatusRisk].referenceRange.low.value = 0.05
* component[maritalStatusRisk].referenceRange.high.value = 0.2
* component[maritalStatusRisk].referenceRange.text = "Marital Status Range"
* component[maritalStatusRisk].extension[category].valueString = "Socioeconomic / Demographics"

// A more complete example is in OncologyExamples.fsh
* component[ageComparison].id = "AgePatientComparison"
* component[ageComparison].valueInteger = 100

* component[stageAndTNMComparison].id = "StageAndTNMPatientComparison"
* component[stageAndTNMComparison].valueInteger = 120

//There is an informational message here that is suppressed
//It's because we create a single slice for each labs/symptoms while the code is
//from a valueset as opposed to set by "create" methods in RuleSets
//This element does not match any known slice defined in the profile http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-rationale
* component[labs].id = "Labs"
* component[labs].code.coding[0] = RDSLAB#ad691140-8ef7-4712-ac02-f8994f85c97a "CA27.29"
* component[labs].code.coding[0].version = "1"

* component[labs].code.coding[1] = RDSLAB#1e9062ea-bc7b-4d89-a0ad-3dfcc47af02f "Lipase"
* component[labs].code.coding[1].version = "2"

* component[symptoms].id = "Symptoms"
* component[symptoms].code.text = "Symptoms"
* component[symptoms].code.coding[0] = RDSSYMPTOM#Diarrhea "Diarrhea"
* component[symptoms].code.coding[0].extension[eventDate].valueDate = "2021-09-10"

* component[symptoms].code.coding[1] = RDSSYMPTOM#Pain "Pain"
* component[symptoms].code.coding[1].extension[eventDate].valueDate = "2020-02-12"
