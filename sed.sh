sed -i 's/<look stuff>/change stuff/g' <fileName>

# Adding -i above will actually replace the stuff in actual file
# Adding g above will actually replace the stuff in all places



sed -in 's/<look stuff>/change stuff/Ipg' <fileName>

# -n will don't display anything on screen
# p in sed means only show lines that matches in the output
# I in sed means ignore upper or lower cases


sed -f <fileScript> fileName

# this will do all sed's mentioned in fileScript
###  File can look like below in .sh file ingnore tags
# file.sh
#    sed 's/gh/FG/g' 
#    sed 's/go/GO/g' 
#    sed 's/opop/POPOP/g' 
