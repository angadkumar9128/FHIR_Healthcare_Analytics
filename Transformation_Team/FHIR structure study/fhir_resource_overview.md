# FHIR Resource Overview

## Resources Covered
The following FHIR resources are used in this project:

- Patient
- Encounter
- Condition
- Observation
- Procedure
- MedicationRequest
- Immunization
- DiagnosticReport
- ExplanationOfBenefit (EOB)

---

## Resource Purpose
- Patient: Demographics and identity
- Encounter: Visit and admission details
- Condition: Diagnoses and health conditions
- Observation: Labs and vitals
- Procedure: Medical actions
- MedicationRequest: Prescriptions
- Immunization: Vaccination records
- DiagnosticReport: Clinical reports
- EOB: Insurance and billing data

---

## Design Principle
Each FHIR resource maps to **one Silver table**
to maintain normalization and clarity.
