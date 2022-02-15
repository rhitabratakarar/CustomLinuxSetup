# First Install vim-plug plugin manager.

Install Vim-Plug:
1. Refer to [this page](https://github.com/junegunn/vim-plug).
2. Copy the code from [this link](https://github.com/junegunn/vim-plug#example) and paste it inside init.vim.
3. Remove unnecessary Plugins from the pasted code. (Note: Plugins are those which have the line starting with 'Plug' word).
4. Save and restart the nvim instance. Type ':PlugInstall' to install the plugins.

# Use these Instructions to customize manually or can copy the prebuilt configurations present in this repo.

### Plugin Installation:

Install Conqueror of Completion (COC):
1. Refer to the Coc github page from [this link](https://github.com/neoclide/coc.nvim).
2. To setup a python environment, you must install the extension, 'coc-pyright' (Note: Coc extensions and vim-plug plugins are not same).

Install Vim Airline:
1. Goto [this](https://github.com/vim-airline/vim-airline) page to customize it. 
2. TL;DR, Add `Plug 'vim-airline/vim-airline'` in your init.vim file (under plug#begin() and plug#end()).

Install Gruvbox theme:
1. Goto [this](https://github.com/morhetz/gruvbox) to read the documentation.
2. TL;DR, Add `Plug 'morhetz/gruvbox'` in your init.vim file (under plug#begin() and plug#end()).

Install NERDTree:
1. Goto [this](https://github.com/preservim/nerdtree) page to read the manual and manually customize it.
2. TL;DR, Add `Plug 'preservim/nerdtree'` in your init.vim file (under plug#begin() and plug#end()).

Install Colorizer:
1. Goto [this link](https://github.com/norcalli/nvim-colorizer.lua) page and read the manual to customize it manually.
2. TL;DR, Add, `Plug 'norcalli/nvim-colorizer.lua'` in your init.vim file (under plug#begin() and plug#end()).
3. Add a line, `set termguicolors`, just below the plug#end() function.
4. Add another line, just below the above line, which is `lua require'colorizer'.setup()` to make the colorizer work.

#### Finally:
1. After manually adding the plugins, restart nvim and do the following.
2. Open a neovim instance and type `:PlugInstall` to Install.
3. Do not forget to update the plugins too, using `:PlugUpdate` command (consider doing it weekly).
4. Ever want to remove a Plugin? Remove the plugin name from the Plugin call function and save the file and restart vim. Open another instance and run the `:PlugClean` command.

### Customizing Shell and Terminal:
Change Terminal Font:
1. Download `Cascadia Code` or `Source Code Pro` or `Hack` font.
2. Unzip the zip file and move the extracted contents into ~/.fonts directory.
3. To update the font cache, Open the terminal and type `fc-cache -r -v`.
4. Restart the terminal.
5. Go to the preferences of the terminal and change the font.

Change Terminal Theme:
1. Open up the respective terminal given in the operating system.
2. Download `Gruvbox` Theme for the respective terminal, if not available, can go with other options too.
3. Setup the Downloaded theme by going to the preferences of the terminal.

Change Shell and customize:
1. Install `zsh`.
2. Change the shell to `zsh` by using the command, `chsh -s $(which zsh)`.
3. Restart the terminal.
4. Do the necessities that `zsh` recommends (it will disappear once the zsh is setup completely).
5. Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh).
6. Change the theme to `fino` by using the command `omz theme set fino`.
7. To list all the themes `omz theme list` command can be used. It will list all the existing themes that comes prebuilt with `oh-my-zsh`.
8. If you want to use custom theme, I recommend [powerlevel10k](https://github.com/romkatv/powerlevel10k).

Change Window Manager (theming is done here according to gruvbox theme):
1. Install [i3-wm](https://github.com/i3/i3) or maybe [i3-gaps](https://github.com/Airblader/i3) for the respective distribution.
2. Go to [this github repo](https://github.com/a-schaefers/i3-wm-gruvbox-theme/) to customize your i3wm according to gruvbox theme.
3. To set a wallpaper, use the command `exec --no-startup-id feh --bg-fill <path-to-image-file>` and add it to the end of the config file.
4. Or, Go to [this github repo](https://github.com/nimishgo/i3wm-themes) to manually check all applicable themes.
5. Add `for_window [class=".*"] border pixel 0` to the config file to remove borders from the side of the windows, or instead of 0, any other values can also be used to keep a border of that pixels around the windows, for example: `for_window[class=".*"] border pixel 2` which will add 2 pixel borders around every windows.
6. If i3-gaps was installed, these below instructions can be used to create gaps between windows (feel free to play with the numbers and for more instructions, go to [this page](https://github.com/Airblader/i3#configuration))

        gaps inner 6
        gaps top 5
        gaps left 5
        gaps bottom 5
        gaps right 5

Change Wallpaper:
1. Install `feh` for the respective distribution.
2. Open the terminal and type `feh --bg-fill <path-to-image-file>` where path to image file is the location of the file.

Change GTK theme and Icon theme:
1. Checkout this [repo](https://github.com/TheGreatMcPain/gruvbox-material-gtk) for Gruvbox gtk theme and icons.
2. Install `lxappearance` and change to the respective themes.

Make Terminal Transparent:
1. Install third Party compositor, like `compton` for example.
2. Add `exec --no-startup-id compton` to the i3 config file.
3. Open `~/.config/compton.conf` and add `opacity-rule=["85:class_g = 'xfce4-terminal'"]`. This rule is for adding opacity for xfce4-terminal.
4. Open Terminal and select transparency value from the preferences.
