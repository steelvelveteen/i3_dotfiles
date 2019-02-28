<div align="center">
  
  # i3 Desktop full configuration
  ##  NerdFonts, FontAwesome, Polybar, MPD, ZSH, VIM, Powerlevel9k
  
</div>

## Fonts. First things first
### Nerd Fonts

https://github.com/ryanoasis/nerd-fonts

Download the latest release. (Aprox. 2G)
(WARNING: Chrome might fail, so try with different browsers)
Unzip the folder, cd into it and run `./install.sh`
Let it do its job.

### Font Awesome and other fonts

https://github.com/FortAwesome/Font-Awesome

Also, for *Polybar* you will need to have installed version 4 for FontAwesome.
For this,
```
yaourt ttf-font-awesome

```
and pick the right version from the AUR

### Install i3-blocks
* One way and only one way

  `yaourt i3blocks`

* On your .i3/config file set status_command i3blocks
* refresh i3wm $mod4+shift+r

### VSCODE locale problem
#### Add "terminal.integrated.setLocaleVariables":false to your settings.json file
```
{
    "workbench.startupEditor": "newUntitledFile",
    "workbench.colorTheme": "Liqube Dark Code",
    "workbench.iconTheme": "material-icon-theme",
    "workbench.sideBar.location": "right",
    "editor.mouseWheelZoom": true,
    "terminal.external.linuxExec": "urxvt",
    "editor.fontFamily": "MesloLGL Nerd Font",
    "terminal.integrated.fontFamily": "MesloLGL Nerd Font",
    "terminal.integrated.setLocaleVariables":false
}
```


## Other fonts
```
  yaourt powerline-fonts
```

Download the latest release and unzip in your `~/.fonts` directory


### Confuring i3blocks
* Clone bash scripts and place them in `.i3/i3scripts` folder

## VIM Setup
* Install pathogen
https://github.com/tpope/vim-pathogen
or run this command
```
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
* Install vim-airline https://github.com/vim-airline/vim-airline, 
* vim-airline-themes https://github.com/vim-airline/vim-airline-themes
* and vim-sensible

Finish your vim setup by getting all the plugins you need
*auto-pairs
*nerdtree
*supertab
* etc



## ZSH Setup
* Make it your default shell
```
   chsh -s /bin/zsh
   sudo chsh -s /bin/zsh
   ```
##### Note:
If it can't find zsh try `/usr/bin/zsh`
or run command `$(which zsh)`

Set up oh-my-zsh https://github.com/robbyrussell/oh-my-zsh
### via curl
` sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

## Polybar


Do a youart polybar and you will see community and aur versions. Get the aur version, usually in position 3.
Fucking instructions!!
There is a config example file in /usr/share/doc/polybar/config that is neither zipped and it is NOT in /usr/local/share/doc/polybar whatever as in the wiki.
mkdir ~/config/polybar and copy that config file into your ~/.config/polybar

# To terminate already running bar instances
killall -q polybar

<div align="center">
  
  # KDE specific configuration
  ##  work in progress
  
</div>
