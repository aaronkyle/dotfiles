#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias vi='vim'
# alias win7x='startx && VBoxManage startvm win7-64'
alias win7='VBoxManage startvm win7-64'

# ATTEMPT: redefine bash colors
if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0000000" #black
    echo -en "\e]P8393939" #bright-black
#    echo -en "\e]P1d20000" #red
    echo -en "\e]P1ff3a3a" #red
#    echo -en "\e]P1ff2020" #red
#    echo -en "\e]P1eb0000" #red
#    echo -en "\e]P1d84740" #red
#    echo -en "\e]P1b04560" #red
    echo -en "\e]P9ff6d6d" #bright-red
#    echo -en "\e]P9ff5353" #bright-red
#    echo -en "\e]P9ff401a" #bright-red
#    echo -en "\e]P9ff2b00" #bright-red
#    echo -en "\e]P9ed7f82" #bright-red
#    echo -en "\e]P9c66c7f" #bright-red
#    echo -en "\e]P9e1b2bd" #bright-red
    echo -en "\e]P260b045" #green
#    echo -en "\e]P246af5e" #green
    echo -en "\e]PAaddaa0" #bright-green
#    echo -en "\e]PAbde1b2" #bright-green
    echo -en "\e]P3d9d03f" #yellow
#    echo -en "\e]P3c39ec2" #yellow
    echo -en "\e]PBfff333" #bright-yellow
#    echo -en "\e]PBe4e47b" #bright-yellow
    echo -en "\e]P41895fb" #blue
#    echo -en "\e]P40489f6" #blue
#    echo -en "\e]P48192c9" #blue
#    echo -en "\e]P407dd8" #blue
    echo -en "\e]PC06c9fb" #bright-blue
#    echo -en "\e]PC04b6e3" #bright-blue
#    echo -en "\e]PC0574b5" #bright-blue BILOXI
#    echo -en "\e]PCaed2e3" #bright-blue HALVANKEK
#    echo -en "\e]PC78a3cd" #bright-blue LAGOON
#    echo -en "\e]PC93b8c5" #bright-blue 
#    echo -en "\e]PCabcedf" #bright-blue PALE CORNFLOWER
#    echo -en "\e]PCb2bde1" #bright-blue
    echo -en "\e]P5c46dab"
#    echo -en "\e]P5bd5ba0" #magenta
#    echo -en "\e]P59545b0" #magenta
    echo -en "\e]PDd5b2e1" #bright-magenta
    echo -en "\e]P657ddca" #cyan
#    echo -en "\e]P66ce1d1" #cyan
#    echo -en "\e]P62cb4db" #cyan
#    echo -en "\e]P62cc1d4" #cyan
#    echo -en "\e]P645b095" #cyan
    echo -en "\e]PEaceee5" #bright-cyan
#    echo -en "\e]PE7de4c0" #bright-cyan MORNING GLORY
#    echo -en "\e]PEb2e1d5" #bright-cyan
    echo -en "\e]P7dfdfdf" #white
    echo -en "\e]PFdedede" #white-grey
    clear #for background artifacting
fi
