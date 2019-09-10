# .bashrc file
#
# If terminal is set to xterm-256color or screen one can modify the prompt display if they like. 
#if [ $TERM == "xterm-256color" ] || [ $TERM == "screen" ]; then
#  export PS1="\[\033[38;1;34m\]\u\[$(tput sgr0)\]\[\033[38;1;34m\]@\h:\[$(tput sgr0)\]\[\033[38;1;36m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
#fi

# colorize and detail git branch infor if a git repo is detected: 
#git_branch() {
#      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#  }
#  export PS1="[\u@\h \W]\[\033[00;32m\]\$(git_branch)\[\033[00m\]\$ "


# Source global definitions.
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi


# for setting history length see HISTSIZE and HISTFILESIZE in bash(1). if you want unlimited history, unset HISTSIZE and HISTFILESIZE
# for bash version 4.3 and later you need to set HISTSIZE and HISTFILESIZE to negative value like -1  to have unlimited history
 HISTSIZE=
 HISTFILESIZE=

# SLURM Settings
# Can directly set format of output from squeue and sacct command by setting SQUEUE_FORMAT and SACCT_FORMAT, respectively
export SACCT_FORMAT="jobid,partition,user,account%12,alloccpus,node%12,start,elapsed,totalcpu,maxRSS,ReqM"
export SQUEUE_FORMAT="%13i %12j %10P %10u %12a %8T %9r %10l %.11L %5D %4C %8m %N"
# Alternatively one can specify this when executing squeue or sacct with the --format= flag
# sacct  -j $JOB --format=JobID,JobName,User,AllocCPUS,ReqMem,ReqGRES,Elapsed,MaxRSS,State,ExitCode,CPUTime,Submit,Start,End,NodeList%220,WorkDir%130"

# User specific aliases and functions
alias ddel="find . -maxdepth 1 -type d -print -delete"
alias fdel="find . -maxdepth 2 -type f -print -delete"

#
# AUGMENT PYTHON PATH
#PYTHONPATH="/project2/rcc/jhskone/ase/ase-3.16.1b1/ase:${PYTHONPATH}:/home/jhskone/python-modules"
#


