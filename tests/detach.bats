#! /usr/bin/env bats

load environment

setup() {
  test_filter
  set "$DISABLE_BATS_SHELL_OPTIONS"
  __setup
  restore_bats_shell_options "$?"
}

teardown() {
  @go.remove_test_go_rootdir
}

__setup() {
  local new_files=("$TEST_GO_ROOTDIR/_pages/foo.md"
    "$TEST_GO_ROOTDIR/_pages/bar.md"
    "$TEST_GO_ROOTDIR/_pages/baz.md"
    "$TEST_GO_ROOTDIR/images/quux.png"
    "$TEST_GO_ROOTDIR/images/xyzzy.png"
    "$TEST_GO_ROOTDIR/images/plugh.png")
  local new_file

  mirror_template_into_test_go_rootdir

  # Avoid having `./go setup` run.
  if [[ ! -d "$TEST_GO_ROOTDIR/_site" ]]; then
    mkdir "$TEST_GO_ROOTDIR/_site"
  fi

  for new_file in "${new_files[@]}"; do
    printf '%s\n' '---' "title: ${new_file##*/}" '---' >"$new_file"
  done
}

@test "$SUITE: template files are removed and a new repo created" {
  run "$TEST_GO_ROOTDIR/go" 'detach'
  assert_success

  if [[ -f "$TEST_GO_ROOTDIR/scripts/detach" ]]; then
    fail "Didn't remove \`detach\` script"
  fi

  . "$_GO_USE_MODULES" 'fileutil'
  local __go_collected_file_paths=()

  @go.collect_file_paths "$TEST_GO_ROOTDIR/"{_pages,images}
  lines=("${__go_collected_file_paths[@]}")
  printf -v 'output' '%s\n' "${__go_collected_file_paths[@]}"
  assert_lines_equal \
    "$TEST_GO_ROOTDIR/_pages/bar.md" \
    "$TEST_GO_ROOTDIR/_pages/baz.md" \
    "$TEST_GO_ROOTDIR/_pages/foo.md" \
    "$TEST_GO_ROOTDIR/_pages/index.md" \
    "$TEST_GO_ROOTDIR/images/plugh.png" \
    "$TEST_GO_ROOTDIR/images/quux.png" \
    "$TEST_GO_ROOTDIR/images/xyzzy.png"

  parse_navigation_menu
  output="$(<"$TEST_GO_ROOTDIR/_config.yml")"
  assert_lines_equal \
    '- text: Introduction' \
    '  internal: true' \
    '- text: bar.md' \
    '  url: bar/' \
    '  internal: true' \
    '- text: baz.md' \
    '  url: baz/' \
    '  internal: true' \
    '- text: foo.md' \
    '  url: foo/' \
    '  internal: true'

  run "$TEST_GO_ROOTDIR/go" 'build'
  assert_success
}
