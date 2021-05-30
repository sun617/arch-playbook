if status --is-interactive
  set RUBY_VERSION (ruby --version | string match --regex '\\d+.\\d+')
  set RUBY_BIN {$HOME}/.local/share/gem/ruby/{$RUBY_VERSION}.0/bin
  if not string match --quiet $RUBY_BIN $PATH
    set PATH $RUBY_BIN $PATH
  end
end
