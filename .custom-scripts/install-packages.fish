#!/usr/local/bin/fish

# install the n installer and node
curl -L https://git.io/n-install | bash -s -- -y

# update npm
npm install --global npm

# install all packages auto complete
npm install --global all-the-package-names

# install yarn
npm install --global yarn

# install neovim
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
tar xzf nvim-macos.tar.gz

# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# install nvim plugins through command line
# https://github.com/junegunn/vim-plug/issues/225#issuecomment-583541912
nvim --headless +PlugInstall +qall

# install lsp servers
npm install -g typescript typescript-language-server
npm install -g bash-language-server
npm install -g vscode-css-languageserver-bin
npm install -g dockerfile-language-server-nodejs
npm install -g graphql-language-service-cli
npm install -g vscode-html-languageserver-bin
npm install -g vscode-json-languageserver
npm install -g vim-language-server
npm install -g yaml-language-server

# install better looking git diffs
npm install -g diff-so-fancy