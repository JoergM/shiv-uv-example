# Variables to change to adapt to your Repo
BINARY_NAME=shiv-example

#clean the dist directory upfront
rm -rf ./dist

uv build --wheel
wheel_file_name=$(ls dist/*.whl)
uvx shiv "$wheel_file_name" -o "dist/$BINARY_NAME" -c "$BINARY_NAME"
