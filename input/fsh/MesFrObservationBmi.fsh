
Profile: MesFrObservationBmi
Parent: $bmi
Id: mesures-fr-observation-bmi
Title: "Indice de Masse Corporelle"
Description: "Profil de la ressource Observation pour définir un Indice de Masse Corporelle (acronyme : IMC ou BMI)"


* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $workflow-supportingInfo named supportingInfo 0..1

* code.coding 1..

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCorePatientProfile)

* value[x] ^slicing.description = "sclicing description"
* value[x] ^slicing.rules = #open


* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice) \r\n=>cette référence est obligatoire"

* referenceRange.appliesTo from $JDV-J148-ReferenceRangeAppliesTo-CISIS (required)
* referenceRange.appliesTo.coding.system 1..
* referenceRange.appliesTo.coding.code 1..

* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)