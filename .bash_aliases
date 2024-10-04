#!/bin/bash

# User specific aliases and functions

### Aliases ###

alias d='ls -Alh'
alias vi='vim'
alias update='sudo apt update && sudo apt upgrade'
alias remove='sudo apt autoremove'
alias term_size='echo "Width = $(tput cols) Height = $(tput lines)"'
alias shutdown='systemctl poweroff'
alias reboot='systemctl reboot'
alias count='find . -type f | wc -l'
alias cpv='rsync -ah --info=progress2'
# Get a root shell (Handle with care!)
alias root='sudo -i'

### Functions ###

# Report disk space
ds() {
    echo "Disk Space Utilization for $HOSTNAME"
    df -h
}

# Get a command from history based on part of it (an expression)
gh() {
  if [[ -z "$1" ]]; then
    echo "Usage: gh <EXPRESSION>" >&2
    return 1
  fi
  history | grep -i "$1"
}

# Check to see if a specified host is alive on the network
ping_host() {
  local target
  if [[ -z "$1" ]]; then
    echo "Usage: ping_host host" >&2
    return 1
  fi
  target="$1"
  ping -c1 "$target" &> /dev/null || \
    { echo "Host '$target' unreachable." >&2; return 1; }
  return 0
}

# Display a summary of system health
status() {
    { # Display system uptime
      echo -e "\nuptime:"
      uptime
      # Display disk resources skipping snap's pseudo disks
      echo -e "\ndisk space:"
      df -h 2> /dev/null | grep -v snap
      echo -e "\ninodes:"
      df -i 2> /dev/null | grep -v snap
      echo -e "\nblock devices:"
      /bin/lsblk | grep -v snap
      # Display memory resources
      echo -e "\nmemory:"
      free -m
      # Display latest log file entries
      if [[ -r /var/log/syslog ]]; then
        echo -e "\nsyslog:"
        tail /var/log/syslog
      fi
      if [[ -r /var/log/messages ]]; then
        echo -e "\nmessages:"
        tail /var/log/messages
      fi
      if [[ -r /var/log/journal ]]; then
        echo -e "\njournal:"
        journalctl | tail
      fi
    } | less
}



