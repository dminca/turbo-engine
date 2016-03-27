#!/usr/bin/awk -f
# Print the filelist exported by the ls command

$6 == "mar" { sum += $5 }
END {
  format = "%s\n"
  printf format, "Total"
  printf format, "-----------"
  printf "%s%s", int(sum/1040), " MB"
}
