Part 6 — Capstone Architecture Design (15 marks)
Context
A mid-sized hospital network wants to build an AI-powered data system with four goals:

Predict patient readmission risk using historical treatment data
Allow doctors to query patient history in plain English (e.g., "Has this patient had a cardiac event before?")
Generate monthly reports for hospital management (bed occupancy, department-wise costs)
Stream and store real-time vitals from ICU monitoring devices
Tasks
6.1 — Architecture Diagram (5 marks)

Create part6-capstone/architecture_diagram.png showing:

All data sources
Storage systems used (and for what purpose)
Data flow from source to AI model / reporting layer
Clear labels on all components
You may use any tool (draw.io, Excalidraw, Lucidchart, or even a clear hand-drawn and photographed diagram).

6.2 — Design Justification (10 marks)

In part6-capstone/design_justification.md, under the following sections, write 400–500 words total:

## Storage Systems
(Which databases/storage systems did you choose for each of the 4 goals and why)

## OLTP vs OLAP Boundary
(Where does the transactional system end and the analytical system begin in your design)

## Trade-offs
(Identify one significant trade-off)