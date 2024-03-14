#!/usr/bin/env bash
selected=`cat ~/.cht-languages ~/.cht-commands | fzf`
if [[ -z $selected ]]; then
    exit 0
fi

read -p "Enter Query for $selected:" query

if grep -qs "$selected" ~/.cht-languages; then
    query=`echo $query | tr ' ' '+'`
    bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
else
    bash -c "curl -s cht.sh/$selected~$query | less"
fi
