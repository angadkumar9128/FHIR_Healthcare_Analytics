# FHIR Reference Relationships

## Core Reference Model
FHIR resources are linked using reference fields.

---

## Primary Anchor
- Patient is the central entity

---

## Key Relationships
- Encounter.subject.reference → Patient
- Condition.subject.reference → Patient
- Observation.subject.reference → Patient
- Procedure.subject.reference → Patient
- MedicationRequest.subject.reference → Patient
- Immunization.patient.reference → Patient
- DiagnosticReport.subject.reference → Patient
- ExplanationOfBenefit.patient.reference → Patient

---

## Transformation Rule
All references are resolved into stable identifiers
to enable reliable joins in the Silver layer.
