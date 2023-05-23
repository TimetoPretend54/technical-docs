# Run command under folder w/ CSVs
grep -E 'PATTERN1|PATTERN2' * | awf -F'|' 'NR%2{printf "%s ",$0;next;}1' | awk -F'|' '{ printf "%s %.10f %.10f %.10f %.4f%%\n", $1, $9, $20, $9-$20, ($9-$20) * 100 }' | sort -nk4 | awk 'NR==1{$0="COL1 COL2 COL3 COL4 COL5"RS$0}1' | column -t

# Newline Vers
grep -E 'PATTERN1|PATTERN2' * \                         # Search for the CSV Lines We are interested in
| awf -F'|' 'NR%2{printf "%s ",$0;next;}1' \            # Combine every 2 Lines (could change the modulus for whatever pattern needed, ex: need to combine every 5 lines, use 'NR%5')
| awk -F'|' '{ printf "%s %.10f %.10f %.10f %.4f%%\n", $1, $9, $20, $9-$20, ($9-$20) * 100 }' \     # Format/Do Calculations on the Data
| sort -nk4 \                                           # Sort the data (ascending order), k4 = Col 4 (ex: k2 = Col 2), use '-nrk4' for descending order
| awk 'NR==1{$0="COL1 COL2 COL3 COL4 COL5"RS$0}1' \     # Add a beginning line for "column" command's headers
| column -t                                             # Print out table to Terminal Window
