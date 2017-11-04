export PKG_CONFIG_PATH=/usr/local/Cellar/imagemagick\@6/6.9.7-8/lib/pkgconfig/
export PATH=/usr/local/nginx/sbin:/usr/local/sbin:/usr/local/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="/usr/local/opt/elasticsearch@1.7/bin:$PATH"
alias yoink="open -a /Applications/Yoink.app/Contents/MacOS/Yoink"
alias eopen="emacsclient -n"
[[ -f /Users/dsellers/.sentinel/current/bin/sentinel ]] && eval "$(/Users/dsellers/.sentinel/current/bin/sentinel init -)"
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion