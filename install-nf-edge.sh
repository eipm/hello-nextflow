#!/usr/bin/env bash

# Azure Cloud requires Nextflow version 21.02.0-edge or later.
export NXF_EDGE=1
curl get.nextflow.io | bash
./nextflow -self-update