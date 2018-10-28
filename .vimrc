set nocompatible      " Nécessaire
filetype off          " Nécessaire

" Ajout de Vundle au runtime path et initialisation
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" On indique à Vundle de s'auto-gérer :)
" Plugin 'gmarik/Vundle.vim'  " Nécessaire
Plugin 'VundleVim/Vundle.vim'


"
" C'est ici que vous allez placer la liste des plugins que Vundle doit gérer
"
Plugin 'itchyny/lightline.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'Royal-Colorschemes'
Plugin 'ajmwagar/vim-deus.git'
" Plugin 'powerline/powerline'

call vundle#end()            " Nécessaire
filetype plugin indent on    " Nécessaire

" enable mouse scrolling
set mouse=a

"syntax highlighting
syntax on
colorscheme deus


" setup lightline status bar
"
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

"tab length
set tabstop=4
set softtabstop=4
"set expandtab "turns tab into a 4 space insertion shortcut

"UI config
set number "show line numbers
set showcmd "show the last command you entered
set cursorline "highlight the line where the cursor is
filetype indent on "indentation
set wildmenu "menu for autocompletion
set lazyredraw "do not redraw during macros
set showmatch "detect parenthesis, ...

"searching
set incsearch
set hlsearch "(better research)
"nnoremap <leader><space> :nohlsearch<CR> 
"map stop highlighting the research to \+<space>

"Folding
set foldenable
set foldlevelstart=99
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

"Movement
nnoremap s gj
nnoremap z gk
nnoremap q <left>
nnoremap d <right>

nnoremap <leader><space> <esc>

"options for specific files
augroup configgroup
	autocmd!
	autocmd VimEnter * highlight clear SignColumn
	autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
				\:call <SID>StripTrailingWhitespaces()
	autocmd FileType java setlocal noexpandtab
	autocmd FileType java setlocal list
	autocmd FileType java setlocal listchars=tab:+\ ,eol:-
	autocmd FileType java setlocal formatprg=par\ -w80\ -T4
	autocmd FileType php setlocal expandtab
	autocmd FileType php setlocal list
	autocmd FileType php setlocal listchars=tab:+\ ,eol:-
	autocmd FileType php setlocal formatprg=par\ -w80\ -T4
	autocmd FileType ruby setlocal tabstop=2
	autocmd FileType ruby setlocal shiftwidth=2
	autocmd FileType ruby setlocal softtabstop=2
	autocmd FileType ruby setlocal commentstring=#\ %s
	autocmd FileType python setlocal commentstring=#\ %s
	autocmd BufEnter *.cls setlocal filetype=java
	autocmd BufEnter *.zsh-theme setlocal filetype=zsh
	autocmd BufEnter Makefile setlocal noexpandtab
	autocmd BufEnter *.sh setlocal tabstop=2
	autocmd BufEnter *.sh setlocal shiftwidth=2
	autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

