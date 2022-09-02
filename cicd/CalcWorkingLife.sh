#!/bin/bash
#
#
StartedWorkYear="1995"
CurrentYear="$(date +'%Y')"

WorkingLife="$(expr ${CurrentYear} - ${StartedWorkYear})"

echo ${WorkingLife}
