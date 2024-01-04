#/bin/bash

SPEC=https://ctl.stage.nuon.co/docs/doc.json
#SPEC=http://localhost:8081/docs/doc.json

echo "Generating SDK\n"
openapi-generator generate -i $SPEC -g elixir -o ./
