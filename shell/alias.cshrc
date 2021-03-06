# Allows to use alias with sudo commands
alias sudo 'sudo '

#-------------------
# Global alias
#-------------------
# alias -g G '| grep -i'


# Personnal Aliases
#-------------------

# avoid usual mistake
alias dc cd

alias cdp 'cd /home/pablo.mora/projects/mp2784/i2c_ahb_lite_bridge/'


# For this to work need $EDITOR pointing to vim 
alias rm 'rm -i'
alias cp 'cp -i'
alias mv 'mv -i'
# Prevents accidentally clobbering files.
alias mkdir 'mkdir -pv'

# alias tldr 'tldr find'

#alias history 'fc -El 1'
alias grep 'grep -i'
# alias find 'find . -name "*\!1*"'
# alias find 'find . -name \!1'
# alias grep 'grep -i \!* *'
alias h 'history 100'
alias hg 'history | grep'
alias j 'jobs -l'
alias cal 'cal -m -3'
# Lista de directorios para navegar por ellos. TODO : aun no pirula
alias d 'dirs -v | head -20'
alias t 'tree -L 2'

# Pretty-print of some PATH variables:
# alias path 'echo -e ${PATH//:/\\n}'
# alias libpath 'echo -e ${LD_LIBRARY_PATH//:/\\n}'


alias du 'du -skh'    # Makes a more readable output.
alias df 'df -kTh'

# Find spaces rescursively
alias sp 'find . -type f -name "*[[:space:]]*"'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls 'ls -lh --color --time-style long-iso'
alias l 'ls'
alias le 'ls -lXB'         #  Sort by extension.
alias lk 'ls -lSr'         #  Sort by size, biggest last.
alias lt 'ls -ltr'         #  Sort by date, most recent last.
alias lc 'ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu 'ls -ltur'        #  Sort by/show access time,most recent last.
alias lx 'find . -maxdepth 1 -type f -executable' # list executables
# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll "ls -lv"
alias lm 'll |more'        #  Pipe through 'more'
alias lr 'll -R'           #  Recursive ls.
alias la 'll -A'           #  Show hidden files.
alias lh 'ls -Ad .*'       #  Only show hidden files
# alias lf 'ls -d .*/ */'    #  Only show folders
alias lf 'ls -d */'    #  Only show folders

# show different extensions. Useful when a lot of files in folder
# alias ext 'find . -type f | awk -F. '!a[$NF]++{print $NF}''


# Add to bin : Quickly create an script to do something
# alias ab 'gvim -c 'set autochdir' ~/bin/'         # Create new file
# alias ab 'gvim ~/bin/ +':cd %:h'
# See functions

alias lb 'ls ~/bin'        # What was the name of that custom script that did ...
alias cb 'cd ~/bin'         
# Doesnt search on hidden folders
# alias bigfiles 'ls -Sr **/*(.Lm+100)'
# alias bigfiles 'find . -type f -size +100M -exec ls -lh {} \;'
# alias bigfolders 'du -hs */ | sort -nr | head'
alias bF 'du -hs .* * | sort -rh | head'
alias bf 'find . -type f -print0 | xargs -0 du -h | sort -hr | head -20'

# alias tree 'tree -Csuh'    #  Nice alternative to 'recursive ls' ...
alias cx 'chmod +x $*'


#-------------------------------------------------------------
# File Permissions
#-------------------------------------------------------------
# find . -type d -exec chmod 0755 {} \;
# find . -type f -exec chmod 0644 {} \;
# Change folders and files one liner :
# chmod -R u+rwX,go+rX,go-w .
# chmod -R u+rwX,go+rX-w .


#-------------------------------------------------------------
# Quick edits and re-loads
#-------------------------------------------------------------
# alias vim '$HOME/bin/vim/bin/vim'
alias vi '\vi -u NONE'
alias vim 'vim -S /home/pablo.mora/projects/mp2784/vim.source'
# alias gvim '$HOME/.local/bin/gvim'
alias ec 'vim /home/${USER}/.cshrc'
alias ea 'vim /home/${USER}/.alias'
alias sa 'source /home/${USER}/.alias'
alias v 'vim'
alias ev 'vim ~/.vimrc ~/dotfiles/vim/general.vimrc ~/dotfiles/vim/plugins.vimrc'
alias bc 'bc -l'
#-------------------------------------------------------------
# X
#-------------------------------------------------------------
# alias logoff '/usr/bin/cinnamon-session-quit --no-prompt'

#-------------------------------------------------------------
# Other
#-------------------------------------------------------------

# Super one-liner. Shows most used commands. Useful to find out what commands to aliase/automate
# alias mu 'history 0 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10'


#-------------------------------------------------------------
# Sofware
#-------------------------------------------------------------
alias vncserver 'vncserver -geometry 1920x1080'
# alias vncserver 'vncserver -geometry 1280x720'
alias vnckill 'vncserver -kill :1'
alias google 'chromium-browser &> /dev/null &'
# alias y 'google-chrome "www.youtube.com" &> /dev/null &'
alias p '$USER/miniconda2/python'
# alias p3 'python'
alias feh 'feh -. -d --draw-tinted' # Fit to screen images, draw filename
# aliasÂ feh 'feh -xZGd -B black --draw-tinted -g 1366x768'
# alias df 'pydf'
alias pdfreader 'evince'
alias f 'feh'
alias oo 'libreoffice'
alias pdfgrep 'pdfgrep -HRi'

#-------------------------------------------------------------
# tcsh/csh "Functions"
#-------------------------------------------------------------

# Change console title with argument passed to ct (CSH shite)
alias ct 'echo -ne "\033]0;\!*\007"'


