if status --is-interactive
  set RUST_BIN {$HOME}/.cargo/bin
  if not string match --quiet $RUST_BIN $PATH
    set PATH $RUST_BIN $PATH
  end
end
