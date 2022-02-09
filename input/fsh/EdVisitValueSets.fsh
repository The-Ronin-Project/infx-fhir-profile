// EdVisitValueSets contains the codes related to ED Visit Rationale
// s.a. symptoms and labs.
//
ValueSet: EDVisitRationaleLabCodesVS
Id: ed-visit-rationale-lab-codes-vs
Title: "ED Visit Rationale Lab Codes Value Set"
Description: "Contains the values for the ED Visit Lab Codes"
* RDSLAB#0203b284-819e-4a69-ad79-e5d7ebbb932f  "AST"
* RDSLAB#05d1bf27-6c55-43e7-aa5c-9d2cc602c44c  "CA19.9"
* RDSLAB#06298108-d0d3-4d01-aa9f-afb44578544a  "CO2"
* RDSLAB#17c9f0cf-59b1-4d75-a248-57754508b53d  "Albumin"
* RDSLAB#18a6a064-1c81-4ab8-a320-8be9d9966e1f  "RBC"
* RDSLAB#1e9062ea-bc7b-4d89-a0ad-3dfcc47af02f  "Lipase"
* RDSLAB#1f05b6bb-443f-4184-8af4-de3cd091bd34  "PLT count"
* RDSLAB#272438f6-fc56-498f-8791-8509a04925b8  "AFP"
* RDSLAB#31f8a5a3-19c5-4789-b46e-77d6a851a4cc  "Amylase"
* RDSLAB#3a52bd8c-c738-429e-bf04-69c7be3e325e  "CA125"
* RDSLAB#430fc42b-8577-42f1-a741-73b9a6c412b8  "Total Bilirubin"
* RDSLAB#4cf9dcf2-8bb1-4952-90c8-4179b9ab2de9  "Potassium"
* RDSLAB#584f9413-2886-47e6-b639-3b8ffe4b277e  "PT"
* RDSLAB#65c86cb9-7ff6-486a-81f3-823779b73f4b  "WBC"
* RDSLAB#7dfd4847-5a45-42c1-9c08-c17de4a24b0b  "BUN"
* RDSLAB#7fda0337-fef1-4a5a-a7e7-124d2da2f4b8  "Glucose"
* RDSLAB#88bbf718-3187-4139-906d-d5b234c94396  "PSA"
* RDSLAB#8d90851d-3306-4c47-9ec3-ec42e9ba1fde  "PTT"
* RDSLAB#93a6929a-1cf3-4a6b-b45d-c55bd734a17d  "ANC"
* RDSLAB#9db71342-e580-4330-aba9-d4aa770ef904  "Beta HCG"
* RDSLAB#a2cab05c-02b4-4e99-9f74-fd2b7e6e6c5c  "CEA"
* RDSLAB#ad691140-8ef7-4712-ac02-f8994f85c97a  "CA27.29"
* RDSLAB#c1c45bf7-e61b-4fed-a007-a0d2185a9ca9  "Sodium"
* RDSLAB#c384320d-db04-45f2-8cfd-3d16b533e1ae  "ALT"
* RDSLAB#c725d530-9de3-4c17-92ac-697c1f68f4f2  "Direct Bilirubin"
* RDSLAB#dd0113d4-f448-478c-b8db-d84d4a36601f  "CA15.3"
* RDSLAB#e19d0b6c-3034-40f3-be3f-532a39fb4ef0  "HCT"
* RDSLAB#e4684404-c001-4ef2-ae6e-2b20c6512b92  "Creatinine"
* RDSLAB#e50db242-3d3a-47a0-af20-00b1e0b3b46c  "Alkaline Phosphatase"
* RDSLAB#e6af1c3c-69a4-48cb-92be-56ee6e99450f  "HGB"
* RDSLAB#eca5e803-675c-4615-8992-4e03508a778f  "INR"
* RDSLAB#fbce9f7b-2455-4ae0-9829-e22fc7ebd4e1  "LDH"

ValueSet: EDVisitRiskDriverCategoryCodesVS
Id: ed-visit-risk-driver-category-codes-vs
Title: "ED Visit Risk Driver Category Codes Value Set"
Description: "Contains the values related to the ED visit risk drivers categories"
* RDSRDC#DSRF           "Disease-specific Risk Factors"
* RDSRDC#Demographics   "Demographics"
* RDSRDC#SDH            "Social Determinants of Health"
* RDSRDC#PHU            "Prior Healthcare Utilization"
* RDSRDC#CAP            "Comorbidities and Acute Problems"
* RDSRDC#CT             "Cancer Type"
* RDSRDC#Medications    "Medications"
* RDSRDC#TC             "Treatment Cycle"
* RDSRDC#Symptoms       "Symptoms"
* RDSRDC#LR             "Lab Results"

ValueSet: EDVisitComponentTypeCodesVS
Id: ed-visit-component-type-codes-vs
Title: "ED Visit Component Type Codes Value Set"
Description: "Contains Component Types for ED Visit"
* ROBSCT#RiskDriver         "Risk Driver Component"
* ROBSCT#PatientComparison  "Patient Comparison Component"
* ROBSCT#Labs               "Labs Component"
* ROBSCT#Symptoms           "Symptoms Component"

ValueSet: EDVisitRiskDriverInterpretationCodesVS
Id: ed-visit-risk-driver-codes-interpretation-vs
Title: "ED Visit Risk Driver Codes Value Set"
Description: "Contains the values related to ED Visit risk drivers interpretation"
* RDSRDI#increase       "Increase"
* RDSRDI#decrease       "Decrease"

//Refer to https://docs.google.com/spreadsheets/d/1Bkz5-6PhERfvwya7DPTXPZzW4BY6v5MmhVnJNB5o3xo/edit#gid=1837739289
//For all the fields
ValueSet: EDVisitRiskDriverCodesVS
Id: ed-visit-risk-driver-codes-vs
Title: "ED Visit Risk Driver Codes Value Set"
Description: "Contains the values related to the ED visit risk drivers"
* RDSRD#PSA                 "PSA"
* RDSRD#PSA-M               "PSA Missing"
* RDSRD#LDH                 "LDH"
* RDSRD#LDH-M               "LDH Missing"
* RDSRD#BHCG                "Beta HCG"
* RDSRD#BHCG-M              "Beta HCG Missing"
* RDSRD#AFP                 "AFP"
* RDSRD#AFP-M               "AFP Missing"
* RDSRD#RBC                 "Red Blood Cell count (RBC)"
* RDSRD#RBC-M               "Red Blood Cell count (RBC) Missing"
* RDSRD#WBC                 "White Blood Cell count (WBC)"
* RDSRD#WBC-M               "White Blood Cell count (WBC) Missing"
* RDSRD#ANC                 "Absolute Neutrophil Count (ANC)"
* RDSRD#ANC-M               "Absolute Neutrophil Count (ANC) Missing"
* RDSRD#HGB                 "Hemoglobin (HGB)"
* RDSRD#HGB-M               "Hemoglobin (HGB) Missing"
* RDSRD#HCT                 "Hematocrit (HCT)"
* RDSRD#HCT-M               "Hematocrit (HCT) Missing"
* RDSRD#PC                  "Platelet Count"
* RDSRD#PC-M                "Platelet Count Missing"
* RDSRD#BUN                 "BUN"
* RDSRD#BUN-M               "BUN Missing"
* RDSRD#CRE                 "Creatinine"
* RDSRD#CRE-M               "Creatinine Missing"
* RDSRD#K                   "Potassium"
* RDSRD#K-M                 "Potassium Missing"
* RDSRD#NA                  "Sodium"
* RDSRD#NA-M                "Sodium Missing"
* RDSRD#GLU                 "Glucose"
* RDSRD#GLU-M               "Glucose Missing"
* RDSRD#ALT                 "ALT"
* RDSRD#ALT-M               "ALT Missing"
* RDSRD#AST                 "AST"
* RDSRD#AST-M               "AST Missing"
* RDSRD#ALB                 "Albumin"
* RDSRD#ALB-M               "Albumin Missing"
* RDSRD#CO2                 "CO2"
* RDSRD#CO2-M               "CO2 Missing"
* RDSRD#CL                  "Chloride"
* RDSRD#CL-M                "Chloride Missing"
* RDSRD#TBN                 "Total Bilirubin"
* RDSRD#TBN-M               "Total Bilirubin Missing"
* RDSRD#DBN                 "Direct Bilirubin"
* RDSRD#DBN-M               "Direct Bilirubin Missing"
* RDSRD#AMY                 "Amylase"
* RDSRD#AMY-M               "Amylase Missing"
* RDSRD#LIP                 "Lipase"
* RDSRD#LIP-M               "Lipase Missing"
* RDSRD#INR                 "INR"
* RDSRD#INR-M               "INR Missing"
* RDSRD#PT                  "PT"
* RDSRD#PT-M                "PT Missing"
* RDSRD#PTT                 "PTT"
* RDSRD#PTT-M               "PTT Missing"
* RDSRD#PT-PTT-INR-M        "PT/PTT/INR Missing"
* RDSRD#FIB                 "Fibrinogen"
* RDSRD#FIB-M               "Fibrinogen Missing"
* RDSRD#CEA                 "CEA"
* RDSRD#CEA-M               "CEA Missing"
* RDSRD#CA-15.3             "CA 15.3"
* RDSRD#CA-15.3-M           "CA 15.3 Missing"
* RDSRD#CA-27.29            "CA 27.29"
* RDSRD#CA-27.29-M          "CA 27.29 Missing"
* RDSRD#CA-125              "CA-125"
* RDSRD#CA-125-M            "CA-125 Missing"
* RDSRD#CA-19-9             "CA 19-9"
* RDSRD#CA-19-9-M           "CA 19-9 Missing"
* RDSRD#BMI                 "BMI"
* RDSRD#AGE                 "Age"
* RDSRD#BS-M                "Birth Sex Missing"
* RDSRD#BS                  "Birth Sex"
* RDSRD#MS                  "Marital Status"
* RDSRD#MS-M                "Marital Status - Missing"
* RDSRD#RACE                "Race"
* RDSRD#RACE-M              "Race - Missing"
* RDSRD#ETH                 "Ethnicity"
* RDSRD#ETH-M               "Ethnicity - Missing"
* RDSRD#PD-Density          "Population Location Demographics" //Density
* RDSRD#PD-LandArea         "Population Location Demographics"  //Land Area
* RDSRD#PD-PNC              "Population Citizenship Demographics" //Percent Non-Citizen
* RDSRD#PVS-PV              "Population Veteran Status" //Percent Veteran
* RDSRD#PVS-P2001GWV        "Population Veteran Status" //Percent 2001 Gulf War Veteran
* RDSRD#PVSS-P1990GWV       "Population Veteran Status" //Percent 1990 Gulf War Veteran
* RDSRD#PHA-NSEAA           "Population Language Barrier" //Does not Speak English At All
* RDSRD#PHA-NSEW            "Population Language Barrier" ////Does not Speak English Well
* RDSRD#PO-Unemployed       "Population Occupation Status" //Unemployed
* RDSRD#PF-MHHI             "Population Income" //Median Household Income
* RDSRD#PF-PIPL1            "Population Income" //Percent Income-to-Poverty < 1.00
* RDSRD#PF-PIPG2            "Population Income" //Percent Income-to-Poverty > 2.00
* RDSRD#PE-LHS              "Population Highest Education Level" //Less than High School
* RDSRD#PE-HS               "Population Highest Education Level" //High School
* RDSRD#PE-SCA              "Population Highest Education Level" //Some College or Associates
* RDSRD#PE-BD               "Population Highest Education Level" //Bachelor Degree
* RDSRD#PE-GD               "Population Highest Education Level" //Graduate Degree
* RDSRD#PFA-FS              "Population Food Insecurity" // Food Stamp
* RDSRD#PO-A                "Population Occupation" // Agriculture
* RDSRD#PO-C                "Population Occupation" //Construction
* RDSRD#PO-M                "Population Occupation" //Manufactoring
* RDSRD#PO-W                "Population Occupation" //Wholesale
* RDSRD#PO-R                "Population Occupation" //Retail
* RDSRD#PO-T                "Population Occupation" //Transportation
* RDSRD#PHA-NV              "Population Transportation Access" //No Vehicle
* RDSRD#PHA-NC              "Population Technology Access" //No Computer
* RDSRD#PHA-60MC            "Population Transportation Access" //At least 60-minute commute
* RDSRD#PHC-PUPI            "Population Health Insurance Coverage" //Percent Public Insurance
* RDSRD#PHC-PMOI            "Population Health Insurance Coverage" //Percent Medicare Only Insurance
* RDSRD#PHC-PRPI            "Population HeaHealth Insurancelthcare Coverage" //Percent Private Insurance
* RDSRD#PHC-PU              "Population Health Insurance Coverage" //Percent Uninsured
* RDSRD#DSLV                "Days since last visit"
* RDSRD#NPV                 "Number of previous visits"
* RDSRD#NPEDV               "Number of previous ED visits"
* RDSRD#DSLEDV              "Days since last ED visit"
* RDSRD#HYP                 "Hypertension"
* RDSRD#FED                 "Fluid-Electrolyte Disorder"
* RDSRD#WL                  "Weight Loss"
* RDSRD#HYPO                "Hypothyroidism"
* RDSRD#DEP                 "Depression"
* RDSRD#COA                 "Coagulopathy"
* RDSRD#LD                  "Liver Disease"
* RDSRD#RF                  "Renal Failure"
* RDSRD#DIA-C               "Diabetes (Complicated)"
* RDSRD#DIA-U               "Diabetes (Uncomplicated)"
* RDSRD#CAT                 "Cardiac Arrhythmia"
* RDSRD#OBE                 "Obesity"
* RDSRD#PVD                 "Peripheral Vascular Disorder"
* RDSRD#PCD                 "Pulmonary Circulation Disorder"
* RDSRD#CPD                 "Chronic Pulmonary Disease"
* RDSRD#CHF                 "Congestive Heart Failure"
* RDSRD#ANA                 "Anaemia"
* RDSRD#ND                  "Neurological Disorders"
* RDSRD#RA                  "Rheumatoid Arthritis"
* RDSRD#VD                  "Valvular Disease"
* RDSRD#HYPC                "Hypertension (Complicated)"
* RDSRD#AA                  "Alcohol Abuse"
* RDSRD#DA                  "Drug Abuse"
* RDSRD#PD                  "Pepticular Disease"
* RDSRD#BLWA                "Blood loss with Anaemia"
* RDSRD#PSY                 "Psychoses"
* RDSRD#AIDSHIV             "AIDS HIV"
* RDSRD#NCI                 "No Comorbidities Identified"
* RDSRD#AP                  "Acute Problems"
* RDSRD#NAPI                "No Acute Problems Identified"
* RDSRD#TSP-M               "T Stage Missing (Pathologic)"
* RDSRD#TSP                 "T Stage (Pathologic)"
* RDSRD#NSP-M               "N Stage Missing (Pathologic)"
* RDSRD#NSP                 "N Stage (Pathologic)"
* RDSRD#MSP-M               "M Stage Missing (Pathologic)"
* RDSRD#MSP                 "M Stage (Pathologic)"
* RDSRD#TSC-M               "T Stage Missing (Clinical)"
* RDSRD#TSC                 "T Stage (Clinical)"
* RDSRD#NSC-M               "N Stage Missing (Clinical)"
* RDSRD#NSC                 "N Stage (Clinical)"
* RDSRD#MSC-M               "M Stage Missing (Clinical)"
* RDSRD#MSC                 "M Stage (Clinical)"
* RDSRD#BRC                 "Breast Cancer"
* RDSRD#PRC                 "Prostate Cancer"
* RDSRD#KDC                 "Kidney Cancer"
* RDSRD#BLC                 "Bladder Cancer"
* RDSRD#TTC                 "Testicular Cancer"
* RDSRD#UTC                 "Urethral Cancer"
* RDSRD#URC                 "Ureter Cancer"
* RDSRD#PNC                 "Penile Cancer"
* RDSRD#NCTI                "No Cancer Type Identified"
* RDSRD#PKI                 "Protein Kinase Inhibitor"
* RDSRD#PAONP               "Plant Alkaloids and Other Natural Products"
* RDSRD#OAA                 "Other Antineoplastic Agents"
* RDSRD#ISP                 "Immunosuppressants"
* RDSRD#ISM                 "Immunostimulants"
* RDSRD#ET                  "Endocrine Therapy"
* RDSRD#CAR                 "Cytotoxic Antibiotics and Related"
* RDSRD#NAMI                "No Active Medication Identified"
* RDSRD#MTC                 "Medication Treatment Cycle"
* RDSRD#MC-M                "Medication Cycle Missing"
* RDSRD#RSNV                "Recent Symptom (Nausea/Vomiting)"
* RDSRD#RSD                 "Recent Symptom (Diarrhea)"
* RDSRD#RSF                 "Recent Symptom (Fever)"
* RDSRD#RSSB                "Recent Symptom (Shortness of breath)"
* RDSRD#RSP                 "Recent Symptom (Pain)"
* RDSRD#NRSI                "No Recent Symptom Identified"
* RDSRD#PAR                 "Paralysis"
* RDSRD#AAS                 "Alkylating Agents"
* RDSRD#PD-PWH              "Population Demographics" // - Percent White
* RDSRD#PD-PBL              "Population Demographics" // - Percent Black
* RDSRD#PD-PAS              "Population Demographics" // - Percent Asian
* RDSRD#PD-PAI              "Population Demographics" // - Percent American Indian
* RDSRD#PD-PNH              "Population Demographics" // - Percent Native Hawaiian
* RDSRD#PD-PRH              "Population Income"       // - Percent Rented Households
* RDSRD#PF-PIPG4            "Population Income"       //Finances - Percent Income-to-Poverty > 4.00
* RDSRD#PO-INFS             "Population Occupation"   // - Information Services
* RDSRD#PO-FINS             "Population Occupation"   // - Financial Services
* RDSRD#PO-PROS             "Population Occupation"   //- Professional Services
* RDSRD#PO-EDUS             "Population Occupation"   // - Educational Services
* RDSRD#PO-AAE              "Population Occupation"   // - Arts and Entertainment
* RDSRD#PO-OTH              "Population Occupation"   // - Other
* RDSRD#PO-PA               "Population Occupation"   // - Public Administration
* RDSRD#PD-PMH              "Population Income"       // - Percent Mobile Home
* RDSRD#PD-PCWGH            "Population Family Demographics" // - Percent Children with Grandparent Householder
* RDSRD#PD-PDTW             "Population Transportation Access" // Population Demographics - Percent Drive to Work

ValueSet: EDVisitPatientComparisonCodesVS
Id: ed-visit-patient-comparison-codes-vs
Title: "ED Visit Patient Comparison Codes ValueSet"
Description: "Contains all Risk Driver codes and additional patient comparison specific codes"
* include codes from valueset EDVisitRiskDriverCodesVS
* RDSPC#OC  "Overall Comparison"

ValueSet: EDVisitRationaleSymptomCodesVS
Id: ed-visit-rationale-symptom-codes-vs
Title: "ED Visit Rationale Symptom Codes Value Set"
Description: "Contains the values for the ED Visit Symptom Codes"
* include codes from valueset EDVisitRiskDriverCodesVS
