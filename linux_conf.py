#! /bin/python

import os,sys,subprocess

while True:
  print "************************************************"
  print "THIS FILE IS USEFUL TO CONFIGURE LINUX AT ONE GO" 
  print "************************************************"
  print "1. Check IP ADDRESSES"
  print "2. Check SESTATUS"
  print "3. Check IPTABLES"
  print "4. Check PORT NUMBER STATUS"
  print "5. Exit"
  input = raw_input("Enter Your Choice: ")

  if input == '1':
    os.system('clear')
    os.system('ifconfig -a')
    print "-----------------------------------------------"
  elif input == '2':
    os.system('clear') 
    os.system('sestatus')     
    print "-----------------------------------------------"
  elif input == '3':
    os.system('clear')
    os.system('iptables -L') 
    print "-----------------------------------------------"
  elif input == '4':
    os.system('clear')
    port_number = raw_input("PLEASE ENTER PORT NUMBER : ")
    if port_number <= '0':
      print "Please Enter Valid Port Number"        
      print "-----------------------------------------------"
    else:
      command = 'netstat -antpl | grep '+ port_number
      print command
      os.system(command)   
      # subprocess.check_output(command, shell=True)
      print "-----------------------------------------------"
  elif input == '5':
    sys.exit()
  else:
    print "Wrong Input"

