#!/bin/bash

tokyonightDir="$1"
molokaiDir="$2"

diff() {
    path="${1/molokai/\*}"
    command diff --color "$tokyonightDir"/$path "$molokaiDir"/$path
}

shopt -s globstar nullglob
for file in "$molokaiDir/lua"/*/*.lua; do
    output="${file##*/}"
    output="${output%.*}.diff"
    diff "lua/${file##*/lua/}" > "$output"
done

diff "lua/lualine/themes/*.lua" > "lualine.diff"
