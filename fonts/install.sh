#!/bin/sh
install() {
	curl -Lso /tmp/hack.zip https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
	unzip -j /tmp/hack.zip -d "$1"
}

if [ "$(uname -s)" = "Darwin" ]; then
	if command -v brew >/dev/null 2>&1; then
		brew tap homebrew/cask-fonts
		brew cask install font-hack font-fira-code
	else
		install ~/Library/Fonts
	fi
else
	mkdir -p ~/.local/share/fonts/
	install ~/.local/share/fonts/
	fc-cache -fv
	# I like Firefonts settings "editor.fontLigatures" in vscode
	sudo add-apt-repository universe && sudo apt install fonts-firacode
fi
