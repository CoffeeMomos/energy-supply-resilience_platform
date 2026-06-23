# Energy Supply Resilience Platform

## Problem Statement

India imports approximately 88% of its crude oil and remains vulnerable to geopolitical disruptions across critical shipping corridors such as the Strait of Hormuz and the Red Sea.

## Solution

An AI-powered Energy Supply Chain Resilience Platform that:

- Monitors geopolitical risk signals
- Maintains a Neo4j knowledge graph
- Simulates disruption scenarios
- Calculates refinery-level risk
- Generates procurement recommendations

## Current Progress

### Neo4j Knowledge Graph

Nodes:
- Countries
- Corridors
- Ports
- Refineries
- Risk Events

Relationships:
- EXPORTS_VIA
- ENTERS_VIA
- SUPPLIES
- THREATENS

### Risk Engine

Current Formula:

Risk Score =
0.6 × Severity +
0.4 × Probability

Refinery Risk =
Risk Score × Exposure

## Planned Features

- News ingestion agent
- LLM signal extraction
- Neo4j auto-update
- Procurement recommendation engine
- Dashboard

## Tech Stack

- Neo4j Aura
- Python
- LLM APIs
- Streamlit
