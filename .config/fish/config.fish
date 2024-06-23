if status is-interactive
  set fish_greeting "
┣┳┻┳┳┻┫.・)ノ やあ
"
  date '+%Y/%m/%d %H:%M:%S'
  starship init fish | source
  eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  mise activate fish | source
  source /home/k47de/.config/fish/themes/nord.fish
end

#aliases
alias vi="nvim"
alias g="git"
alias nf="neofetch"
alias ls="eza -G --group-directories-first --icons=always"
alias la="eza -lGa --group-directories-first --icons=always"
alias lsg="eza -laG --group-directories-first --git --icons=always"
alias lst="eza -lTa --group-directories-first --git --icons=always"
alias cat='bat --paging=never'
alias grep="rg"
alias ping="pingu"

#cd home and clear
function ccd
  cd ~
  clear
end

# mkdir + cd
function mkcd
  set dirname $argv[1]
  mkdir -p $dirname
  cd $dirname
end

# cmp move hjkl
bind -M insert k "if commandline -P; commandline -f up-line; else; commandline -i k; end"
bind -M insert j "if commandline -P; commandline -f down-line; else; commandline -i j; end"

