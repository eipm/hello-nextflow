Hello World Pipeline
====================
[![Nextflow](https://img.shields.io/badge/nextflow-%E2%89%A520.01.0-brightgreen.svg)](https://www.nextflow.io/) [![Nextflow](https://img.shields.io/badge/nextflow-%E2%89%A520.01.0-brightgreen.svg)](https://www.nextflow.io/)


A simple script showing the basic Hello World! example for the Nextflow pipeline. 
# Description
4 processes, each of them appends a line (in a different language) to a file consumed by the next process.
At the end of the execution, the content of the final file is shown.

# Execution
Clone the project and run:

    nextflow run main.nf -profile local/sge 

or with [pipeline sharing](https://www.nextflow.io/docs/latest/en/latest/sharing.html), just run:
    
    nextflow run eipm/hello-nextflow 
    
# Output
    
``` bash
$ nextflow run eipm/hello-nextflow 
N E X T F L O W  ~  version 20.01.0
Pulling eipm/hello-nextflow ...
downloaded from https://github.com/eipm/hello-nextflow.git
Launching `eipm/hello-nextflow` [nauseous_austin] - revision: 83ede5f13c [master]
executor >  local (4)
[ad/53a790] process > sayHelloInItalian [100%] 1 of 1 ✔
[c0/0a38d8] process > sayHelloInFrench  [100%] 1 of 1 ✔
[2a/ffd88f] process > sayHelloInSpanish [100%] 1 of 1 ✔
[8a/2d40fc] process > sayHelloInEnglish [100%] 1 of 1 ✔
EIPM says:
Ciao world!
Bonjour world!
Hola world!
Hello world!
```    

# Azure Cloud
The pipeline can be executed on Azure Cloud.

First, edit <code>nextflow.azure.config</code> and add the batch/storage accounts' names and keys.

Then, install the latest Edge version of Nextflow with:
    
    ./install-nf-edge.sh
This will create the <code>nextflow</code> executable locally.

Finally, the pipeline can be launched as follows:

``` bash
$ ./nextflow -C nextflow.azure.config run main-azure.nf 
N E X T F L O W  ~  version 21.04.0-edge
Launching `main-azure.nf` [shrivelled_gates] - revision: bf54e09e5d
executor >  azurebatch (4)
[5e/cfec18] process > sayHelloInItalian (1) [100%] 1 of 1 ✔
[57/e66ab9] process > sayHelloInFrench (1)  [100%] 1 of 1 ✔
[c8/92bf47] process > sayHelloInSpanish (1) [100%] 1 of 1 ✔
[38/c459e5] process > sayHelloInEnglish (1) [100%] 1 of 1 ✔
Nextflow says: DONE
Completed at: 13-Apr-2021 16:18:01
Duration    : 3m 25s
CPU hours   : (a few seconds)
Succeeded   : 4
```

## DAG visualization
![DAG](img/hello-nextflow-dag.png)