#!/bin/bash

ifconfig | grep 'ether' | sed 's/[[:space:]]ether//g'
