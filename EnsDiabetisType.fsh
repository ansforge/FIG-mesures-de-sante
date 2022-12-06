Alias: $JDV-J153-TypeDiabete-ENS = https://mos.esante.gouv.fr/NOS/JDV_J153-TypeDiabete-ENS/FHIR/JDV-J153-TypeDiabete-ENS

Extension: EnsDiabetisType
Id: EnsDiabetisType
* ^meta.lastUpdated = "2021-06-23T19:26:49.441+00:00"
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_DiabetisType"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_DiabetisType" (exactly)
* value[x] only CodeableConcept
* value[x] from $JDV-J153-TypeDiabete-ENS (required)
* value[x] ^binding.description = "JDV_J153-TypeDiabete-ENSDiabète"
* value[x].coding.system 1..
* value[x].coding.code 1..