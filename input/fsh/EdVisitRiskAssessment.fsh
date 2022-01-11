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
* insert NotUsed(encounter)
* insert NotUsed(condition)
* insert NotUsed(performer)
* insert NotUsed(reasonCode)
* insert NotUsed(reasonReference)
* insert NotUsed(mitigation)
* insert NotUsed(note)
* method MS
* method ^definition = "The algorithm, process or mechanism used to evaluate the risk. 
                         Contains the MLFlow model name (code) and version that created this RiskAssessment."
* status MS
* code MS
* subject 1..1 MS
* subject only Reference(OncologyPatient)
* occurrenceDateTime MS
* basis MS
* basis only Reference(EDVisitRationale)
* prediction ^short = "Outcome Predicted e.g. 75% of similar patients visited the ED within 30 days"
* prediction ^definition = "Describes the expected outcome for the subject. For Ronin, any field under
                            prediction can be used in support of the prediction.
                            Note that the goal is to use all fields necessary to state a prediction like:
                            \"75% of similar patients visited the ED within 30 days\"."
* prediction MS
* extension contains
    RiskAssessmentSampleSize named sampleSize 1..1 MS and
    RiskAssessmentCohortSize named cohortSize 1..1 MS


// EDVisitRationale models the Observation made in support of the ED Visit risk assessment.
Profile: EDVisitRationale
Parent: Observation
Id: ed-visit-rationale
Title: "ED Visit Rationale"
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

* insert(NotUsed(basedOn))
* insert(NotUsed(partOf))
* insert(NotUsed(category))
* insert(NotUsed(subject))
* insert(NotUsed(encounter))
* insert(NotUser(effective[x]))
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

* status MS
* code MS
* focus 1..1 MS
* focus only Reference(EDVisitRiskAssessment)
* issued MS
* insert ObservationComponentSlicingRules
* component.extension contains
    EDVisitComponentType named componentType 0..1

// Risk Drivers and Patient Comparison have a cardinality 0..* and differentiated
// by code from EDVisitRiskDriverCodesVS and EDVisitPatientComparisonCodesVS
* insert CreateRiskDriversComponent(riskDrivers, 0, *, "Risk Driver slice", 
              "The risk drivers produced by the ML model")

* insert CreatePatientComparisonComponent(patientComparisons, 0, *, "Patient Comparison",
            "The patient comparisons produced by the ML model")

// Labs and Symptoms are different.  We don't use value[x] but we use a list of codes 
// for a single Labs/Symptoms component and extend code with date for symptoms
// Lab codes EDVisitRationaleLabCodesVS
// Symptoms codes EDVisitRationaleSymptomCodesVS
* insert CreateLabsComponent(labs, 0, 1, "Patient Labs", "Patient significant labs")
* insert CreateSymptomsComponent(symptoms, 0, 1, "Patient Symptoms", "Patient reported symptoms")


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
* method = RDSML#sk-learn-random-forest-reg-model "Scikit-learn random forest regression model"
* method.coding.version = "1"
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
* component[riskDrivers][0].id = "AgeRiskDriver"
* component[riskDrivers][0].valueQuantity.value = 0.7
* component[riskDrivers][0].code = RDSRD#AGE  "Age"
* component[riskDrivers][0].interpretation = RDSRDI#decrease
* component[riskDrivers][0].referenceRange.low.value = 0
* component[riskDrivers][0].referenceRange.high.value = 1
* component[riskDrivers][0].referenceRange.text = "Age Range"
* component[riskDrivers][0].extension[category].valueCodeableConcept = RDSRDC#Demographics   "Demographics"
* component[riskDrivers][0].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

* component[riskDrivers][1].id = "MaritalStatusRiskDriver"
* component[riskDrivers][1].valueQuantity.value = 0.9
* component[riskDrivers][1].code = RDSRD#MS   "Marital Status"
* component[riskDrivers][1].interpretation = RDSRDI#increase
* component[riskDrivers][1].referenceRange.low.value = 0
* component[riskDrivers][1].referenceRange.high.value = 1
* component[riskDrivers][1].referenceRange.text = "Marital Status Range"
* component[riskDrivers][1].extension[category].valueCodeableConcept = RDSRDC#Demographics   "Demographics"
* component[riskDrivers][1].extension[componentType].valueCodeableConcept = ROBSCT#RiskDriver  "Risk Driver Component"

// A more complete example is in OncologyExamples.fsh
* component[patientComparisons][0].id = "AgePatientComparison"
* component[patientComparisons][0].code = RDSRD#AGE  "Age"
* component[patientComparisons][0].valueQuantity.value = 65.3
* component[patientComparisons][0].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

* component[patientComparisons][1].id = "StageAndTNMPatientComparison"
* component[patientComparisons][1].code = RDSRD#TSP "T Stage (Pathologic)"
* component[patientComparisons][1].valueQuantity.value = 54.6
* component[patientComparisons][1].extension[componentType].valueCodeableConcept = ROBSCT#PatientComparison  "Patient Comparison Component"

//There is an informational message here that is suppressed
//It's because we create a single slice for each labs/symptoms while the code is
//from a valueset as opposed to set by "create" methods in RuleSets
//This element does not match any known slice defined in the profile http://projectronin.com/fhir/us/ronin/StructureDefinition/ed-visit-rationale
* component[labs].id = "Labs"
* component[labs].extension[componentType].valueCodeableConcept = ROBSCT#Labs  "Labs Component"
* component[labs].code.coding[0] = RDSLAB#ad691140-8ef7-4712-ac02-f8994f85c97a "CA27.29"
* component[labs].code.coding[0].version = "1"

* component[labs].code.coding[1] = RDSLAB#1e9062ea-bc7b-4d89-a0ad-3dfcc47af02f "Lipase"
* component[labs].code.coding[1].version = "2"

* component[symptoms].id = "Symptoms"
* component[symptoms].extension[componentType].valueCodeableConcept = ROBSCT#Symptoms  "Symptoms Component"
* component[symptoms].code.text = "Symptoms"
* component[symptoms].code.coding[0] = RDSSYMPTOM#Diarrhea "Diarrhea"
* component[symptoms].code.coding[0].extension[eventDate].valueDate = "2021-09-10"

* component[symptoms].code.coding[1] = RDSSYMPTOM#Pain "Pain"
* component[symptoms].code.coding[1].extension[eventDate].valueDate = "2020-02-12"
