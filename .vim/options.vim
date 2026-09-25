set number
set relativenumber

filetype plugin indent on
set expandtab
set shiftwidth=4
"set softtabstop=4
set tabstop=4
set smartindent
set autoindent
set showmatch
set backspace=indent,eol,start

" Show line numbers instead of tildes
set fcs=eob:\ 

" Sensible vim config
set noswapfile

syntax on

" Hide the popup message when in the command line windows
augroup vimHints
  autocmd!
augroup END

" Set the split buffer to always be below and right
set splitbelow splitright

" Remove the dealay when pressing Esc 
set ttimeoutlen=50

" View markdown files with glow 
autocmd FileType markdown nnoremap <F4> :vertical terminal /usr/bin/glow %<CR> <C-w>=


