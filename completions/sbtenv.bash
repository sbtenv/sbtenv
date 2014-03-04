_sbtenv() {
  COMPREPLY=( $(compgen -W "$(sbtenv commands)" ${COMP_WORDS[COMP_CWORD]}) )
}
complete -F _sbtenv sbtenv
