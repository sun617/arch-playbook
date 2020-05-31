if status --is-interactive
  set YARN_BIN {$HOME}/.yarn/bin
  if not string match --quiet $YARN_BIN $PATH
    set PATH $YARN_BIN $PATH
  end
end
