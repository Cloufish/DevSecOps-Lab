#!/bin/bash
ssh-keygen -t ed25519 -C "ansible"

ssh-copy-id -i ~/.ssh/id_ed25519.pub <IP_ADDRESS>
