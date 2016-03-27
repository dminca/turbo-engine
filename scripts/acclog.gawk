#!/usr/bin/gawk -f
# Filter data from the Apache access_log

BEGIN {
  format = "%-10s \t%s \t%s\n"
  printf format, "Address", "Time", "\tCode"
  printf format, "-------", "-----", "\t-----"
}

# Use gsub to strip [date from $4
{
  gsub(/\[+.*16:/, "", $4)
  printf format, $1, $4, $9
}
