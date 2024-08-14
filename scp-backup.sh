#!/usr/bin/env bash
# Recursively backup files from EC2/Remote machine
scp -i ~/.ssh/id_rsa -r kali@<ip>:/home/kali/folder folder-backup