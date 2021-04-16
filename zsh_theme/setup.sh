if ! type zsh > /dev/null; then
  echo "zsh not installed"
  exit 1
fi

THEME_DIR="$HOME/.oh-my-zsh/themes/"
THEME="darthcucumber.zsh-theme"
if [[ ! -d "$THEME_DIR" ]]; then
    echo "$THEME_DIR doesn't exists"
    exit 1
fi

if [[ -d "$THEME_DIR$THEME" ]]; then
    echo "Theme already exists. Enjoy ;)"
    exit 1
fi

echo "./$THEME => $THEME_DIR$THEME"
cp "./$THEME" "$THEME_DIR$THEME"
echo "copied! Enjoy ;)"
