#!/bin/bash -e

MAC="$(ip addr show wlan0 | awk '/ether/{print $2}' || true)"
if [[ "$MAC" =~ ^([a-fA-F0-9]{2}:){5}[a-fA-F0-9]{2}$ ]] ; then
  CODENAME="$(awk -F"[)(]+" '/VERSION=/ {print $2}' /etc/os-release || true)"
  URL="deb http://soma-dev-repo.s3.amazonaws.com/id/$MAC/apt/raspbian $CODENAME main"
  echo $URL > /etc/apt/sources.list.d/soma-dev-repo-id.list || true
fi
