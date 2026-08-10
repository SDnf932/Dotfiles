set number
set relativenumber

filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set showmatch
set backspace=indent,eol,start
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
