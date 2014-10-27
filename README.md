Dotfiles
--------
These are my dotfiles; do with them what you will. The `bang` script will
symlink everything into a directory you specify (`$HOME` by default). By
default, all files with the `.ln` extension will go into the target directory
with the `.ln` extension stripped off. The target directory can be modified by
a `.target` file, which should contain a single path relative to the root
target directory, or the target directory of the folder above it. Files with a
`.zsh` extension will be automagically sourced by `zshrc`, and files in `vim/`
with a `.vim` extension by `vimrc`.
