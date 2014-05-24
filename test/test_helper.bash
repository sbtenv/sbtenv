unset SBTENV_VERSION
unset SBTENV_DIR

SBTENV_TEST_DIR="${BATS_TMPDIR}/sbtenv"

if [ "$SBTENV_ROOT" != "${SBTENV_TEST_DIR}/root" ]; then
  export SBTENV_ROOT="${SBTENV_TEST_DIR}/root"
  export HOME="${SBTENV_TEST_DIR}/home"
  PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
  PATH="${SBTENV_TEST_DIR}/bin:$PATH"
  PATH="${BATS_TEST_DIRNAME}/../libexec:$PATH"
  PATH="${BATS_TEST_DIRNAME}/libexec:$PATH"
  PATH="${SBTENV_ROOT}/shims:$PATH"
  export PATH
fi

teardown() {
  echo "teardown"
  rm -rf "${SBTENV_TEST_DIR}"
}

flunk() {
  {
    if [ "$#" -eq 0 ]; then
      cat -
    else
      echo "$@"
    fi
  } | sed "s:${SBTENV_TEST_DIR}:TEST_DIR:g" >& 2
  return 1
}

assert() {
  if ! "$@"; then
    flunk "failed: $@"
  fi
}

assert_equal() {
  if [ "$1" != "$2" ]; then
    {
      echo "expected: $1"
      echo "actual:   $2"
    } | flunk
  fi
}

assert_output() {
  local expected
  if [ $# -eq 0 ]; then
    expected="$(cat -)"
  else
    expected="$1"
  fi
  assert_equal "${expected}" "${output}"
}

assert_success() {
  if [ "${status}" -ne 0 ]; then
    flunk "command failed with exit status ${status}"
  elif [ "$#" -gt 0 ]; then
    assert_output "$1"
  fi
}

