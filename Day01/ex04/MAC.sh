#!/bin/bash

{ ifconfig en0; ifconfig en1; } | grep 'ether' | sed -e 's/ether//g' 


