#shebang
#!/bin/bash

#removes the .vimrc file in the hokmed irectory
rm -f ~/.vimrc

#removes the line forom the .bashrc file in the home directory
# sed -i 's/beep/bop/g' ~/.bashrc
sed -i 's/source \~\/\.dotfiles\/etc\/bashrc\_custom//g' ~/.bashrc


#removes the .TRASH directory in the home directory 
rm -rf ~/.TRASH
