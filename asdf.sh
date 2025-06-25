# Source essential asdf functions : 
export ASDF_DATA_DIR="$HOME/.local/share/asdf"
export ASDF_CONCURRENCY=13

. <($HOME/.local/bin/asdf completion bash)

[[ $PATH =~ $ASDF_DATA_DIR/shims ]] || export PATH="$PATH:$ASDF_DATA_DIR/shims"

function asdf-install-latest() {
  [[ $(asdf plugin list|grep $1) ]] || asdf plugin add $1
  last=$(asdf list all $1|grep -x '[[:digit:]]\+\.[[:digit:]]\+\.[[:digit:]]\+'|tail -n1)
  asdf install $1 $last
  asdf set -u $1 $last
}
