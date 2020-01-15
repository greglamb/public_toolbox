function dockerbash () { docker exec -it $1 bash; }
function dockershell () { docker exec -it $1 bash; }
function killalldocker () { docker rm -f $(docker ps -aq); }
function killalldockeri () { docker rmi -f $(docker images -q); }
#function dockerrunningimagename () { docker ps -f "ancestor=$1" --format "{{.Names}}"; }
# Use `jq` with both JSON and non-JSON lines.
function jjq {
    jq -R -r "${1:-.} as \$line | try fromjson catch \$line"
}
function macossetdns () {
    networksetup -setdnsservers Wi-Fi $1;
    sudo dscacheutil -flushcache;
    sudo killall -HUP mDNSResponder;
}
