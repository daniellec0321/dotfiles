# Alias definitions.
alias cls=clear
alias distsys="conda activate distsys"
alias update="sudo apt update && sudo apt upgrade"
alias ndssh="ssh dcroft@student12.cse.nd.edu"
alias gs="git status"
alias gall="git add ."
alias greb="git pull --rebase"
alias gls="git branch -a"
alias glog="git log --oneline"
gcom ()
{
    git commit -m "$1"
}
gch ()
{
    git checkout "$1"
}
gnew ()
{
    git checkout -b "$1"
}
gdelloc ()
{
    git branch -d "$1"
}
gdelrem ()
{
    git push origin --delete "$1"
}
gpush ()
{
    curr_branch=$(git branch --show-current)
    git push -u origin "$curr_branch"
}
gpull ()
{
    curr_branch=$(git branch --show-current)
    git pull origin "$curr_branch"
}
