RuleSet: NotUsed(path)
* {path} ^short = "Not used in this profile"
* {path} ^definition = "Not used in this profile"

RuleSet: ObservationComponentSlicingRules
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"


RuleSet: CreateRiskDriversComponent(sliceName, min, max, shortDescription, description)
* component contains {sliceName} {min}..{max} MS
* component[{sliceName}] ^short = {shortDescription}
* component[{sliceName}] ^definition = {description}
* component[{sliceName}].id MS
* component[{sliceName}].code MS
* component[{sliceName}].code from EDVisitRiskDriverCodesVS (required)
* component[{sliceName}].value[x] MS
* component[{sliceName}].value[x] only Quantity
* component[{sliceName}].interpretation MS
* component[{sliceName}].referenceRange MS
* component[{sliceName}].extension MS
* component[{sliceName}].extension contains
    RiskDriverCategoryType named category 0..1 MS
* component[{sliceName}].extension[category] MS
* insert NotUsed(dataAbsentReason)

RuleSet: CreatePatientComparisonComponent(sliceName, min, max, shortDescription, description)
* component contains {sliceName} {min}..{max} MS
* component[{sliceName}] ^short = {shortDescription}
* component[{sliceName}] ^definition = {description}
* component[{sliceName}].id MS
* component[{sliceName}].code MS
* component[{sliceName}].code from EDVisitRiskDriverCodesVS (required)
* component[{sliceName}].value[x] MS
* component[{sliceName}].value[x] only Quantity
* insert NotUsed(dataAbsentReason)
* insert NotUsed(interpretation)
* insert NotUsed(referenceRange)

RuleSet: CreateLabsComponent(sliceName, min, max, shortDescription, description)
* component contains {sliceName} {min}..{max} MS
* component[{sliceName}] ^short = {shortDescription}
* component[{sliceName}] ^definition = {description}
* component[{sliceName}].id MS
* component[{sliceName}].code MS
* component[{sliceName}].code from EDVisitRationaleLabCodesVS (required)
* component[{sliceName}].code.coding.extension contains
    LabRankType named rank 0..1 MS
* component[{sliceName}].code.coding.extension[rank] MS
* insert NotUsed(value[x])
* insert NotUsed(dataAbsentReason)
* insert NotUsed(interpretation)
* insert NotUsed(referenceRange)

RuleSet: CreateSymptomsComponent(sliceName, min, max, shortDescription, description)
* component contains {sliceName} {min}..{max} MS
* component[{sliceName}] ^short = {shortDescription}
* component[{sliceName}] ^definition = {description}
* component[{sliceName}].id MS
* component[{sliceName}].code MS
* component[{sliceName}].code from EDVisitRationaleSymptomCodesVS (required)
* component[{sliceName}].code.coding.extension MS
* component[{sliceName}].code.coding.extension contains
    EventDateType named eventDate 0..1 MS
* component[{sliceName}].code.coding.extension[eventDate] MS
* insert NotUsed(value[x])
* insert NotUsed(dataAbsentReason)
* insert NotUsed(interpretation)
* insert NotUsed(referenceRange)
