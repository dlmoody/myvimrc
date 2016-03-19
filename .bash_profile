#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="/Users/davidmoody/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='brunton'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh


### Android dev tools
export ANDROID_HOME="/Users/davidmoody/Library/Android/sdk"
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"


# digital ocean and juju
export DO_CLIENT_ID="5c99171c805897cc4f834445ce274dcb"
export DO_API_KEY="ad5c51506837601f9d46528137d8bc10"
export JSTESTDRIVER_HOME=~/Documents/jsTestDriver


alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias docker='docker --tlsverify=false'
alias mvim="/Applications/MacVim.app/contents/MacOS/MacVim"

# project locations
alias bfg='cd ~/Projects/timmons/bfg-master'

# important files
export MY_VIMRC="~/.vimrc"
export MY_MUXCONF="~/.tmux.conf"


# dot net stuff
source dnvm.sh

export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:/Users/davidmoody/.dnx/runtimes/dnx-mono.1.0.0-beta6/bin:/Users/davidmoody/Library/Android/sdk/tools:/Users/davidmoody/Library/Android/sdk/platform-tools:/Users/davidmoody/.rvm/gems/ruby-2.2.1/bin:/Users/davidmoody/.rvm/gems/ruby-2.2.1@global/bin:/Users/davidmoody/.rvm/rubies/ruby-2.2.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/davidmoody/.rvm/bin:/Users/davidmoody/.gem/ruby/1.8/bin:/opt/nginx/sbin:/usr/local/mysql/bin

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


