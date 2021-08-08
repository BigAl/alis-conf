#!/usr/bin/env bash
set -e

# Arch Linux Install Script (alis) installs unattended, automated
# and customized Arch Linux system.
# Copyright (C) 2021 picodotdev

GITHUB_USER="bigal"
BRANCH="main"
GITHUB_REPO="alis-conf"

while getopts "u:" arg; do
  case ${arg} in
    u)
      GITHUB_USER=${OPTARG}
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      exit 1
      ;;
  esac
done

rm -f alis.conf
rm -f alis-packages.conf

curl -O https://raw.githubusercontent.com/"${GITHUB_USER}"/"${GITHUB_REPO}"/"${BRANCH}"/alis.conf
curl -O https://raw.githubusercontent.com/"${GITHUB_USER}"/"${GITHUB_REPO}"/"${BRANCH}"/alis-packages.conf