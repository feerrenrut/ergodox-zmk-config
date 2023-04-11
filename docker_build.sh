#! sh
# Configure VSCode with docker according to ZMK tool setup.
# Ensure this directory is mapped as the ZMK-config volume.
# Change directory to /workspace/zmk-config/
# run: `source docker_build.sh`

# build left-central. Works
west build --pristine -s "/workspaces/zmk/app/" -b slicemk_ergodox_202207_green_left  --build-dir "/workspaces/zmk-config/left-central" -- -DSHIELD=slicemk_ergodox_leftcentral -DZMK_CONFIG="/workspaces/zmk-config/config"

# build dongle-central. Works
west build --pristine -s "/workspaces/zmk/app/" -b raytac_mdbt50q_rx_green  --build-dir "/workspaces/zmk-config/dongle" -- -DSHIELD=slicemk_ergodox_dongle -DZMK_CONFIG="/workspaces/zmk-config/config"
