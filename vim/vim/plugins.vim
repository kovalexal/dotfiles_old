"""""""""""""""""""""""""""""""""""""""""""
" ==> Vundle && Plugins section
"""""""""""""""""""""""""""""""""""""""""""
filetype off " required

set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path
call vundle#begin() " initialize vundle

" Plugins
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'bling/vim-airline' " Airline plugin
Plugin 'scrooloose/nerdtree' " Nerdtree plugin

call vundle#end() " required
filetype plugin indent on " required