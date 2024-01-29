# aliases

alias dev="cd ~/Development"

alias logs="journalctl -l --no-pager -b -x | less +F"


# shadow removal

In the location `~/.config/gtk-3.0/gtk.css`, add the line `decoration {box-shadow: none;}`.
