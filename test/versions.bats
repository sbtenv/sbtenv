#!/usr/bin/env bats

load test_helper

create_version() {
  mkdir -p "${SBTENV_ROOT}/versions/$1"
}

setup() {
  mkdir -p "${SBTENV_TEST_DIR}"
  cd "${SBTENV_TEST_DIR}"
}

stub_system_sbt() {
  local stub="${SBTENV_TEST_DIR}/bin/sbt"
  mkdir -p "$(dirname "${stub}")"
  touch "${stub}" && chmod a+x "${stub}"
}

@test "no versions installed" {
  stub_system_sbt
  assert [ ! -d "${SBTENV_ROOT}/versions" ]
  run sbtenv-versions
  assert_success "* system (set by ${SBTENV_ROOT}/version)"
}

@test "single version installed" {
  stub_system_sbt
  create_version "sbt-0.12.34"
  run sbtenv-versions
  assert_success
  assert_output <<OUT
* system (set by ${SBTENV_ROOT}/version)
  sbt-0.12.34
OUT
}
