#!/bin/bash
./configure --with-features=huge \
              --enable-multibyte \
              --enable-rubyinterp=yes \ 
              --enable-python3interp=yes \
              --with-python3-config-dir=$(python3-config --configdir) \
              --enable-perlinterp=yes \
              --enable-luainterp=yes \
              --enable-gui=gtk2 \ 
              --enable-cscope \
              --prefix=/usr/local 

make VIMRUNTIMEDIR=/usr/local/share/vim/vim82 -j8 

make install  

update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1 
update-alternatives --set editor /usr/local/bin/vim 
update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1 
update-alternatives --set vi /usr/local/bin/vim
