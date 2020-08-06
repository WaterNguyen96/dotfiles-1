#!/bin/sh

mkdir /opt/firefox_dev && chown -R $USER /opt/firefox_dev

curl --location "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" \
  | tar --extract --verbose --preserve-permissions --bzip2 --directory=/opt/firefox_dev --strip-components=1

cat > ~/.local/share/applications/firefox_dev.desktop << EOF
[Desktop Entry]
Encoding=UTF-8
Name=Firefox Developer Edition
GenericName=Firefox Developer Edition
Exec=/opt/firefox_dev/firefox %u
Icon=/opt/firefox_dev/browser/chrome/icons/default/default128.png
Terminal=false
Type=Application
Categories=Network;WebBrowser;Favorite;X-Developer;
MiBmeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp; X-Ayatana-Desktop-Shortcuts=NewWindow;NewIncognitos;
Actions=new-window;new-private-window;
StartupWMClass=Firefox Developer Edition

[Desktop Action new-window]
Name=Open a New Window
Exec=/opt/firefox_dev/firefox %u

[Desktop Action new-private-window]
Name=Open a New Private Window
Exec=/opt/firefox_dev/firefox --private-window %u
EOF

chmod +x ~/.local/share/applications/firefox_dev.desktop