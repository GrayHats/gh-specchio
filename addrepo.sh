#!/bin/bash

echo "[+] ADD REPO"
echo "$1" >> list.txt
git clone $1
