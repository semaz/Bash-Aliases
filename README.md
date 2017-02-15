# Bash aliases #

A list of useful bash aliases.

## Install ##

1. `git clone https://github.com/DevCreel/Bash-Aliases ~/BashAliases`
2. `cd && sh BashAliases/install.sh`

## Wiki ##

Description of all settings.

### Aliases ###

#### functions ####

`c` - clear<br>
`g` - git<br>
`reloadBash` - exec $SHELL -l<br>
`l.` - list of hidden files<br>
`ll` - list of all files<br>
`lsd` - list only directories<br>
`root`,`sudo` - sudo -i<br>
`bashsrc` - source bashrc file<br>
`bashedit` - edit and then source bashrc file<br>
`bashinst` - add string to bashrc file<br>
`ps2` - 'ps -ef | grep -v $$ | grep -i '<br>
`psg` - 'ps aux | grep -v grep | grep -i -e VSZ -e'<br>
`psme` - 'ps -ef | grep $USER --color=always '<br>
`hg` - history|grep<br>
`diff` - colordiff<br>
`composer` - 'php /usr/local/bin/composer'<br>


#### file ####

`f` - find file by name<br>
`edit` - 'open -e'<br>
`numFiles` - print number of files<br>
`~` - 'cd ~'<br>
`cd..` - 'cd ..'<br>
`..` - 'cd ..'<br>
`...` - 'cd ../../'<br>
`....` - 'cd ../../../'<br>
`.....` - 'cd ../../../../'<br>
`cdl` - go to folder and ls<br>
`cdla` - go to folder and ls -la<br>
`finderHiddenShow` - OSX Finder show hidden files<br>
`finderHiddenHide` - OSX Finder hide hidden files<br>
`mkdir` - 'mkdir -pv'<br>
`rmdir` - 'rm -rf'<br>
`mcd` - make dir and go to that dir<br>
`cleanupDS` - remove all .DS_Store<br>
`extract` - extract archive<br>

#### log ####

`tf` - run tailf or multitail (if installed)<br>

#### network ####

`flushDNS` - flush OS X DNS<br>
`myip` - print yours ip-adress<br>
`trace` - mtr<br>
`openPorts` - print all open ports<br>
`edithosts` - 'sudo nano /etc/hosts'<br>
`c` - clear<br>

#### apt ####

`apt` - 'sudo apt-get'<br>
`update` - 'sudo apt-get update  --yes'<br>
`upgrade` - 'sudo apt-get upgrade'<br>
`install` - 'sudo apt-get install --yes'<br>
`purge` - 'sudo apt-get purge --yes'<br>
`remove` - 'sudo apt-get remove --yes'<br>
`distup` - 'sudo apt-get dist-upgrade'<br>
`updinst` - 'sudo apt-get update && sudo apt-get install --yes'<br>
`aptsearch` - 'apt-cache search'<br>

### Vars ###

`export PATH=/usr/local/bin:$PATH`<br>
`force_color_prompt=yes`<br>
`export LS_OPTIONS='--color=auto'`<br>
`export CLICOLOR=1`<br>
`export TERM="xterm-color"`<br>
`export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '`<br>
`export EDITOR=/usr/bin/nano`<br>
`USER="`id -un`"`<br>