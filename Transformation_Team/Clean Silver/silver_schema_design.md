# Silver Schema Design

## Core Tables
- silver.patient
- silver.encounter
- silver.condition
- silver.observation
- silver.procedure
- silver.medication_request
- silver.immunization
- silver.diagnostic_report
- silver.explanation_of_benefit

---

## Schema Characteristics
- Flat structure
- Stable primary keys
- Foreign keys referencing patient_id
- Analytics-friendly column naming
