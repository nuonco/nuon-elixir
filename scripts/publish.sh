#/bin/bash

docker run -w /local -e HEX_API_KEY --rm -v ${PWD}:/local elixir:1.16.0-alpine /local/scripts/publish_script.sh
