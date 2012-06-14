# mokuplam zsh theme by mieky, https://github.com/mieky
# originally based on 'blinks' zsh theme, https://github.com/blinks

function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{%F{blue}%}±%{%f%k%b%}"
  else
    echo ' '
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="[%{%B%F{blue}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%K{black}%B%F{green}%}] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%K{green} %B%F{green}★  %b%{%b%F{yellow}%K{black}%} %{%K{black}%B%F{green}%}%n%{%B%F{blue}%} %~%{%B%F{green}%} $(git_prompt_info)%K{black}%{%f%k%b%} %B%F{green}%#%k%b '
