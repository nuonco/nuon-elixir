#!/bin/sh
# Must be /bin/sh because this script is meant to be run in Alpine,
# which uses busybox and doesn't have bash.

if [[ -z "${HEX_API_KEY}" ]]; then
	echo "HEX_API_KEY is not set" && exit 1
fi

echo "===> install hex"
echo
mix local.hex --force
mix local.rebar --force

echo "===> install dependencies"
echo
mix do deps.get, deps.compile

echo "===> Build hex package"
echo
mix hex.build

echo "===> Publishing hex package"
echo
mix hex.publish --yes
