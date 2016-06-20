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
"set textwidth=79
set encoding=utf-8
set formatoptions=tcql

"spellchecking
set nospell
set spelllang=en,de_de
set spellfile=~/.vim/spellfile.add

"relative numbers
set relativenumber

"color line at 80 chars
"if exists('+colorcolumn')
"    set colorcolumn=80
"else
"    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
"endif

" make :W to :w 
cnoreabbrev W w

"highlight trailing whitspaces
"highlight WhitespaceEOL ctermbg=128 guibg=Red
"match WhitespaceEOL /\s\+$/
"autocmd ColorScheme * highlight WhitespaceEOL ctermbg=128 guibg=Red

"reread if file is modified outside of vim
set autoread

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

"very magic regexes
nnoremap / /\v
vnoremap / /\v

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
filetype plugin indent on

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"Powerline
set laststatus=2
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" latex suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set iskeyword+=:
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_FoldedSections = ''
let g:Tex_GotoError=1
let g:tex_comment_nospell=1
let g:Tex_ViewRule_pdf = '/Applications/Preview.app'

"disable placeholders
"let g:Imap_UsePlaceHolders = 0
"Key remappings
"-----------------------------------------
"remap mapleader to comma
let mapleader = ","

" Jump to start and end of line using the home row keys
map H ^
map L $
nmap º <C-f>
nmap ∆ <C-b>

"colorschemes
colorscheme vimbrant
set background=dark
highlight SpellBad ctermfg=166
" vim: set ft=vim

"enable pathogen
execute pathogen#infect()
execute pathogen#helptags()

"options for python highlighing
let python_highlight_indent_errors = 0
let python_highlight_space_errors = 0
let python_highlight_all = 1

"css3 syntax
augroup VimCSS3Syntax
    autocmd!

    autocmd FileType css setlocal iskeyword+=-
augroup END


"Python mode
let pymode_doc = 0
let pymode_rope_complete_on_dot = 0
let g:pymode_rope = 1
let g:pymode_lint = 1
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_docstrings = g:pymode_syntax_all
set completeopt=menu "disables docs on autocompete
