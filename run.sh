#!/bin/bash
hostname -I
sudo /usr/sbin/sshd -D &
butterfly.server.py --unsecure --host=* &
trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM EXIT
wait
