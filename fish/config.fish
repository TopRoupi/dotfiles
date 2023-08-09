set fish_greeting

. $HOME/.asdf/asdf.fish
. $HOME/.asdf/completions/asdf.fish

. ~/.asdf/plugins/dotnet-core/set-dotnet-home.fish

export ANDROID_HOME=$HOME/Android/Sdk

alias vim='nvim'
alias cnvim='nvim ~/.config/nvim/init.vim'
alias cfish='nvim ~/.config/fish/config.fish'
alias ns=nsbox-edge
alias nsbox=nsbox-edge
alias nr='nsbox-edge run'

fish_vi_key_bindings
