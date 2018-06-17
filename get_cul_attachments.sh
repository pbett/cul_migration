#!/bin/bash

# First run cul_login.sh, after editing it
# to use your correct username and password.
# This creates a login cookie so that you
# can access the attached files.


attach_lines=`grep  citeulike-attachment mylibrary_downloaded.bib`

# Loop over lines in $attach_lines:
while read -r line; do
    # Split on '; ', put the results into an array:
    IFS='; ' read -r -a array <<< "$line"
    #
    # Form the url:
    # (note we strip off final 2 chars of the hash)
    url="http://www.citeulike.org${array[3]}?hash=${array[4]::-2}"
    #echo ${url}
    #
    # Set off the wget command:
    # (note we strip off the first char of the output filename)
    wget --load-cookies cookies.txt ${url} -O ${array[2]:1}
    #
    sleep 2   # Pause for 2 seconds to give the server a break
done <<< "$attach_lines"

