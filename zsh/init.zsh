# Initial setup
autoload -U compinit
compinit

zstyle ':completion:*:*:e:*' file-patterns '^*.(aux|log|pdf|aux|fls|fdb*):source-files' '*:all-files'
