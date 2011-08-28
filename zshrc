# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' file-sort name
zstyle ':completion:*' glob 1
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' max-errors 1 numeric
zstyle ':completion:*' menu select=long
zstyle ':completion:*' original true
zstyle ':completion:*' prompt '%n@%m:${PWD/$HOME/"~"}%e%#'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/wyrven/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000
setopt appendhistory nomatch
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# ZSH Rules
#setopt PROMPT_SUBST
#PS1=%n@%m:${PWD/$HOME/"~"}%#
#PS1="%?:%m:%c%#"

#PATH
PATH="/sbin:/usr/sbin:/usr/local/sbin:/bin:/usr/bin:/usr/local/bin:/usr/bin/X11:/usr/games:$PATH:$HOME/bin"
export PATH

if [ $TERM = "rxvt" ];then
    export LC_CTYPE=en_US.iso-8859-1
fi

# Alias para los usuarios de sgml
alias sgml2html='sgml2html -c latin -l es'
alias sgml2txt='sgml2txt -c latin -l es'
alias sgml2rtf='sgml2rtf -c latin -l es'

# Alias para los vagos
alias l='ls -l'
alias t="ls -rt1a"
alias s="ls -asrS1"
alias lc="ls|wc -l"
alias d='df -h'
#alias mp='mplayer'
#alias mps='mplayer -nosound'
#alias atanks='atanks -d 16 --nosound'


# Alias de debian
alias actualizar='sudo apt-get update ; unstable upgrade; sudo aptitude dist-upgrade -y ; sudo apt-get clean'
alias menu='cat /etc/X11/WindowMaker/menu.hook'

# Alias para los editores
alias joe='joe -asis'

# Alias para colores
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Alias para sonido
alias play='aplay'

# Alias para mc
alias mc='mc -ux'

####################### Listado de Alias Personales #####################

#----------comandos---------
alias cls='clear'
alias cd.='cd ..'
alias atras='cd ..'
alias quit='exit'
alias pexec='chmod 775' #asignar permiso de ejecucion

#---------- sin conexion internet ----------#
#alias instalar="sudo dpkg -i" #comandos varios para dpkg
#alias desinstalar="sudo dpkg -r"
#alias pkgstatus="dpkg -C"

alias descargar='apt-get -d install'

#----------scripts----------
alias color='sh /home/wyrven/scripts/color' #cambia la gamma del escritorio
#alias notepad='sh /home/wyrven/scripts/notepad++' #mierd... no viene el notepad++ para linux
#alias paint='wine /media/Wyrven/WINDOWS/system32/mspaint.exe' #ms paint de windows #no lo uso tengo kolourpaint
#alias autopkg='sh /home/wyrven/scripts/autorepo' #actualiza el repositorio
#alias updpkg='sh /home/wyrven/scripts/autorepo'
#alias scanpkg='dpkg-scanpackages /home/wyrven/pkgs/. /dev/null | gzip -9c> /home/wyrven/pkgs/Packages.gz'

alias ezsh='sudo geany /etc/zsh/zshrc'  #editar este archivo

#programas
alias py='python' #python estandar interprete por defecto del SO
alias ipy='ipython'  #ipython interprete
#alias py25='python2.5'
alias py26='python2.6'
#alias py27='python2.7'
#alias py3k='python3.1'
alias pydb='winpydb' #debuguer de python

alias vim='vi' #mmm ni lo uso, no soy tan fana
alias ge='gedit'
alias suge='sudo gedit'
#alias spe='./home/wyrven/script/spe'
alias edit='geany' #mi editor por defecto.. al menos yo uso siempre este
alias eric='eric4' 
alias pybean='/usr/local/netbeans-6.7/bin/netbeans'
alias netbeans6.7='/usr/local/netbeans-6.7/bin/netbeans'
alias netbeans6.8='/usr/local/netbeans-6.8/bin/netbeans'

alias win='wine'
alias win32='wine'
alias nav='nautilus'
alias sunav='sudo nautilus'
alias cpdf='pdftotext -layout'
alias paint='kolourpaint'

alias solver='lp_solve' #programacion lineal
alias simplex='lp_solve'

#-----------directorios-----------------
alias hdir='cd /home; pwd'
alias rdir='sudo cd /root; pwd'
alias udir='cd /home/wyrven; pwd'
#alias cvsdir='cd /home/cvs pwd'

#alias repo='cd /home/wyrven/pkgs; pwd;'
#alias pkgs='cd /home/wyrven/pkgs; pwd;'

alias proydir='cd /home/wyrven/Proyectos; pwd;'
alias pdir='cd /home/wyrven/Proyectos; pwd;'

#lp_solver proy dir
alias lpdir='cd /home/wyrven/Proyectos/Lp; pwd;'
alias pldir='cd /home/wyrven/Proyectos/Lp; pwd;'

#python proy dir
alias pythondir='cd /home/wyrven/Proyectos/Python; pwd; ls -l'
alias pydir='cd /home/wyrven/Proyectos/Python; pwd; ls -l'
#PyGame dir
alias pygamedir='cd /home/wyrven/Proyectos/Python/PyGame; pwd; ls -l'
alias pygdir='cd /home/wyrven/Proyectos/Python/PyGame; pwd'
#Django dir
alias djangodir='cd /home/wyrven/Proyectos/Python/Django; pwd'
alias djdir='cd /home/wyrven/Proyectos/Python/Django; pwd'

alias cursos='nautilus /media/Radamanthys/Cursos; pwd'
#-------------otros-------------------
alias root='su' #cambia al usuario root
alias postgres='su postgres'  #cambia al usuario postgres
alias supsql='su postgres'
alias pkgsrc='sudo gedit /etc/apt/sources.list' #editar lista repositorios
alias pkglist='sudo gedit /etc/apt/sources.list'

alias reiniciar='sudo reboot'
alias apagar='sudo halt'

#alias menkai='nautilus "/media/Radamanthys/Wyrven Files/Archivos/Otros/Radamanthys/back/Nueva carpeta (4)"; clear'

############################### MEGAPROMPT ##############################
function precmd {
    local TERMWIDTH
    (( TERMWIDTH = ${COLUMNS} - 1 ))

    # Truncate the path if it's too long.
    PR_FILLBAR=""
    PR_PWDLEN=""

    local promptsize=${#${(%):---(%n@%m:%l)--()---}}
    local pwdsize=${#${(%):-%~}}

    if [[ "$promptsize + $pwdsize" -gt $TERMWIDTH ]]; then
        ((PR_PWDLEN=$TERMWIDTH - $promptsize))
    else
        PR_FILLBAR="\${(l.(($TERMWIDTH - ($promptsize + $pwdsize)))..${PR_HBAR}.)}"
    fi

    # Get APM info.
    #if which ibam > /dev/null; then
    #    PR_APM_RESULT=`ibam --percentbattery`
    #elif which apm > /dev/null; then
    #   PR_APM_RESULT=`apm`
    #fi
}

setopt extended_glob
preexec () {
    if [[ "$TERM" == "screen" ]]; then
        local CMD=${1[(wr)^(*=*|sudo|-*)]}
        echo -n "\ek$CMD\e\\"
    fi
}

setprompt () {
    # Need this so the prompt will work.
    setopt prompt_subst

    # See if we can use colors.
    autoload colors zsh/terminfo
    if [[ "$terminfo[colors]" -ge 8 ]]; then
        colors
    fi
        for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
            eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
            eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
            (( count = $count + 1 ))
        done
    PR_NO_COLOUR="%{$terminfo[sgr0]%}"

    # See if we can use extended characters to look nicer.
    typeset -A altchar
    set -A altchar ${(s..)terminfo[acsc]}
    PR_SET_CHARSET="%{$terminfo[enacs]%}"
    PR_SHIFT_IN="%{$terminfo[smacs]%}"
    PR_SHIFT_OUT="%{$terminfo[rmacs]%}"
    PR_HBAR=${altchar[q]:--}
    PR_ULCORNER=${altchar[l]:--}
    PR_LLCORNER=${altchar[m]:--}
    PR_LRCORNER=${altchar[j]:--}
    PR_URCORNER=${altchar[k]:--}

    # Decide if we need to set titlebar text.
    case $TERM in
    xterm*)
        PR_TITLEBAR=$'%{\e]0;%(!.-=*[ROOT]*=- | .)%n@%m:%~ | ${COLUMNS}x${LINES} | %y\a%}'
        ;;
    screen)
        PR_TITLEBAR=$'%{\e_screen \005 (\005t) | %(!.-=[ROOT]=- | .)%n@%m:%~ | ${COLUMNS}x${LINES} | %y\e\\%}'
        ;;
    *)
        PR_TITLEBAR=''
        ;;
    esac

    # Decide whether to set a screen title
    if [[ "$TERM" == "screen" ]]; then
        PR_STITLE=$'%{\ekzsh\e\\%}'
    else
        PR_STITLE=''
    fi

    # APM detection
    if which ibam > /dev/null; then
        PR_APM='$PR_RED${${PR_APM_RESULT[(f)1]}[(w)-2]}%%(${${PR_APM_RESULT[(f)3]}[(w)-1]})$PR_LIGHT_BLUE:'
    elif which apm > /dev/null; then
        PR_APM='$PR_RED${PR_APM_RESULT[(w)5,(w)6]/\% /%%}$PR_LIGHT_BLUE:'
    else
        PR_APM=''
    fi

    case $TERM in
    linux*)
        PROMPT='$PR_SET_CHARSET$PR_STITLE${(e)PR_TITLEBAR}\
$PR_CYAN$PR_SHIFT_IN$PR_ULCORNER$PR_BLUE$PR_HBAR$PR_SHIFT_OUT(\
$PR_GREEN%(!.%SROOT%s.%n)$PR_GREEN@%m:%l\
$PR_BLUE)$PR_SHIFT_IN$PR_HBAR$PR_CYAN$PR_HBAR${(e)PR_FILLBAR}$PR_BLUE$PR_HBAR$PR_SHIFT_OUT(\
$PR_MAGENTA%$PR_PWDLEN<...<%~%<<\
$PR_BLUE)$PR_SHIFT_IN$PR_HBAR$PR_CYAN$PR_URCORNER$PR_SHIFT_OUT\

$PR_CYAN$PR_SHIFT_IN$PR_LLCORNER$PR_BLUE$PR_HBAR$PR_SHIFT_OUT(\
%(?..$PR_LIGHT_RED%?$PR_BLUE:)\
${(e)PR_APM}$PR_YELLOW%D{%H:%M}\
$PR_LIGHT_BLUE:%(!.$PR_RED.$PR_WHITE)%#$PR_BLUE)$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
$PR_CYAN$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
$PR_NO_COLOUR '

        PS2='$PR_CYAN$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
$PR_BLUE$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT(\
$PR_LIGHT_GREEN%_$PR_BLUE)$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
$PR_CYAN$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT$PR_NO_COLOUR '
        ;;
    *)
        PROMPT='$PR_SET_CHARSET$PR_STITLE${(e)PR_TITLEBAR}\
$PR_CYAN$PR_SHIFT_IN$PR_ULCORNER$PR_BLUE$PR_HBAR$PR_SHIFT_OUT(\
$PR_GREEN%(!.%SROOT%s.%n)$PR_GREEN@%m:%l\
$PR_BLUE)$PR_SHIFT_IN$PR_HBAR$PR_CYAN$PR_HBAR${(e)PR_FILLBAR}$PR_BLUE$PR_HBAR$PR_SHIFT_OUT(\
$PR_MAGENTA%$PR_PWDLEN<...<%~%<<\
$PR_BLUE)$PR_SHIFT_IN$PR_HBAR$PR_CYAN$PR_URCORNER$PR_SHIFT_OUT\

$PR_CYAN$PR_SHIFT_IN$PR_LLCORNER$PR_BLUE$PR_HBAR$PR_SHIFT_OUT(\
%(?..$PR_LIGHT_RED%?$PR_BLUE:)\
${(e)PR_APM}$PR_YELLOW%D{%H:%M}\
$PR_LIGHT_BLUE:%(!.$PR_RED.$PR_WHITE)%#$PR_BLUE)$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
$PR_CYAN$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
$PR_NO_COLOUR '

        RPROMPT=' $PR_CYAN$PR_SHIFT_IN$PR_HBAR$PR_BLUE$PR_HBAR$PR_SHIFT_OUT\
($PR_YELLOW%D{%a,%d%b}$PR_BLUE)$PR_SHIFT_IN$PR_HBAR$PR_CYAN$PR_LRCORNER$PR_SHIFT_OUT$PR_NO_COLOUR'

        PS2='$PR_CYAN$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
$PR_BLUE$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT(\
$PR_LIGHT_GREEN%_$PR_BLUE)$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
$PR_CYAN$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT$PR_NO_COLOUR '
        ;;
    esac


    # Finally, the prompt.
}

setprompt
###################### FIN DE MEGAPROMT #######################

# Fortune
#echo; fortune|grep .;echo
#apt-get moo
#byobu #datos del cpu

rojo='\e[1;31m'
NC='\e[0m'
amarillo='\e[1;33m'
cian='\e[1;34m'

#echo -e "${rojo}          _,met\$\$\$\$\$gg.";
#echo -e "       ,g\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$P.";
#echo -e "     ,g\$\$P\"\"       \"\"\"Y\$\$.\".";
#echo -e "    ,\$\$P'              \`\$\$\$.";
#echo -e "  ',\$\$P       ,ggs.     \`\$\$b:";
#echo -e "  \`d\$\$'     ,\$P\"'   .    \$\$\$";
#echo -e "   \$\$P      d\$'     ,    \$\$P";
#echo -e "   \$\$:      \$\$.   -    ,d\$\$'      ";
#echo -e "   \$\$;      Y\$b._   _,d\$P'   ${NC}     _,           _,      ,'\`.";
#echo -e "${rojo}   Y\$\$.    \`.\`\"Y\$\$\$\$P\"'${NC}         \`\$\$'         \`\$\$'     \`.  ,'";
#echo -e "${rojo}   \`\$\$b      \"-.__           ${NC}    \$\$           \$\$        \`'";
#echo -e "${rojo}    \`Y\$\$b                     ${NC}   \$\$           \$\$         _,           _";
#echo -e "${rojo}     \`Y\$\$.                ${NC} ,d\$\$\$g\$\$  ,d\$\$\$b.  \$\$,d\$\$\$b.\`\$\$' g\$\$\$\$\$b.\`\$\$,d\$\$b.";
#echo -e "${rojo}       \`\$\$b.          ${NC}    ,\$P'  \`\$\$ ,\$P' \`Y\$. \$\$\$'  \`\$\$ \$\$  \"'   \`\$\$ \$\$\$' \`\$\$";
#echo -e "${rojo}         \`Y\$\$b.      ${NC}     \$\$'    \$\$ \$\$'   \`\$\$ \$\$'    \$\$ \$\$  ,ggggg\$\$ \$\$'   \$\$";
#echo -e "${rojo}           \`\"Y\$b._     ${NC}   \$\$     \$\$ \$\$ggggg\$\$ \$\$     \$\$ \$\$ ,\$P\"   \$\$ \$\$    \$\$";
#echo -e "${rojo}               \`\"\"\"\"    ${NC}  \$\$    ,\$\$ \$\$.       \$\$    ,\$P \$\$ \$\$'   ,\$\$ \$\$    \$\$";
#echo -e "${NC}                          \`\$g. ,\$\$\$ \`\$\$._ _., \$\$ _,g\$P' \$\$ \`\$b. ,\$\$\$ \$\$    \$\$";
#echo -e "                           \`Y\$\$P'\$\$. \`Y\$\$\$\$P',\$\$\$\$P\"'  ,\$\$. \`Y\$\$P'\$\$.\$\$.  ,\$\$.";

echo -e "${cian}GNU/Linux - Sairus-PC ${amarillo} - Wyrven no L2Radamanthys"

