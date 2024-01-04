#/bin/bash

#SPEC=https://ctl.prod.nuon.co/oapi/v3
SPEC=https://ctl.stage.nuon.co/oapi/v3
#SPEC=http://localhost:8081/oapi/v3

openapi-generator generate -i $SPEC -g elixir -o ./
