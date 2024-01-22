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


df -h

free -g

nproc

ps -ef | grep snap | awk -F" " '{print$2}'
