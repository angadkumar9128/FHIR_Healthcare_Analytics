# 🏥 Understanding FHIR Datasets – Complete Beginner-Friendly Guide

This document explains **FHIR (Fast Healthcare Interoperability Resources)** datasets in a **simple, clear, and practical way** so that anyone (students, data engineers, analysts, reviewers) can easily understand and work with FHIR data.

This README is designed for **data engineering projects**, especially when working with **FHIR JSON data in Databricks / Spark / Delta Lake**.

---

## 📌 What is FHIR?

**FHIR (Fast Healthcare Interoperability Resources)** is a global healthcare data standard created by **HL7**.

In simple terms:

> **FHIR defines how hospital and healthcare data should be structured and exchanged using JSON.**

FHIR data is:
- Semi-structured (JSON)
- Highly standardized
- Widely used by hospitals, insurance companies, and healthcare platforms

---

## 📦 What is a FHIR Bundle?

FHIR data is usually provided as a **Bundle**.

### Bundle means:
- A collection of multiple healthcare resources
- Usually related to **one patient**
- Sent together as a single transaction

### Example (simplified):
```json
{
  "resourceType": "Bundle",
  "entry": [
    { "resourceType": "Patient" },
    { "resourceType": "Encounter" },
    { "resourceType": "Condition" }
  ]
}
