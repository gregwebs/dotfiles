zimfw() { source $HOME/.zim/zimfw.zsh "${@}" }
zmodule() { source $HOME/.zim/zimfw.zsh "${@}" }
typeset -g _zim_fpath=($HOME/.zim/modules/git/functions $HOME/.zim/modules/utility/functions $HOME/.zim/modules/duration-info/functions $HOME/.zim/modules/git-info/functions $HOME/.zim/modules/archive/functions)
fpath=(${_zim_fpath} ${fpath})
autoload -Uz -- git-alias-lookup git-branch-current git-branch-delete-interactive git-branch-remote-tracking git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw duration-info-precmd duration-info-preexec coalesce git-action git-info archive lsarchive unarchive
source $HOME/.zim/modules/environment/init.zsh
source $HOME/.zim/modules/git/init.zsh
source $HOME/.zim/modules/input/init.zsh
source $HOME/.zim/modules/termtitle/init.zsh
source $HOME/.zim/modules/utility/init.zsh
source $HOME/.zim/modules/duration-info/init.zsh
source $HOME/.zim/modules/asciiship/asciiship.zsh-theme
source $HOME/.zim/modules/zsh-completions/zsh-completions.plugin.zsh
source $HOME/.zim/modules/completion/init.zsh
source $HOME/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh
source $HOME/.zim/modules/archive/init.zsh
source $HOME/.zim/modules/exa/init.zsh
source $HOME/.zim/modules/fzf/init.zsh
source $HOME/.zim/modules/homebrew/init.zsh
