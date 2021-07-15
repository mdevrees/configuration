# install virtualenvwrapper using pip install virtualenvwrapper --user
if [ -f $HOME/.local/bin/virtualenvwrapper.sh ]; then
    # Locate the global Python where virtualenvwrapper is installed.
    if [ "$VIRTUALENVWRAPPER_PYTHON" = "" ]; then
        VIRTUALENVWRAPPER_PYTHON="$(command \which python3)"
    fi
    export WORKON_HOME=$HOME/.virtualenvs
    source $HOME/.local/bin/virtualenvwrapper.sh
fi

if [ -d $HOME/.pyenv ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PATH:$PYENV_ROOT/bin"
fi
