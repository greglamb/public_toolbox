function dockerbash () { docker exec -it $1 bash; }
function dockershell () { docker exec -it $1 bash; }
function killalldocker () { docker rm -f $(docker ps -aq); }
function killalldockeri () { docker rmi -f $(docker images -q); }
function dockerrunningimagename () { docker ps -f "ancestor=$1" --format "{{.Names}}"; }
