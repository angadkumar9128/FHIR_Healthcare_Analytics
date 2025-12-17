# Transformation Implications of FHIR Structure

## Flattening Impact
- Arrays require explode or explode_outer
- Coding systems need controlled extraction
- References must be normalized

---

## Silver Modeling Impact
- One table per resource
- Stable primary keys
- Patient-centric foreign keys

---

## Gold Analytics Impact
- Clean joins across resources
- Time-based analytics supported
- Minimal reprocessing required

---

## Conclusion
FHIR structure understanding directly informs
robust transformation and analytics design.
