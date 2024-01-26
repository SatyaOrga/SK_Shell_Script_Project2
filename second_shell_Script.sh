#!/bin/bash


###########################################################
# Author: Satya Korlepara
#Date : 14 Jan 2024
#
#This script outputs the Node Health
#
#Version : v1
#
# This section we will call it as "MetaData" pf the script
############################################################

set -x # Debug Mode
set -e # Exit the script when there is an error
set -o pipefail

#set -exo debug mode


df -h


free -g


nproc



ps -ef | grep amazon | awk -F" " '{print $2}'
