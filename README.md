# Configuration
This repo is to keep some of my configuration at a place where it's easily reachable (I can fetch it using curl/wget).
## Appending to files
Append configs to your files
```bash
curl https://raw.githubusercontent.com/mdevrees/configuration/master/.bashrc >> ~/.bashrc
curl https://raw.githubusercontent.com/mdevrees/configuration/master/.screenrc >> ~/.screenrc
curl https://raw.githubusercontent.com/mdevrees/configuration/master/.gitconfig >> ~/.gitconfig
```

or via gitlab
```bash
curl https://gitlab.com/m.devrees/configuration/-/raw/master/.bashrc >> ~/.bashrc
curl https://gitlab.com/m.devrees/configuration/-/raw/master/.screenrc >> ~/.screenrc
curl https://gitlab.com/m.devrees/configuration/-/raw/master/.gitconfig >> ~/.gitconfig
curl https://gitlab.com/m.devrees/configuration/-/raw/master/zsh-aliases/custom-aliases.zsh >> $ZSH_CUSTOM/custom-aliases.zsh

```
## G810-led
G810 led goes to `/etc/g810-led` and that contains the `profile` file. It contains a profile I like.

