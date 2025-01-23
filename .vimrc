call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'dense-analysis/ale'
	Plug 'vim-airline/vim-airline'
	Plug 'scrooloose/nerdcommenter'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'arcticicestudio/nord-vim'
	Plug 'romgrk/barbar.nvim'
	Plug 'mattn/emmet-vim'
call plug#end()


syntax on
set termguicolors
colorscheme gruber

" Настройка nerdtree-----------------------------------------<<<<<<<<<<<<<<
" autocmd VimEnter * if !argc() | NERDTree | endif

nnoremap <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

let NERDTreeWinPos = 'left'

let NERDTreeDirArrows=1

let g:NERDTreeMapOpenSplit = 'o'

let g:NERDTreeMapCloseDir = '<C-c>'

map <silent> H :NERDTreeCloseNode<CR>

map <silent> L :NERDTreeOpenNode<CR>
" >>>>>>>-------------------------------------------------------------------


"НАСТРОЙКА ДЛЯ STATUSLINE ------------------------------------------<<<<<<<<<
let g:airline#extensions#default#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#narrow#enabled = 0
let g:airline_section_a = '%{mode()}'
let g:airline_section_b = '%f'
let g:airline_section_c = '%p%%'
let g:airline_section_y = '' 
let g:airline_section_z = ''

"НАСТРОЙКА ДЛЯ АВТОДОПОЛНЕНИЯ --------------------------------------<<<<<<<<<
let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-rome', 'coc-tsserver', 'coc-pyright']

"Клавиша таб для автодополнения
inoremap <silent> <Tab> <C-r>=coc#pum#confirm()<CR>

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" >>>>>>>>------------------------------------------------------------------

let g:clipboard = {
 \ 'name': 'xsel',
 \ 'copy': {
 \   '+': 'xsel --clipboard --input',
 \   '*': 'xsel --primary --input'
 \ },
 \ 'paste': {
 \  '+': 'xsel --clipboard --output',
 \  '*': 'xsel --primary --output'
 \ },
 \ 'cache_enabled': 0,
 \}

"Остальные общие настройки
set number
set relativenumber
set nocompatible
set noruler
set hlsearch
set incsearch
set guifont=Iosevka\ Regular:h19
set laststatus=2
set clipboard=unnamedplus
