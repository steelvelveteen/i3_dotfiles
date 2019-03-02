<div align="center">
  
  # Manjaro i3 Edition full configuration
  ##  NerdFonts, FontAwesome, Polybar, MPD, ZSH, VIM, Powerlevel9k, Rofi
  
  ![Desktop](https://github.com/steelvelveteen/i3_dotfiles/blob/master/screenshots/screenshot.png)
  
</div>

## Fonts. First things first
### Nerd Fonts

Download the latest [release.](https://github.com/ryanoasis/nerd-fonts/releases) (Aprox. 2G)
(WARNING: Chrome might fail, so try with different browsers)
Unzip the folder, cd into it and run `./install.sh`
Let it do its job.

### Font Awesome
Grab the latest [release here.](https://github.com/FortAwesome/Font-Awesome/releases)

Also, for *Polybar* you will need to have installed version 4 for FontAwesome.
For this,

`yaourt ttf-font-awesome`

and pick the right version from the AUR


### Powerline fonts

These are specific to Powerlevel9k
`yaourt powerline-fonts`

Download the latest release and unzip in your `~/.fonts` directory

## Polybar

Do a yaourt polybar and you will see *community* and *AUR* versions. Get the AUR version, usually in position 3.
There is a config example file in /usr/share/doc/polybar/config that is neither zipped and it is NOT in /usr/local/share/doc/polybar whatever as mentioned in the wiki. Instructions may be misleading. Well, they are.

Create a directory:

`mkdir ~/.config/polybar` and copy that config file inside your ~/.config/polybar

Test it by running `polybar [name of the bar module as in the config file]`
#### NOTE: To terminate already running bar instances
killall -q polybar

Create a file in `~/.config/polybar` directory named `launch.sh` and add the following code.

```
#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar top &
polybar bottom &
echo "Bars launched..."
```

## VIM Setup
* Install [pathogen](https://github.com/tpope/vim-pathogen)
or run the following command
```
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
* Install [vim-airline](https://github.com/vim-airline/vim-airline)
* Install [vim-airline-themes]( https://github.com/vim-airline/vim-airline-themes)
* and [vim-sensible](https://github.com/tpope/vim-sensible)

Finish your vim setup by getting all the plugins you need
* [auto-pairs](https://github.com/jiangmiao/auto-pairs)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [supertab](https://github.com/ervandew/supertab)

### Setting mustang color scheme for vim
Create a directory inside .vim called colors and copy color scheme there.
Copy .vimrc file into your home directory

## Powerlevel9k

Make sure you have installed [powerline](#Powerline-fonts) fonts.
Coming soon ...


## ZSH Setup
Make it your default shell

   `chsh -s /bin/zsh`
   
   `sudo chsh -s /bin/zsh`
##### Note:
If it can't find zsh try `/usr/bin/zsh`
or run command `$(which zsh)`

Set up [oh-my-zsh]( https://github.com/robbyrussell/oh-my-zsh)
##### via curl
` sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

### colorls for beautiful colors when doing ls
You will need to install first ruby on your computer if it's not already installed
More info on the arch wiki [here.](https://wiki.archlinux.org/index.php/ruby)
Then you will have to install ruby gems. You will find info on that same wiki
Don't forget to add the binaries to your PATH
And then you finally install [colorls.](https://github.com/athityakumar/colorls)


<div align="center">
  
  # KDE specific configuration and other settings
  ##  work in progress
  
</div>
  
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
    "editor.fontSize": 16,
    "terminal.integrated.fontFamily": "TerminessTTF Nerd Font",
    "terminal.integrated.fontSize": 18,
    "terminal.integrated.setLocaleVariables": false,
    "editor.minimap.enabled": false,
    "editor.wordWrap": "on"
}
```

