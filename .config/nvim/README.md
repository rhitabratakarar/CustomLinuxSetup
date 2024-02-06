# init.vim

For help, use :help
and for checking init.vim location, use :help init.vim

### Issues:

**Q) Can't copy into system clipboard?**

Neovim does not use any system clipboard, it depends on a provider.
view `:help clipboard` for more details.

But for now, some provider is required.

For xorg: xclip
For wayland: wl-clipboard

Then the below line should be present:
`set clipboard+=unnamedplus`

**Q) Can't change to a Nerd Font?**

For gnome environment, if you're using gnome-terminal, install gnome-tweaks. From tweaks, change the type of monospace font and restart the terminal. If you're using something else, you're on your own.

