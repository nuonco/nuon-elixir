#/bin/bash

gh release create $(./scripts/get_version.sh) --generate-notes
