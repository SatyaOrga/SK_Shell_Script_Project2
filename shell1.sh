#!/bin/bash


########################################
#
#Author: Satya Korlepara
#Purpose: Practce Shell script ccommands
#Date: 02 Feb 2024
#Version:V1
#
#To check Memory, CPU usage details on VMs
##########################################

set -x
set -e
set -o


df -h


nproc


free -g


ps -ef | grep python | awk -F" " '{print $4}'
