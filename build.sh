# Variables to change to adapt to your Repo
BINARY_NAME=shiv-example
MAIN_FUNCTION=shiv_example:cli:main

#always clean the dist directory upfront
rm -rf ./dist

uv build --wheel
wheel_file_name=$(ls dist/*.whl)
uvx shiv "$wheel_file_name" -o "dist/$BINARY_NAME" -e "$MAIN_FUNCTION"
