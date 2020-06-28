if status --is-interactive
  complete --command aws --no-files --arguments '(
    begin
      set --local --export COMP_SHELL fish
      set --local --export COMP_LINE (commandline)
      aws_completer | sed \'s/ $//\'
    end
  )'
end
