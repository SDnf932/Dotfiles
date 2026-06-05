set termguicolors
set background=dark
set laststatus=2
set noshowmode

"let g:gruvbox_italic=1
"let g:gruvbox_contrast_dark='hard'
let g:lightline = {'colorscheme': 'catppuccin_frappe'}

augroup CatppuccinFrappeManualFix
    autocmd!
    " Forces your preferred dark gray background color directly into Vim
    autocmd ColorScheme catppuccin_frappe highlight Normal guibg=#1a1a1a ctermbg=NONE
    autocmd ColorScheme catppuccin_frappe highlight SignColumn guibg=#1a1a1a ctermbg=NONE
    autocmd ColorScheme catppuccin_frappe highlight LineNr guibg=#1a1a1a
    autocmd ColorScheme catppuccin_frappe highlight StatusLine guibg=#141414
augroup END

augroup CustomLineNumbers
  autocmd!
  autocmd ColorScheme * highlight LineNr guifg=#FFA500 ctermfg=3
  autocmd ColorScheme * highlight CursorLineNr guifg=#FF4500 ctermfg=1
augroup END

highlight LineNr guifg=#FFA500 ctermfg=3
highlight CursorLineNr guifg=#FF4500 ctermfg=1

colorscheme catppuccin_frappe
