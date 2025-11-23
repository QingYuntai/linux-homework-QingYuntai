#!/bin/bash
#6.1

grep -v '^#' config.txt | grep 'server_name' | grep 'example.com;' | grep -v 'prod-'
