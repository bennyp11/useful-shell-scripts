#!/bin/bash
find . -type d \( -name 'node_modules' -o -name '.git' \) -prune -o -type f -print -o -type d -print
