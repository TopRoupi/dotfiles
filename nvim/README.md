# SETUP

```bash
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

  gem install neovim
  pip3 install --user pynvim
  pip2 install --user pynvim

  gem install solargraph -v 0.18.0
  pip install solargraph-utils.py --user

  yard gems
  yard config --gem-install-yri

  asdf reshim ruby

  sudo dnf install words
```
:CocInstall coc-solargraph
