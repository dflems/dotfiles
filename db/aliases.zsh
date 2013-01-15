alias pg-up='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-down='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias redis-up="redis-server $ZSH/db/redis.conf > /dev/null &"
alias redis-down='killall redis-server'

alias mysql-up='mysql.server start'
alias mysql-down='mysql.server stop'

alias mongo-up='mongod --fork --logpath /usr/local/var/log/mongodb.log --logappend'
alias mongo-down='kill -2 $(cat /usr/local/var/mongodb/mongod.lock)' #safe