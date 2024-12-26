#!/bin/bash

[[ "$EDITOR" == "" ]] && ed="nvim" || ed=$EDITOR

search_dir=$1

projects=$(find $search_dir -type d -prune | fzf)

if [ -z "$projects" ]; then
    echo "No project selected"
    exit 1
fi

echo "Opening $projects"
$ed $projects
