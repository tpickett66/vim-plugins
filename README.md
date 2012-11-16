vim-plugins
===========

My Vim plugins and .vimrc

Installation
============

Ensure your .vim folder doesn't exist, move it if you've already got suff in
there.

```bash
rm -rf ~/.vim
```

Clone the repo:
```bash
# if you're me
git clone git@github.com:tpickett66/vim-plugins.git ~/.vim

# everyone else
git clone git://github.com/tpickett66/vim-plugins.git ~/.vim
```

Actually pull in the plugins since they're all git submodules
```
cd ~/.vim
git submodule init
git submodule update
```

Build the command-t C extension

```bash
rvm use system
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
```
