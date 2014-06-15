
# kanjizsh
# An oh-my-zsh theme.
#
# Author:      archer308
# Version:     x.xx
# Last Update: 2014-06-04
#
# Credits:
# Heavily based on two other themes, "robbyrussell" and "muse".
# This theme is basically robbyrussell with some of the extra git goodness of muse, plus a little something extra.
#


# Basic command prompt appearance.
# =====================================
# Original robbyrussell prompt:
# local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
# PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

# The PROMPT from muse for reference:
# PROMPT='%{$PROMPT_SUCCESS_COLOR%}%~%{$reset_color%} %{$GIT_PROMPT_INFO%}$(git_prompt_info)%{$GIT_DIRTY_COLOR%}$(git_prompt_status) %{$reset_color%}%{$PROMPT_PROMPT%}ᐅ%{$reset_color%} '


# kanjizsh prompt:
local ret_status="%(?:%{$fg_bold[green]%}正 :%{$fg_bold[red]%}違 %s)"
#       1            2                     3               4                                   5                                       6 7
PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} $(git_prompt_status) % %{$reset_color%}'
#
# 1 Return status of last command.
#   Ex:  正
#
# 2 Precise time of day?  But this appears to do nothing.
#   Ex:  
#   References:
#   http://railscasts.com/episodes/308-oh-my-zsh?view=comments
#   http://www.nparikh.org/unix/prompt.php
#
# 3 Trailing component of current working directory.
#   Ex:  mycurrentdir
#   Reference:
#   http://www.nparikh.org/unix/prompt.php
#
# 4 Git prompt info.
#   Ex:  git:(devel)
#
# 5 Git prompt status.
#   Ex:  汚 異加
#
# 6 ???
#
# 7 Reset the terminal colors back to defaults?
#



# git prompts
# =====================================
# Original git prompts from robbyrussell:
# ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# Additional git prompts we want from muse: 
# ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%}✚%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[166]%}✹%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%}✖%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%}➜%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%}═%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%}✭%{$reset_color%}"


# kanjizsh git prompts:
ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}汚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[green]%}清%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%}加%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[166]%}変%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%}削%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%}名%{$reset_color%}"
# 違？異？浮？
# TODO: Figure out why the first character is bold if we do not have this extra %{$reset_color%} here.  Guess that's not a bad thing though...
#ZSH_THEME_GIT_PROMPT_UNMERGED="%{$reset_color%}%{$FG[177]%}異%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[177]%}異%{$reset_color%}"
# 漏？余？除？外？置？別？監視？浮？漂？
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%}浮%{$reset_color%}"


