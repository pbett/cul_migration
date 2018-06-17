#!/bin/bash
# This creates a login cookie so you can access your attachments directly
# (otherwise, you'd just get an html page
#  which you'd have to load to get the file)

wget --save-cookies cookies.txt \
     --keep-session-cookies \
     --post-data 'username=myusername&password=mypassword' \
     --delete-after \
     http://www.citeulike.org/login.do
