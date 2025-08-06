
awk 'NR % 4 == 1 {printf "%s,", $0} END {print ""}' pkg.txt
