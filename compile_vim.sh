#!/usr/bin/env bash
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
            #--with-x \
            #--enable-fontset \
            #--enable-largefile \
            #--disable-netbeans \
            #--with-compiledby="nohope" \
            #--enable-fail-if-missing \

sudo make VIMRUNTIMEDIR=/usr/local/share/vim/vim81 -j8

sudo checkinstall
