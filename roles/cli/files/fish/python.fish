if status --is-interactive
  set PYTHON_BIN {$HOME}/.local/bin
  if not string match --quiet $PYTHON_BIN $PATH
    set PATH $PYTHON_BIN $PATH
  end
end
