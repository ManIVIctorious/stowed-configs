## Repository of configuration files

The repository is managed by GNU Stow

Each set of configuration files is stowed in its own directory
and sub-directories. To "install" the configuration files use

  stow --dotfiles <directory name> -t <target directory>

If the target directory is the repository's parent directory
this flag can be omitted.
The --dotfiles flag applies a special handling for filenames
beginning with a period to ease the handling of hidden files.
Utilising this flag enables to substitute the leading period
of a hidden file to "dot-" within the repository, e.g. applying

  stow --dotfiles bash

on the direcory

  bash
  ├── dot-bashrc
  └── dot-inputrc

creates the two symlinks ".bashrc" and ".inputrc" to the
repository's parent directory.

Unfortunately, as of time writing there is a bug in stow's
--dotfiles handling for directories. Hence, hidden directories
at the moment have to keep their leading period.
