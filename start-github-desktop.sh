#!/bin/sh
export TMPDIR=$XDG_RUNTIME_DIR/app/$FLATPAK_ID
export FLATPAK_HOST=1 
export ELECTRON_TRASH=gio
gpg-agent --homedir ~/.gnupg --daemon --pinentry-program=/app/bin/pinentry
exec zypak-wrapper /app/github-desktop/github-desktop "$@"||exit 0
pkill -TERM gpg-agent