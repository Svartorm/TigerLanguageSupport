#! /bin/sh

echo "Installing Tiger Language Support..."
echo "Creating directory $HOME/.vscode/extensions/tigerlanguagesupport"
mkdir -p "$HOME/.vscode/extensions/tigerlanguagesupport"
if [ ! -d "$HOME/.vscode/extensions/tigerlanguagesupport" ]; then
    echo "Directory $HOME/.vscode/extensions/tigerlanguagesupport does not exist. Exiting..."
    exit 1
fi

echo "Installing extention files to $HOME/.vscode/extensions/tigerlanguagesupport"
cp -r . "$HOME/.vscode/extensions/tigerlanguagesupport"

if [ $? -eq 0 ]; then
    echo "Installation completed successfully."
    exit 0
else
    echo "Installation failed with exit code $?."
    exit 1
fi