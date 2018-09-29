# This file is identical to conf.d/pyenv.fish and is required for oh-my-fish support

if not command -s pyenv > /dev/null
    echo "Install <github.com/yyuu/pyenv> to use 'pyenv'."
    exit 1
end

set -l pyenv_root ""

if test -z "$PYENV_ROOT"
    set pyenv_root ~/.pyenv
    set -xg PYENV_ROOT "$pyenv_root"
else
    set pyenv_root "$PYENV_ROOT"
end

if status --is-login
    set -xg PATH "$pyenv_root/shims" $PATH
    set -xg PYENV_SHELL fish
end
command mkdir -p "$pyenv_root/"{shims,versions}