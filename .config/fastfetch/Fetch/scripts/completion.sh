#!/bin/bash
source ~/.config/fastfetch/Fetch/scripts/vars.sh

if [[ $percentage -lt 100 ]]
then
  ProgressBar ${install_time} ${end_challenge}
else [[ $percentage -ge 100 ]]
  echo "Challenge completed"
fi
