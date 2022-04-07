__zsh_prompt() {
    PROMPT=""
    PROMPT+='%{$fg_bold[blue]%}%(5~|%-1~/…/%3~|%4~)%{$reset_color%} ' # cwd
    PROMPT+='%(?:%{$reset_color%}➜ :%{$fg_bold[red]%}➜ )'             # User/exit code arrow
    PROMPT+='%{$reset_color%}'

    RPROMPT=""
    RPROMPT+='%(?..%{$fg_bold[red]%}$? )'
    RPROMPT+='%{$reset_color%}$(git_prompt_info)' # Git status

    unset -f __zsh_prompt
}
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}(%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[yellow]%}✗%{$fg_bold[cyan]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[cyan]%})"
__zsh_prompt
