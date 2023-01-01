#!/bin/bash
#
# Calculate how many years Rob Brown has been working.
#
StartedWorkYear="1995"
CurrentYear="$(date +'%Y')"

WorkingLife="$(expr ${CurrentYear} - ${StartedWorkYear})"

echo ${WorkingLife}
