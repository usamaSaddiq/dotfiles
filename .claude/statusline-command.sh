#!/bin/sh
input=$(cat)

model=$(echo "$input" | jq -r '.model.display_name // "Unknown Model"')
used=$(echo "$input" | jq -r '.context_window.used_percentage // empty')

if [ -n "$used" ]; then
  used_int=$(printf '%.0f' "$used")
  filled=$(( used_int * 20 / 100 ))
  empty=$(( 20 - filled ))
  bar=""
  i=0
  while [ $i -lt $filled ]; do
    bar="${bar}█"
    i=$(( i + 1 ))
  done
  i=0
  while [ $i -lt $empty ]; do
    bar="${bar}░"
    i=$(( i + 1 ))
  done
  printf "\033[1;36m%s\033[0m  \033[0;33m[%s]\033[0m \033[0;37m%s%%\033[0m" "$model" "$bar" "$used_int"
else
  printf "\033[1;36m%s\033[0m" "$model"
fi
