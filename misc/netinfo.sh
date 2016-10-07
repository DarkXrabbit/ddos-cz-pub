#!/bin/sh
echo "%%%%%%%%%%%%%%%%%%%%%%% interfaces"
ip addr | egrep "(^[0-9]|inet)"
echo "%%%%%%%%%%%%%%%%%%%%%%% routes"
ip -0 route | sort -n
