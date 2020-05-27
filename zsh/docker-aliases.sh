# Clean-up scripts
function docker-kill-all() {
    docker kill $(docker ps -q)
}

function docker-stop-all() {
    docker stop $(docker ps -q)
}

function docker-remove-all() {
    docker rm $(docker ps -a -q)
}

alias docker-purge="docker ps -q | xargs -r docker stop; docker system prune -a"

# Shorthands
function docker-run-bash() {
    docker run -it $1 /bin/bash
}

function docker-exec-bash() {
    docker exec -it $1 bash
}

alias dps="docker ps"
alias dpsa="docker ps -a"
alias dim="docker images"
alias dst="docker stats"
alias dlg="docker logs -f $1"
alias di="docker inspect $1"
alias drun=docker-run-bash
alias dexec=docker-exec-bash
alias dcu="docker compose up -d"
alias dcd="docker compose down"

