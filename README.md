Hello World Pipeline
====================
[![Nextflow](https://img.shields.io/badge/nextflow-%E2%89%A520.01.0-brightgreen.svg)](https://www.nextflow.io/)

A simple script showing the basic Hello World! example for the Nextflow pipeline. 
# Description
4 processes, each of them append a line to a file consumed by the next process.
At the end of the execution, the content of the final file is shown.

# Execution
Clone the project and run:

    nextflow run main.nf -profile local/sge 

or with [pipeline sharing](https://www.nextflow.io/docs/latest/en/latest/sharing.html), just run:
    
    nextflow run eipm/hello-nextflow 
    
## DAG visualization
![DAG](img/hello-nextflow-dag.png)