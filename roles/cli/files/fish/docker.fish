if status --is-interactive
  abbr --add --global d   docker
  abbr --add --global da  docker attach
  abbr --add --global dc  docker compose
  abbr --add --global dcd docker compose down
  abbr --add --global dce docker compose exec
  abbr --add --global dcl docker compose logs
  abbr --add --global dcp docker compose ps
  abbr --add --global dcr docker compose restart
  abbr --add --global dcR docker compose run --rm
  abbr --add --global dcs docker compose start
  abbr --add --global dcS docker compose stop
  abbr --add --global dct docker compose top
  abbr --add --global dcu docker compose up -d
  abbr --add --global dcv docker compose version
  abbr --add --global dC  docker container
  abbr --add --global di  docker image
  abbr --add --global dv  docker volume
  abbr --add --global dr  docker run --rm -it
end
