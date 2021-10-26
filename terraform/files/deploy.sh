#!/bin/bash
sleep 20
set -e
APP_DIR=${1:-$HOME}
sudo apt-get update
sudo apt-get install -y git
apt-get install -y docker
