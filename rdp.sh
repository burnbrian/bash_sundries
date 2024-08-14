#!/bin/env bash
# Configure XRDP.ini on remote machine to only accept localhost connections!
printf %s "Starting SSH Tunnel in Background..."
ssh -N <ssh-alias> -L 3389:127.0.0.1:3389 &
sleep 1
printf %s "Sleep finished, connecting to RDP..."
# You use local username/password depending on how you've configured XRDP
xfreerdp +nego +sec-rdp +sec-tls +sec-nla /u:kali /p:kali /v:127.0.0.1 /size:1920x1080 /dynamic-resolution