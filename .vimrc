version 7.4
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=2
set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=79
set encoding=utf-8
set formatoptions=tcql
"spellchecking
set nospell
set spelllang=en,de_de
set spellfile=~/.vim/spellfile.add
"change color after 80 chars
set colorcolumn=80
"reread if file is modified outside of vim
set autoread
"scrolloff
set so=7
set ignorecase
set smartcase
"highlight cursorline
set cul
set autoindent
set history=500
set hlsearch
set ruler
set viminfo='20,\"50
"Line numbers
set number
set nocompatible    
set smarttab
set wrapmargin=5
set foldenable
set foldmethod=indent
set modeline
set showmatch
syntax enable
syntax on
filetype indent plugin on

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" latex suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set iskeyword+=:
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_FoldedSections = ''
let g:Tex_GotoError=1
let g:tex_comment_nospell=1
"disable placeholders
"let g:Imap_UsePlaceHolders = 0
let mapleader = ","

"colorschemes
colorscheme vimbrant
set background=dark
highlight SpellBad ctermfg=166
" vim: set ft=vim

"enable pathogen
execute pathogen#infect()
"rebind keys
"-----------------------------

