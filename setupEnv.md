#### FOR UBUNTU TYPE SYSTEMS ####

Change Terminal Font:
1. Download `Noto Sans Mono` or `Ubuntu Mono` or `Hack` font.
2. Unzip the zip file and move the extracted contents into ~/.fonts directory.
3. To update the font cache, Open the terminal and type `fc-cache -r -v`.
4. Restart the terminal.
5. Go to the preferences of the terminal and change the font.

Change Terminal Theme:
1. Open up the respective terminal given in the operating system.
2. Download `Gruvbox` Theme for the respective terminal, if not available, can go with other options too.
3. Setup the Downloaded theme by going to the preferences of the terminal.

Change Shell:
1. Install `zsh`.
2. Change the shell to `zsh` by using the command, `chsh -s $(which zsh)`.
3. Restart the terminal.
4. Do the necessities that `zsh` recommends (it will disappear once the zsh is setup completely).
5. Install `oh-my-zsh`.
6. Change the theme to `fino` by using the command `omz theme set fino`.
7. To list all the themes `omz theme list` command can be used. It will list all the existing themes that comes prebuilt with `oh-my-zsh`.

Change Window Manager (theming is done here according to gruvbox theme):
1. Install i3wm for the respective distribution.
2. Go to [this github repo](https://github.com/a-schaefers/i3-wm-gruvbox-theme/) to customize your i3wm according to gruvbox theme.
3. To set a wallpaper, use the command `exec --no-startup-id feh --bg-fill <path-to-image-file>` and add it to the end of the config file.
4. Or, Go to [this github repo](https://github.com/nimishgo/i3wm-themes) to manually check all applicable themes.

Change Wallpaper:
1. Install `feh` for the respective distribution.
2. Open the terminal and type `feh --bg-fill <path-to-image-file>` where path to image file is the location of the file.
