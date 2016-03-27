#!/usr/bin/awk -f
# Print the filelist exported by the ls command

$6 == "mar" { sum += $5 }
  END { print sum }
