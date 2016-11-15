#!/bin/bash

diff b a > sw.diff
patch a sw.diff
cat -e a 
