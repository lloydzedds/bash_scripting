#!/bin/bash
function hell() {
    echo "Hello!"
    ls
    echo "'the above files are listed using a command in your function'"
}
hell

function hello() {
    echo "Hello!"
    now
}
function now() {
    echo "its $(date)"
}
hello