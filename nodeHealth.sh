#!/bin/bash

###############################################
# Author: Vignesh
# Date: 20/01/2024
#
# This Script outputs the node health
# 
# Version : v1
#
# ##############################################

set -x #Debug mode
set -e # exits the script when there is an error
set -o pipefail #set -e doesn't capture pipefail 

#shows the  
df -h

free -g

nproc
#getting the all process details with ps -ef and we use the grep cmd to get the process named "snap" after then we use the awk to  print the coloum to print $2
ps -ef | grep snap | awk -F" " '{print$2}'
