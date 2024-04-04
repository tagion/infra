#!/usr/bin/env bash

systemd-ask-password | base64 --decode | git-crypt unlock
