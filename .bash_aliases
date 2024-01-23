# Alias definitions.
alias python='/usr/local/bin/python3.10'
alias cls=clear
alias distsys="conda activate distsys"
alias update="sudo apt update && sudo apt upgrade"
alias gs="git status"
alias gall="git add ."
alias greb="git pull --rebase"
alias gls="git branch -a"
alias glog="git log --oneline"
alias gprune="git remote prune origin"
alias gdiff="git diff"
gres ()
{
    if [ $# -eq 1 ]; then
        git restore "$1"
    else
        echo "Usage: $ gres [file to restore]"
    fi
}
gcom ()
{
    if [ $# -eq 1 ]; then
        git commit -m "$1"
    else
        echo "Usage: $ gcom \"[message to commit with]\""
    fi
}
gch ()
{
    if [ $# -eq 1 ]; then
        git checkout "$1"
    else
        echo "Usage: $ gch [branch to switch to]"
    fi
}
gnew ()
{
    if [ $# -eq 1 ]; then
        git checkout -b "$1"
    else
        echo "Usage: $ gnew [branch to create]"
    fi
}
gdelloc ()
{
    if [ $# -eq 1 ]; then
        git branch -d "$1"
    else
        echo "Usage: $ gdelloc [local branch to delete]"
    fi
}
gdelrem ()
{
    if [ $# -eq 1 ]; then
        git push origin --delete "$1"
    else
        echo "Usage: $ gdelrem [remote branch to delete]"
    fi
}
gpush ()
{

    if [ $# -eq 0 ]; then
        curr_branch=$(git branch --show-current)
    elif [ $# -eq 1 ]; then
        curr_branch=$1
    else
        echo "Usage: $ gpush [branch to push (default current branch)]"
        return
    fi
    git push -u origin "$curr_branch"
}
gpull ()
{
    if [ $# -eq 0 ]; then
        curr_branch=$(git branch --show-current)
    elif [ $# -eq 1 ]; then
        curr_branch=$1
    else
        echo "Usage: $ gpull [branch to pull (default current branch)]"
        return
    fi
    git pull origin "$curr_branch"
}
function gswitch ()
{
    echo "Usage: git switch -c <new_branch> <old_branch>"
}
function valg () 
{
    if [ $# -eq 0 ]; then
        echo "Usage: $ valg [program name] [arguments...]"
    else
        valgrind --leak-check=full -s $@
    fi
}
function aliases ()
{
    cat /home/daniellec0321/.bash_aliases
}
function rebase-all ()
{
    for BRANCH in `ls .git/refs/heads`; do git rebase master $BRANCH; done
}
function ndssh ()
{
    scripts/ndssh $@
}
function shc ()
{
    if [ $# -ne 2 ]; then
        echo "Usage: $ shc [source] [target]"
    else
        /usr/bin/shc -vrf $1 -o $2
    fi
}
