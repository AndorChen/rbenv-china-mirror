if declare -Ff before_install >/dev/null; then
  before_install change_to
  after_install change_back
else
  echo "rbenv: rbenv-china-mirror plugin requires ruby-build 20130129 or later" >&2
fi

change_to() {
  # skip build-in mirror
  export RUBY_BUILD_SKIP_MIRROR=1

  local definition="${ARGUMENTS[0]}"

  if [ -z "$definition" ]; then
    usage
  elif [ ! -f "$definition" ]; then
    local definition_buildin_path="${RBENV_ROOT}/plugins/ruby-build/share/ruby-build/${definition}"
    # is definition file exists?
    if [ -e "$definition_buildin_path" ]; then
      perl -p -i -e 's!cache.ruby-lang.org!cache.ruby-china.org!' $definition_buildin_path
    else
      echo "ruby-build: definition not found: ${definition_buildin_path}" >&2
      exit 2
    fi
  fi
}

change_back() {
  if [ ! -f "$definition" ]; then
    local definition_buildin_path="${RBENV_ROOT}/plugins/ruby-build/share/ruby-build/${ARGUMENTS[0]}"
    perl -p -i -e 's!cache.ruby-china.org!cache.ruby-lang.org!' $definition_buildin_path
  fi
}
