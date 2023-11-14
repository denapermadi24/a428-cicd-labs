#!/bin/bash
echo 'Waiting for 1 minute before proceeding...'
sleep 60
chmod +x ./jenkins/scripts/sleep.sh
chown jenkins:jenkins ./jenkins/scripts/sleep.sh
