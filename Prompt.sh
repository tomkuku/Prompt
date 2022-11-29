#!/bin/bash

shell=$(basename "$SHELL")
command_prompt=""

case "$shell" in
"zsh")
  command_prompt="%%"
  ;;
"bash")
  command_prompt="$"
  ;;
*)
  echo "Shell type is: $shell."
  command_prompt="$"
  ;;
esac

echo "%B%F{51}%n%B%F{red}@%B%F{11}%4~%B%F{11}${command_prompt} %F{white}"
