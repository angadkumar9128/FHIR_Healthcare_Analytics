# Bronze Validation Checks

The following validations are applied after Bronze ingestion:

## 1. Table Availability
- Ensure Delta tables exist for each FHIR resource
- Confirms ingestion job success

## 2. Record Count Check
- Validate that tables contain data
- Detects empty or failed ingestions

## 3. Schema Visibility
- Confirm schema is registered in the catalog
- Ensures downstream layers can read data

## 4. Mandatory Field Presence
- `id`
- `resourceType`
These fields are required by FHIR standards.

## 5. JSON Structure Integrity
- Nested structures remain intact
- No flattening or transformation applied

These checks ensure ingestion correctness while preserving raw data.
