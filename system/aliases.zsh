# Hurr durr
alias bitch,='sudo'

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
