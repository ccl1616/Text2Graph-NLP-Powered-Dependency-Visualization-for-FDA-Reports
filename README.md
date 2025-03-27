# Text2Graph: NLP-Powered Dependency Visualization for FDA Reports

This tool automates the process of converting FDA Medical Device Reports (MDRs) into graph database schemas, creating navigable dependency relationships between terms in the reports.

## Background

Medical Device Reports contain valuable information about device-related adverse events. However, these reports are typically in unstructured text format, making analysis challenging. This framework leverages natural language processing to extract linguistic dependencies and represent them as a knowledge graph in Neo4j, enabling more effective query, analysis, and visualization of relationships between entities in medical device reports.

## Design

The system works in three main stages:

1. **Text to Part-of-Speech (POS) Tags**: 
   - Uses spaCy NLP library to parse text documents
   - Identifies tokens, their parts of speech, dependencies, and head relationships
   - Creates an intermediate POS file for further processing

2. **POS to Neo4j Schema**:
   - Converts POS information into Neo4j Cypher queries
   - Creates nodes for tokens with properties (text, POS, position)
   - Establishes dependency relationships between nodes

3. **Neo4j Graph Execution**:
   - Executes the generated schema in Neo4j
   - Creates a navigable graph database of the document structure

## How to Execute

### Prerequisites
- Python 3.x
- spaCy with English language model (`en_core_web_sm`)
- Neo4j Desktop application

### Steps
1. **Environment Setup**:
   ```bash
   pip install -U spacy
   python -m spacy download en_core_web_sm
   ```

2. **Configure File Paths**:
   - Modify the input file path to point to your text document
   - Set output paths for intermediate POS file and Neo4j schema file
   ```python
   input_file = "<path to input file>"
   pos_file = "<path to output pos file>"
   output_file = "<path to output schema file>"
   ```
   Example input (Reference: [FDA Medical Device Report Data](https://www.fda.gov/medical-devices/medical-device-reporting-mdr-how-report-medical-device-problems/mdr-data-files#download))
   ```
   INFORMATION RECEIVED BY MEDTRONIC INDICATED THAT, CUSTOMER PASSED AWAY AT HOME ON (B)(6) 2022. THE CUSTOMER WAS NOT ADMITTED TO A HOSPITAL PRIOR TO THE REPORTED INCIDENT. THE CUSTOMER PASSED AWAY IN SLEEP. THE CAUSE FOR DEATH AND CUSTOMERøS BLOOD GLUCOSE VALUE WAS UNKNOWN. THE CUSTOMER WAS WEARING THE INSULIN PUMP AT THE TIME OF DEATH. THE CUSTOMER WAS NOT USING THE SENSOR. THE INSULIN PUMP WILL NOT BE RETURNED FOR ANALYSIS.
   ```

3. **Generate POS Tags**:
   - Run the `process_sentences_with_heads()` function to create the POS file

4. **Generate Neo4j Schema**:
   - Run the `generate_neo4j_queries()` function to create the Cypher file

5. **Execute in Neo4j**:
   - Open Neo4j Desktop and create or select a database
   - If using an existing database, clear it with: `MATCH (n) DETACH DELETE n;`
   - Copy the contents of the generated cypher file and execute in Neo4j Browser
   - Visualize the graph with: `MATCH (n) RETURN n LIMIT 25;`

## Results
![whole_graph](https://hackmd.io/_uploads/Sk9jnQM6Jx.png)


The output is a graph database in Neo4j where:
- Each word/token is represented as a node with properties:
  - id: Unique identifier
  - text: The actual word
  - pos: Part of speech (NOUN, VERB, ADJ, etc.)
  - position: Position in the sentence
- Relationships between nodes represent linguistic dependencies (subject, object, etc.)

This graph structure enables:
- Visual exploration of document structure
- Complex queries about entity relationships
- Pattern discovery across multiple reports
- Identification of key entities and their contextual relationships

## Sample Queries

```cypher
// Find all direct relationships between medical devices and adverse events
MATCH (d:Token {pos: 'NOUN'})-[r]->(e:Token {pos: 'NOUN'})
WHERE d.text CONTAINS 'DEVICE' AND e.text CONTAINS 'EVENT'
RETURN d, r, e

// Find the most common dependencies in the document
MATCH ()-[r]->() 
RETURN type(r) as dependency_type, count(*) as frequency
ORDER BY frequency DESC
LIMIT 10
```
