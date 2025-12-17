# Silver Join Keys

The following keys enable consistent joins across Silver tables:

## Primary Key
- patient.patient_id

## Foreign Keys
- encounter.patient_id
- condition.patient_id
- observation.patient_id
- procedure.patient_id
- medication_request.patient_id
- immunization.patient_id
- diagnostic_report.patient_id
- explanation_of_benefit.patient_id

## Join Principle
All clinical and administrative resources are linked to Patient
using stable FHIR references.
