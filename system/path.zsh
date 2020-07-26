#!/bin/sh
export PATH="$PATH:$DOTFILES/bin:$HOME/.bin"
export PATH="$PATH:/usr/bin/robomongo/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$HOME/flutter/bin:$PATH
export PATH=$HOME/dart/bin:$PATH

export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"

export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_221
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
