#!/bin/bash

jq '.cells[3].outputs[0].text' nitsche_corners.nbconvert.ipynb | grep n | sed -e 's/["\\n ]//g' | sed -e 's/,$//g' >> ex2adaptive.csv
jq '.cells[4].outputs[0].text' nitsche_corners.nbconvert.ipynb | grep n | sed -e 's/["\\n ]//g' | sed -e 's/,$//g' >> ex2uniform.csv
jq -r '.cells[3].outputs[1].data."image/png"' nitsche_corners.nbconvert.ipynb | base64 -d > ex2_adaptive_1.png
jq -r '.cells[3].outputs[3].data."image/png"' nitsche_corners.nbconvert.ipynb | base64 -d > ex2_adaptive_2.png
jq -r '.cells[3].outputs[5].data."image/png"' nitsche_corners.nbconvert.ipynb | base64 -d > ex2_adaptive_3.png
jq -r '.cells[3].outputs[7].data."image/png"' nitsche_corners.nbconvert.ipynb | base64 -d > ex2_adaptive_4.png
jq -r '.cells[4].outputs[1].data."image/png"' nitsche_corners.nbconvert.ipynb | base64 -d > ex2_uniform_1.png
jq -r '.cells[4].outputs[3].data."image/png"' nitsche_corners.nbconvert.ipynb | base64 -d > ex2_uniform_2.png
jq -r '.cells[4].outputs[5].data."image/png"' nitsche_corners.nbconvert.ipynb | base64 -d > ex2_uniform_3.png
jq -r '.cells[4].outputs[7].data."image/png"' nitsche_corners.nbconvert.ipynb | base64 -d > ex2_uniform_4.png
