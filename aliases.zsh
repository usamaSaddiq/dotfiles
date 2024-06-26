#####################################################################################
# Navigation                                                                        #
#####################################################################################

#####################################################################################
# Slack                                                                             #
#####################################################################################

alias s="cd /Users/usama.saddiq/src/ && ./slack"

#####################################################################################
# Rails + Bundler                                                                   #
#####################################################################################
alias b="bundle"
alias be="bundle exec"
alias ber="bundle exec rails"
alias bers="bundle exec rspec"
alias berc="bundle exec rubocop"
alias berk="bundle exec rake"
alias berg="bundle exec rails generate"

alias br="bin/rails"
alias brk="bin/rake"
alias brt="bin/rails test"
alias brr="bin/rails routes"
alias brg="bin/rails generate"


alias pda="RAILS_ENV=development bin/rails assets:precompile"
alias pta="RAILS_ENV=test bin/rails assets:precompile"

# Although oh-my-zsh offers some of these out of the box, 
# redefining some for clairty.
# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias hme="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

#####################################################################################
# Change DIR                                                                        #
#####################################################################################
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias src="cd ~/src"

#####################################################################################
# List files                                                                        #
#####################################################################################
# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
	export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
else # macOS `ls`
	colorflag="-G"
	export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, excluding . and ..
alias la="ls -lAF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# open current zsh configuration file using vscode 
alias zshconfig="code ~/.zshrc"

#####################################################################################
# Git                                                                               #
#####################################################################################
alias gbcp="git rev-parse --abbrev-ref HEAD | tr -d '\n' | pbcopy" # copy current branch name

#####################################################################################
# MAC                                                                               #
#####################################################################################

# open chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Print each PATH entry on a separate line
alias dpath='echo -e ${PATH//:/\\n}'

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

#####################################################################################
# Misc                                                                              #
#####################################################################################

# Easier terminal reloading
alias reload="source ~/.zshrc"

# Always enable colored `grep` output
alias grep='grep --color=auto'

# Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias hd="hexdump -C"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Print each PATH entry on a separate line
alias dpath='echo -e ${PATH//:/\\n}'
