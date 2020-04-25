if [ -d $HOME/.local/bin ]; then
   PATH="$PATH:$HOME/.local/bin"
fi

# install virtualenvwrapper using pip install virtualenvwrapper --user
if [ -f $HOME/.local/bin/virtualenvwrapper.sh ]; then
    # Locate the global Python where virtualenvwrapper is installed.
    if [ "$VIRTUALENVWRAPPER_PYTHON" = "" ]; then
        VIRTUALENVWRAPPER_PYTHON="$(command \which python3)"
    fi
    export WORKON_HOME=$HOME/.virtualenvs
    source $HOME/.local/bin/virtualenvwrapper.sh
fi
