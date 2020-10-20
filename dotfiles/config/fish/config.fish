# alias
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias vi="vim"
alias diff="colordiff"
alias gg="ghq get"
alias gl="peco_select_ghq_list"
alias gc="peco_select_git_checkout"
alias convert2gif="convert_to_gif"

# path
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g JAVA_HOME (/usr/libexec/java_home -v "1.8") $JAVA_HOME
set -g PATH ~/Library/Android/sdk/platform-tools $PATH
set -g PATH ~/ghq/github.com.private/aluceps/fish-shell/function $PATH

# peco & history
function fish_user_key_bindings
	bind \cr 'peco_select_history (commandline -b)'
	bind \cl 'peco_select_ghq_list'
	bind \cb 'peco_select_git_checkout'
end
