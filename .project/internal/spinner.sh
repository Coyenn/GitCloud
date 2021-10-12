#!/usr/bin/env bash

#!/usr/bin/env bash

spinner() {
    local cl="\r\033[K"
    local pid=$1
    local spinnging=true
    local delay=0.05
    local spinstr="⠏⠛⠹⠼⠶⠧"

    printf "  "

    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local tmp=${spinstr#?}

        if [ -z "$2" ]; then
            printf " \b\b\b${tmp:0:1} "
        else
            printf "${cl} ${tmp:0:1} ${2}"
        fi

        local spinstr=$tmp${spinstr%"$tmp"}
        sleep $delay
    done

    printf "${cl}"
}

("$@") &
spinner "$!"