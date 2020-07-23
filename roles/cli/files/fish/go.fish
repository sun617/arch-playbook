if status --is-interactive
  set GO_BIN {$HOME}/go/bin
  if not string match --quiet $GO_BIN $PATH
    set PATH $GO_BIN $PATH
  end
end
