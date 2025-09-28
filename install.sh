#!/bin/bash
set -e

REPO_URL="https://raw.githubusercontent.com/DeprecatedLuar/2webp-goes-hard/main"
INSTALL_DIR="$HOME/.local/bin"
SCRIPT_NAME="2webp"

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "Installing 2webp goes hard..."

# Create install directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Download the script
if ! command -v curl >/dev/null 2>&1; then
    echo -e "${RED}curl is required for installation. Install it, or cry about it on issues.${NC}" >&2
    exit 1
fi

echo "Downloading with curl. 'Curling' if you will."
curl -fsSL "$REPO_URL/$SCRIPT_NAME" -o "$INSTALL_DIR/$SCRIPT_NAME"

# Make executable
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

# Add ~/.local/bin to PATH if not already there
SHELL_RC=""
case "$SHELL" in
    */bash) SHELL_RC="$HOME/.bashrc" ;;
    */zsh) SHELL_RC="$HOME/.zshrc" ;;
    */fish) SHELL_RC="$HOME/.config/fish/config.fish" ;;
    *) SHELL_RC="$HOME/.profile" ;;
esac

if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo "Adding $INSTALL_DIR to your PATH. Thats how this works alr?"
    echo "" >> "$SHELL_RC"
    echo "# Added by 2webp installer" >> "$SHELL_RC"
    echo "export PATH=\"\$PATH:$INSTALL_DIR\"" >> "$SHELL_RC"
    echo "Either restart your shell or run: source $SHELL_RC, or not, I'm not your mom"
else
    echo -e "${GREEN}Well done champ! $INSTALL_DIR is already in your PATH${NC}"
fi

echo -e "${GREEN}2webp installed successfully. Idk, go convert some stuff now${NC}"
echo
echo "Usage: 2webp ow <folder>                    - Replace originals in-place"
echo "       2webp cp <source> [destination]      - Copy structure to new location (or home folder)"
echo "       2webp cp <source> [destination] -A   - Copy structure + all other files"