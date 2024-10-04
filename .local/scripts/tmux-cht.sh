#!/bin/bash

# From ThePrimeagen
# '$selected' is a LANGUAGE or CORE_UTIL
# '$query' is specific topic/operation

selected=`cat ~/.tmux-cht-languages ~/.tmux-cht-command | fzf`
#if [[ -z $selected ]]; then
#    exit 0
#fi

read -p "Enter Query: " query

if grep -qs "$selected" ~/.tmux-cht-languages; then
    query=`echo $query | tr ' ' '+'`
    tmux neww bash -c "echo \"curl https://cht.sh/$selected/$query/\" & curl https://cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
else
    tmux neww bash -c "curl -s https://cht.sh/$selected~$query | less -R"
fi

