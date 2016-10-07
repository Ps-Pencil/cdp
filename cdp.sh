#!/bin/bash

usage="Usage: cdp [DIRECTORY]. Leave empty for go up one directory"
function cdp()
{
    if [ -z "$1" ]
    then
        cd ..
    else
        # escape the slashes in the name so that it does not mess with sed
        parent_dir="$1"
        parent_dir=${parent_dir/\//\\\/}
        dest_dir=`pwd|sed -e "s/${parent_dir}.*$/${parent_dir}/"`
        cd "$dest_dir"
    fi
}
