#! sh
# Configure VSCode with docker according to ZMK tool setup.
# Ensure this directory is mapped as the ZMK-config volume.
# Change directory to /workspace/zmk-config/
# run: `source docker_build.sh`
west build --build-dir "/workspaces/zmk-config/left-central"
west build --build-dir "/workspaces/zmk-config/dongle"
