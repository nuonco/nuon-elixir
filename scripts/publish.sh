#/bin/bash

docker run --rm elixir:1.16.0-alpine \
    -v ${PWD}:/local \
    -w /local \
    -e HEX_API_KEY \
    /local/scripts/publish_script.sh
