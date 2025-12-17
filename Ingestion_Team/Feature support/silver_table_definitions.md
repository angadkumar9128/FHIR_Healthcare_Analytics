# Silver Table Feature Definitions

## Patient
- patient_id (PK)
- gender
- birth_date
- name attributes

## Encounter
- encounter_id (PK)
- patient_id (FK)
- encounter_type
- start_date
- end_date

## Condition
- condition_id (PK)
- patient_id (FK)
- diagnosis_code
- diagnosis_description
- clinical_status

## Observation
- observation_id (PK)
- patient_id (FK)
- observation_code
- observation_name
- value
- unit

## Procedure
- procedure_id (PK)
- patient_id (FK)
- procedure_code
- procedure_description
- performed_date

## MedicationRequest
- medication_request_id (PK)
- patient_id (FK)
- medication_name
- dosage_instruction

## Immunization
- immunization_id (PK)
- patient_id (FK)
- vaccine_code
- occurrence_date

## DiagnosticReport
- diagnostic_report_id (PK)
- patient_id (FK)
- report_code
- issued_date

## ExplanationOfBenefit
- eob_id (PK)
- patient_id (FK)
- coverage_type
- total_cost
