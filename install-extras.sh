#!/bin/bash
# Installs the Duck launcher, its icon, and the SUPER + ALT + D binding.
set -euo pipefail
here=$(cd "$(dirname "$0")" && pwd)

install -Dm755 "$here/extras/omarchy-agent-duck" "$HOME/.local/bin/omarchy-agent-duck"
install -Dm644 "$here/extras/omarchy-agent-duck.svg.tpl" "$HOME/.config/omarchy/icons/papercraft/omarchy-agent-duck.svg.tpl"

bindings=$HOME/.config/hypr/bindings.lua
if ! grep -q 'omarchy-agent-duck' "$bindings" 2>/dev/null; then
  printf '\n-- Duck agent.\no.bind("SUPER + ALT + D", "Duck", "omarchy-agent-duck")\n' >> "$bindings"
fi

command -v omarchy >/dev/null && omarchy theme refresh || true
command -v duck >/dev/null || [[ -x $HOME/.local/bin/duck ]] || echo "Note: install duck itself for SUPER + ALT + D to launch it."
