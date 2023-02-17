Instance: JDV-J146-MethodBodyHeight-ENS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-04-30T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J146-MethodBodyHeight-ENS/FHIR/JDV-J146-MethodBodyHeight-ENS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.601"
* version = "20210528120000"
* name = "JDV_J146-MethodBodyHeight-ENS"
* status = #active
* date = "2021-05-28T12:00:00+01:00"
* description = "JDV pour la méthode de mesure de la taille"
* compose.include[0].system = "https://mos.esante.gouv.fr/NOS/TRE_R307-NCIT/FHIR/TRE-R307-NCIT"
* compose.include[=].concept[0].code = #C81261
* compose.include[=].concept[=].display = "Mètre"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.3.26.1.1"
* compose.include[=].concept[+].code = #C138178
* compose.include[=].concept[=].display = "Toise"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.3.26.1.1"
* compose.include[+].system = "https://mos.esante.gouv.fr/NOS/TRE_R308-TAASIP/FHIR/TRE-R308-TAASIP"
* compose.include[=].concept.code = #MED-872
* compose.include[=].concept.display = "Stadiomètre"
* compose.include[=].concept.designation.use.code = #OID
* compose.include[=].concept.designation.value = "urn:oid:1.2.250.1.213.1.1.4.322"