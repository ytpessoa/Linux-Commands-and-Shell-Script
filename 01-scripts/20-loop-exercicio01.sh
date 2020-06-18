#!/bin/bash
clear

UID_MIN=$(grep "^UID_MIN" /etc/login.defs | tr -d '\t' | cut -d " " -f2 | tr -d '\n')
UID_MAX=$(grep "^UID_MIN" /etc/login.defs | tr -d '\t' | cut -d " " -f2 | tr -d '\n')
