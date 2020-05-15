#!/bin/bash

jq '.cells[3].outputs[0].text' nitsche_corners.ipynb | grep n | sed -e 's/["\\n ]//g' | sed -e 's/,$//g' >> ex2adaptive.csv
jq '.cells[4].outputs[0].text' nitsche_corners.ipynb | grep n | sed -e 's/["\\n ]//g' | sed -e 's/,$//g' >> ex2uniform.csv
