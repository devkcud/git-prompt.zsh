git_prompt() {
    local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    if [ -z "${branch}" ]; then return; fi

    local git_status=$(git status --porcelain -b 2>/dev/null)
    local out=""

    if grep -qE '^(\?\?| [A-Z])' <<< "${git_status}"; then
        out+="*"
    fi

    if grep -qE '^[A-Z]' <<< "${git_status}"; then
        out+="+"
    fi

    if grep -qE '\[(ahead|behind) [0-9]+\]' <<< "${git_status}"; then
        out+="!"
    fi

    echo " %F{blue}%B${branch}${out}%b"
}
