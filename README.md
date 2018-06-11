# Dotfiles

This repo contains my personal configuration files. For historical reasons it
is still called `dotfiles`, even though it now lives in `~/.config`, since it
used to be a separate folder with files that got symlinked out.

## Structure

In general, most files live in directories specific to the application they are
for, e.g., all the ZSH config files live in the `zsh` directory. The exceptions
are a few files whose applications don't follow recommended practice and put
their files directly in `~/.config`, and the `user-dirs.dirs` file which
doesn't really belong to any one 'application' and sets up the default XDG
directories.

## Legacy files

Most of the files in this repo really belong in `~/.config`. A few, however,
belong to applications that will only read real dotfiles from the home
directory; these are listed in the `TARGETS` file. Each line in `TARGETS`
specifies a relative path to a file in the repo and a target path to which
that file will get symlinked by the `link.sh` script; this path is resolved
relative to `$HOME`.
