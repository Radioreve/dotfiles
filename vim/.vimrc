syntax on
set relativenumber
set number
set smartindent
set autoindent
set ruler
set mouse=a
set ignorecase
set smartcase
set cursorline
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab

"nnoremap = map keys, dont remap recursively and only in normal mode"

"move up and down 'visually' line by line
nnoremap j gj
nnoremap k gk

" jk to escape in insert
inoremap jk <Esc>

inoremap { {<CR><Tab><CR>}<up>

" vam configuration, to install, first run: 
" git clone https://github.com/MarcWeber/vim-addon-manager ~/.vim/vad
set rtp+=~/.vim/vad

" addons
let addons = []

" gcc to comment
let addons += ['github:tpope/vim-sensible']

" swag status bar
let addons += ['github:bling/vim-airline']

" colorscheme
let addons += ['github:nanotech/jellybeans.vim']

" File tree helper
let addons += ['github:scrooloose/nerdtree']

" auto update the addons
call vam#ActivateAddons(addons, {'auto_install' : 1})

" set the addon colorscheme
colorscheme jellybeans

" leader key
let mapleader = " "

" activate nerdtree
nnoremap <leader>o :NERDTree<CR>

" source init file
nnoremap <leader>so :source ~/.vimrc<CR>
