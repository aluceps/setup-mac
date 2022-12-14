if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval (/opt/homebrew/bin/brew shellenv)

# alias
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias vi="vim"
alias diff="colordiff"
alias gg="ghq get"
alias convert2gif="convert_to_gif"

# path
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g PATH ~/Library/Android/sdk/platform-tools $PATH
set -g PATH ~/ghq/github.com.private/aluceps/fish-shell/function $PATH

# for Java
fish_add_path /opt/homebrew/opt/openjdk@11/bin
set -gx CPPFLAGS "-I/opt/homebrew/opt/openjdk@11/include"

# fish
set -U theme_display_date no
set -U theme_display_cmd_duration no

# fish-ghq
set GHQ_SELECTOR peco
set GHQ_SELECTOR_OPTS --layout=bottom-up
