alias find_ruby='find /Users/dsellers/projects/code/git/blurby -name '*.rb' | xargs grep'
alias find_rails='find /Users/dsellers/projects/code/git/blurby -name '*.*rb' | xargs grep'
alias find_views='find /Users/dsellers/projects/code/git/blurby -name '*.erb' | xargs grep'

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
export RUBYLIB=/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/1.8/
export PATH=$PATH:/opt/local/bin:/opt/local/lib/postgresql84/bin/
