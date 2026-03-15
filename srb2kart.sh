#!/bin/bash

export SRB2WADDIR="$SNAP/usr/games/SRB2Kart"

export HOME="$SNAP_USER_COMMON"

exec "$SNAP/usr/games/SRB2Kart/srb2kart" "$@"

# TODO: add more stuff here when needed
# since using a wrapper script is easier
# than using the snapcraft.yaml for everything
