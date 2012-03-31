alias find_ruby='find /Users/dsellers/projects/code/git/blurby -name '*.rb' | xargs grep'
alias find_rails='find /Users/dsellers/projects/code/git/blurby -name '*.*rb' | xargs grep'
alias find_views='find /Users/dsellers/projects/code/git/blurby -name '*.erb' | xargs grep'
export PATH=/usr/local/bin:$PATH:/opt/local/bin/:/opt/local/lib/postgresql84/bin/
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
alias herbgobbler='ssh -i ~/.ssh/herbgobbler.pem root@ec2-50-16-10-161.compute-1.amazonaws.com'
