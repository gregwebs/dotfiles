zimfw() { source /Users/gweber/.zim/zimfw.zsh "${@}" }
zmodule() { source /Users/gweber/.zim/zimfw.zsh "${@}" }
typeset -g _zim_fpath=(/Users/gweber/.zim/modules/git/functions /Users/gweber/.zim/modules/utility/functions /Users/gweber/.zim/modules/duration-info/functions /Users/gweber/.zim/modules/git-info/functions /Users/gweber/.zim/modules/archive/functions)
fpath=(${_zim_fpath} ${fpath})
autoload -Uz -- git-alias-lookup git-branch-current git-branch-delete-interactive git-branch-remote-tracking git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw duration-info-precmd duration-info-preexec coalesce git-action git-info archive lsarchive unarchive
source /Users/gweber/.zim/modules/environment/init.zsh
source /Users/gweber/.zim/modules/git/init.zsh
source /Users/gweber/.zim/modules/input/init.zsh
source /Users/gweber/.zim/modules/termtitle/init.zsh
source /Users/gweber/.zim/modules/utility/init.zsh
source /Users/gweber/.zim/modules/duration-info/init.zsh
source /Users/gweber/.zim/modules/asciiship/asciiship.zsh-theme
source /Users/gweber/.zim/modules/zsh-completions/zsh-completions.plugin.zsh
source /Users/gweber/.zim/modules/completion/init.zsh
source /Users/gweber/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/gweber/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/gweber/.zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh
source /Users/gweber/.zim/modules/archive/init.zsh
source /Users/gweber/.zim/modules/exa/init.zsh
source /Users/gweber/.zim/modules/fzf/init.zsh
source /Users/gweber/.zim/modules/homebrew/init.zsh
