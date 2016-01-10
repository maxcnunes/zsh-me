# μ (me)
# by Max Claus Nunes
# https://github.com/maxcnunes/me
# MIT License

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$FG[245]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_SVN_PROMPT_PREFIX=$ZSH_THEME_GIT_PROMPT_PREFIX
ZSH_THEME_SVN_PROMPT_SUFFIX=$ZSH_THEME_GIT_PROMPT_SUFFIX
ZSH_THEME_SVN_PROMPT_DIRTY=$ZSH_THEME_GIT_PROMPT_DIRTY
ZSH_THEME_SVN_PROMPT_CLEAN=$ZSH_THEME_GIT_PROMPT_CLEAN

vcs_status() {
  if [[ ( $(whence in_svn) != "" ) && ( $(in_svn) == 1 ) ]]; then
    svn_prompt_info
  else
    git_prompt_info
  fi
}

local ME_SYMBOL="%(?,%{$fg_bold[green]%}μ,%{$fg_bold[red]%}μ)"
PROMPT='${ME_SYMBOL} \
%{$fg_bold[white]%}%2~%{$reset_color%}\
$(vcs_status) \
%{$FG[015]%}❯%{$reset_color%}\
 '
