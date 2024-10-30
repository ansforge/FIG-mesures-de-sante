Instance: cholesterol-total-example
InstanceOf: MesFrObservationCholesterolTotal
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2024-10-15"
* valueQuantity.value = 2.10
* valueQuantity.unit = "g/L"
* valueQuantity.code = #g/L
* valueQuantity.system = $UCUM

* referenceRange.low = 0.50 'g/L' "g/L"
* referenceRange.high = 2.00 'g/L' "g/L"

Instance: cholesterol-hdl-example
InstanceOf: MesFrObservationCholesterolHDL
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2024-10-15"
* valueQuantity.value = 0.52
* valueQuantity.unit = "g/L"
* valueQuantity.code = #g/L
* valueQuantity.system = $UCUM

* referenceRange.low = 0.55 'g/L' "g/L"


Instance: cholesterol-ldl-example
InstanceOf: MesFrObservationCholesterolLDL
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2024-10-15"
* valueQuantity.value = 1.39
* valueQuantity.unit = "g/L"
* valueQuantity.code = #g/L
* valueQuantity.system = $UCUM

Instance: cholesterol-trigly-example
InstanceOf: MesFrObservationCholesterolTrigly
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2024-10-15"
* valueQuantity.value = 0.96
* valueQuantity.unit = "g/L"
* valueQuantity.code = #g/L
* valueQuantity.system = $UCUM

* referenceRange.low = 0.50 'g/L' "g/L"
* referenceRange.high = 1.50 'g/L' "g/L"


Instance: cholesterol-dr
InstanceOf: MesCholesterolDiagnosticReport
Usage: #example
* status = #final
* result[total-cholesterol] = Reference(cholesterol-total-example)
* result[hdl-cholesterol] = Reference(cholesterol-hdl-example)
* result[ldl-cholesterol] = Reference(cholesterol-ldl-example)
* result[trigly-cholesterol] = Reference(cholesterol-trigly-example)


Instance: bundle-example-lipids
InstanceOf: MesBundleFluxAlimentationCholesterol
Usage: #example
* type = #transaction

* entry[mes-observation-ldl][0].resource = cholesterol-ldl-example
* entry[mes-observation-ldl][=].request.method = #POST
* entry[mes-observation-ldl][=].request.url = "Observation"
* entry[mes-observation-ldl][=].fullUrl = "urn:uuid:0f6a9f7f-d307-4497-b7e3-2059dc7344d4" //created using random generator

* entry[mes-observation-hdl][+].resource = cholesterol-hdl-example
* entry[mes-observation-hdl][=].request.method = #POST
* entry[mes-observation-hdl][=].request.url = "Observation"
* entry[mes-observation-hdl][=].fullUrl = "urn:uuid:7375171a-805e-440d-aa55-eb0ced35625c" //created using random generator


* entry[mes-observation-trigly][+].resource = cholesterol-trigly-example
* entry[mes-observation-trigly][=].request.method = #POST
* entry[mes-observation-trigly][=].request.url = "Observation"
* entry[mes-observation-trigly][=].fullUrl = "urn:uuid:1cd043f1-996c-49e8-bb03-b02a865505af" //created using random generator


* entry[mes-observation-total][+].resource = cholesterol-total-example
* entry[mes-observation-total][=].request.method = #POST
* entry[mes-observation-total][=].request.url = "Observation"
* entry[mes-observation-total][=].fullUrl = "urn:uuid:91bc2d03-5406-490c-89f5-23cce837494d" //created using random generator


* entry[mes-diagnostic-report][+].resource = cholesterol-dr
* entry[mes-diagnostic-report][=].request.method = #POST
* entry[mes-diagnostic-report][=].request.url = "Observation"
* entry[mes-diagnostic-report][=].fullUrl = "urn:uuid:25207dab-e2f1-4513-a499-48e508847382" //created using random generator