#!/usr/bin/env bash
# Installs (or updates) HACS into ./config/custom_components/hacs using the
# official installer, run inside the Home Assistant container.
# After running: restart Home Assistant, then add the "HACS" integration under
# Settings -> Devices & services and authorize it with your GitHub account.
set -euo pipefail

cd "$(dirname "$0")"

docker compose exec homeassistant bash -c "wget -O - https://get.hacs.xyz | bash -"
docker compose restart homeassistant
