#! /bin/bash

import sys

print "Please Enter File Name for displaying content on Console"

file_name = raw_input("Enter FIle Name here: ")
try:
  # open file stream
  file = open(file_name, "r")
  for line in file.readlines():
   print line.strip()
#  print "\n"
   
except IOError:
  print file_name," does not exist or There was an error reading from ", file_name
  sys.exit()


file.close()
