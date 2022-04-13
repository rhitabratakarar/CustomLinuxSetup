# Install Neovim:

1. Checkout [this](https://github.com/neovim/neovim/) github repo.

2. Jump into the `releases` section and download the appropriate package for your operating system.


# Install vim-plug plugin manager.


Note: If you do not want to install plugins, remove this step.

**Install Vim-Plug**:

1. Install Nodejs. Try to get the latest version from the website itself.

2. Refer to [this page](https://github.com/junegunn/vim-plug) for vim-plug.

3. Copy the code from [this link](https://github.com/junegunn/vim-plug#example) and paste it inside init.vim if not present.

4. Remove unnecessary Plugins from the pasted code. (Note: Plugins are those which have the line starting with 'Plug' word).

5. Save and restart the nvim instance. Type ':PlugInstall' to install the plugins.


# Plugins:


**Install Conqueror of Completion (COC)**:

Refer to the Coc github page from [this link](https://github.com/neoclide/coc.nvim).

*Adding COC Extensions*

1. To add extensions, find the line that says `let g:coc_global_extensions...` and add the name of the extension.

2. For example: To add 'coc-pyright' for python development, find the line and edit it like

        let g:coc_global_extensions = [...,  
        \ 'coc-pyright',  
        \]

    Note: The `...` represents the presence of other extensions.


**Install Vim Airline**:

1. Goto [this](https://github.com/vim-airline/vim-airline) page to customize it. 

2. TL;DR, Add `Plug 'vim-airline/vim-airline'` in your init.vim file (under plug#begin() and plug#end()).


**Install Vim Airline Themes (for additional themes)**:

1. Checkout [this](https://github.com/vim-airline/vim-airline-themes) repo to customize manually.

2. TL;DR, Add `Plug 'vim-airline/vim-airline-themes'` in your init.vim file (under plug#begin() and plug#end()).

3. Add the following lines in your init.vim file at the end

      `let g:airline#extensions#tabline#enabled = 1`

      `let g:airline_theme='molokai'`


**Install Gruvbox theme**:

1. Goto [this](https://github.com/morhetz/gruvbox) to read the documentation.

2. TL;DR, Add `Plug 'morhetz/gruvbox'` in your init.vim file (under plug#begin() and plug#end()).

3. Add `syntax on` in your init.vim file followed by another line, `colorscheme gruvbox`.


**Install Monokai Theme**:

1. Goto [this](https://github.com/tanvirtin/monokai.nvim) github repo to read the documentation.

2. TL;DR, Add `Plug 'tanvirtin/monokai.nvim'` in your init.vim file (under plug#begin() and plug#end()).

3. Add `syntax on` in your init.vim file if not present followed by another line, `colorscheme monokai_pro`


**Install NERDTree**:

1. Goto [this](https://github.com/preservim/nerdtree) page to read the manual and manually customize it.

2. TL;DR, Add `Plug 'preservim/nerdtree'` in your init.vim file (under plug#begin() and plug#end()).

3. Add a keybinding like `<F2>` to toggle the nerd tree. To do this, add `nmap <F2> :NERDTreeToggle<CR>` in your init.vim file.


**Install Colorizer**:

1. Goto [this link](https://github.com/norcalli/nvim-colorizer.lua) page and read the manual to customize it manually.

2. TL;DR, Add, `Plug 'norcalli/nvim-colorizer.lua'` in your init.vim file (under plug#begin() and plug#end()).

3. Add a line, `set termguicolors`, just below the plug#end() function.

4. Add another line, just below the above line, which is `lua require'colorizer'.setup()` to make the colorizer work.


#### Finally (Required if you have installed any of the plugins from the above section):

1. After manually adding the plugins, restart nvim and do the following.

2. Open a neovim instance and type `:PlugInstall` to Install.

3. Do not forget to update the plugins too, using `:PlugUpdate` command (consider doing it weekly).

4. To remove a Plugin: Remove the plugin name from the Plugin call function and save the file and restart neovim. Open another instance and run the `:PlugClean` command.


# Customizing Terminal and i3-gaps:


**Change Terminal Font**:

1. Download `Cascadia Code` or `Source Code Pro` or `Hack` font.

2. Unzip the zip file and move the extracted contents into ~/.fonts directory.

3. To update the font cache, Open the terminal and type `fc-cache -r -v`.

4. Restart the terminal.

5. Go to the preferences of the terminal and change the font.


**Change Terminal Theme**:

1. Open up the respective terminal given in the operating system.

2. Download `Gruvbox` Theme for the respective terminal, if not available, can go with other options too.

3. Setup the Downloaded theme by going to the preferences of the terminal.


**Change Shell and customize**:

1. Install `zsh`.

2. Change the shell to `zsh` by using the command, `chsh -s $(which zsh)`.

3. Restart the terminal.

4. Do the necessities that `zsh` recommends (it will disappear once the zsh is setup completely).

5. Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh).

6. Change the theme to `fino` by using the command `omz theme set fino`.

7. To list all the themes `omz theme list` command can be used. It will list all the existing themes that comes prebuilt with `oh-my-zsh`.

8. If you want to use custom theme, I recommend [powerlevel10k](https://github.com/romkatv/powerlevel10k).


**Change Window Manager (theming is done here according to gruvbox theme)**:

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


**Change Wallpaper**:

1. Install `feh` for the respective distribution.

2. Open the terminal and type `feh --bg-fill <path-to-image-file>` where path to image file is the location of the file.


**Change GTK theme and Icon theme**:

1. Checkout this [repo](https://github.com/TheGreatMcPain/gruvbox-material-gtk) for Gruvbox gtk theme and icons.

2. Install `lxappearance` and change to the respective themes.


**Make Terminal Transparent**:

1. Install third Party compositor, like `compton` for example.

2. Add `exec --no-startup-id compton` to the i3 config file.

3. Open `~/.config/compton.conf` and add `opacity-rule=["85:class_g = 'xfce4-terminal'"]`. This rule is for adding opacity for xfce4-terminal.

4. Open Terminal and select transparency value from the preferences.


**Install and setup Rofi**

1. For Ubuntu based Distributions, use `sudo apt install rofi` to install rofi.

2. For others, check [this repo](https://github.com/davatorium/rofi) documentation.

3. Find the line `bindsym $mod+d exec dmenu_run` in the `.config/i3/config` file and comment it by putting `#` in front of the line. 

4. Add a new line, `bindsym $mod+d exec rofi -show drun` and save the file.

5. Hit `modifierkey + shift + c` to reload the config file.


**Setup Rofi theme**

1. Since my theme of choice was `gruvbox`, I went for the `gruvbox-dark-soft` theme.

2. First make `rofi` directory under `.config` directory, path will look like `~/.config/rofi`.

3. Make two files under `~/.config/rofi` named `config` and `<theme_of_your_choice>.rasi`.

*Note: <theme_of_your_choice> will be the name of the theme that you have to make and append that name with `.rasi`.*

4. Checkout [this Github Repository](https://github.com/bardisty/gruvbox-rofi/) and choose the theme you want(files ending with .rasi filetype).

5. Copy the file contents, and paste it into the created file `<theme_of_your_choice>.rasi`.

6. Now, open the `config` file that you had created in step 3.

7. Append the file with, `rofi.theme: ~/.config/rofi/<theme_of_your_choice>.rasi`.

**Free Up Memory (Use it at your own risk)**:

1. A `clear.sh` script will be present in this repository.

2. Check whether the script is executable or not, (use `ls -l clear.sh` command, and `chmod +x clear.sh` to add executable permission).

3. To run the script, type `sudo ./clear.sh` and hit enter. Provide your password and the script will free up the memory.

