#!/bin/bash

echo "Current working directory"
pwd
echo ""

echo "Current User: "
whoami
echo ""

echo "Today is "
date +%m/%d/%y
echo ""


echo "Number of users logged in: "
users|wc -w 
echo ""

echo "Terminal number: "
tty
echo ""

