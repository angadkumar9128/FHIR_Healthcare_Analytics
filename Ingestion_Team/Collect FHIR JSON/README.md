# Collect FHIR JSON

## Objective
This step focuses on collecting standard FHIR-compliant JSON datasets
to be used as raw input for the healthcare analytics pipeline.

The datasets are stored without modification to preserve original structure
and ensure auditability.

---

## FHIR Data Sources
- HL7 FHIR official sample datasets
- Synthea-generated synthetic healthcare data

These sources provide realistic and schema-compliant healthcare records
suitable for analytics and transformation.

---

## Storage Approach
- Raw FHIR JSON files are stored under `data/raw_fhir/`
- Files are organized by resource type
- No transformations applied at this stage

---

## Status
**Completed**

Review :
> Standard FHIR sample datasets used.
