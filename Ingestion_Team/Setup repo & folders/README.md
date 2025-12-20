# FHIR Healthcare Analytics – Repository Setup & Folder Structure

## Objective
This document explains the repository setup and folder organization used for the
FHIR Healthcare Analytics project, following the Databricks Lakehouse
(Bronze–Silver–Gold) architecture.

The goal is to maintain a clean, scalable, and review-friendly structure
for ingesting, transforming, and analyzing semi-structured FHIR JSON data.

---

## Repository Overview

The repository is structured to clearly separate responsibilities across
data ingestion, transformation, analytics, and governance.



---

## Bronze–Silver–Gold Architecture Explanation

### 🥉 Bronze Layer
- Stores raw FHIR JSON data with minimal transformation
- Preserves original structure for auditability
- Schema inference enabled for semi-structured data

### 🥈 Silver Layer
- Flattened and normalized FHIR resources
- One table per FHIR resource (Patient, Encounter, Observation, etc.)
- Cleaned, structured, and analytics-ready

### 🥇 Gold Layer
- Business-focused analytical datasets
- Joined and aggregated views
- Used directly by dashboards and reports

---

## Key Design Principles
- Clear separation of concerns
- Scalable folder hierarchy
- Easy onboarding for new team members
- Review and audit friendly

---

## Status
**Setup repo & folders: COMPLETED**

Note:
> Repository structured as per Lakehouse architecture. README enhancement suggested.
