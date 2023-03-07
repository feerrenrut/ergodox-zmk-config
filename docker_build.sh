#! sh
# Configure VSCode with docker according to ZMK tool setup.
# Ensure this directory is mapped as the ZMK-config volume.
# Change directory to /workspace/zmk-config/
# run: `source docker_build.sh`
west build -s "/workspaces/zmk/app/" -b slicemk_ergodox_202207_green_left  --build-dir "/workspaces/zmk-config/build" -- -DSHIELD=slicemk_ergodox_leftcentral -DZMK_CONFIG="/workspaces/zmk-config/config" 
