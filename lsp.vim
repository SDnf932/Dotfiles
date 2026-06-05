" Enable diagnostics highlighting
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

let lspServers = [
      \ #{
      \   name: 'rust-analyzer',
      \   filetype: ['rust'],
      \   path: 'rust-analyzer',
      \   args: []
      \ },
      \ #{
      \   name: 'clangd',
      \   filetype: ['c', 'cpp'],
      \   path: 'clangd',
      \   args: ['--background-index']
      \ },
      \ #{
      \   name: 'pyright',
      \   filetype: ['python'],
      \   path: 'pyright-langserver',
      \   args: ['--stdio']
      \ },
      \ #{
      \   name: 'gopls',
      \   filetype: ['go'],
      \   path: 'gopls',
      \   args: []
      \ },
      \ #{
      \   name: 'lua-language-server',
      \   filetype: ['lua'],
      \   path: 'lua-language-server',
      \   args: []
      \ },
      \ #{
      \   name: 'solargraph',
      \   filetype: ['ruby'],
      \   path: 'solargraph',
      \   args: ['stdio']
      \ },
      \ #{
      \   name: 'sqls',
      \   filetype: ['sql'],
      \   path: 'sqls',
      \   args: []
      \ },
      \ #{
      \   name: 'bash-language-server',
      \   filetype: ['sh'],
      \   path: 'bash-language-server',
      \   args: ['start']
      \ },
      \ #{
      \   name: 'intelephense',
      \   filetype: ['php'],
      \   path: 'intelephense',
      \   args: ['--stdio']
      \ },
      \ #{
      \   name: 'vscode-html-language-server',
      \   filetype: ['html'],
      \   path: 'vscode-html-language-server',
      \   args: ['--stdio']
      \ },
      \ #{
      \   name: 'vscode-css-language-server',
      \   filetype: ['css', 'scss', 'less'],
      \   path: 'vscode-css-language-server',
      \   args: ['--stdio']
      \ },
      \ #{
      \   name: 'typescript-language-server',
      \   filetype: [
      \     'javascript',
      \     'javascriptreact',
      \     'typescript',
      \     'typescriptreact'
      \   ],
      \   path: 'typescript-language-server',
      \   args: ['--stdio']
      \ }
      \ ]

autocmd User LspSetup call LspAddServer(lspServers)

" Key mappings
nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap K  :LspHover<CR>
nnoremap gl :LspDiag current<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>
inoremap <silent> <C-Space> <C-x><C-o>

" Set omnifunc for completion
autocmd FileType * setlocal omnifunc=lsp#complete

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
    \   diagSignErrorText: '✘',
    \   diagSignWarningText: '▲',
    \   diagSignInfoText: '»',
    \   diagSignHintText: '⚑',
    \ })
