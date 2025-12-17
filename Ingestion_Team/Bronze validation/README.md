# Bronze Layer Validation – FHIR Healthcare Analytics

## Objective
Bronze validation ensures that raw FHIR JSON data has been ingested
correctly into Delta tables without corruption, loss, or schema issues.

This validation focuses on ingestion correctness, not business rules.

---

## Validation Scope
- File ingestion success
- Record availability
- Schema visibility
- Mandatory FHIR fields presence
- Basic null checks

---

## Why Validation in Bronze Is Minimal
The Bronze layer is intended to preserve raw data.
Applying heavy validation or business rules here may lead to:
- Data loss
- Reduced auditability
- Reprocessing challenges

Advanced validation is handled in the Silver layer.

---

## Status
**Completed**

Review Note:
> Bronze validation confirms successful raw ingestion and schema integrity.
