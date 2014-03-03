if [[ ! -o interactive ]]; then
  return
fi

compctl -K _sbtenv sbtenv

_sbtenv() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(sbtenv commands)"
  else
    completions="$(sbtenv completions ${words[2,-2]})"
  fi

  reply=("${(ps:\n:)completions}")
}
