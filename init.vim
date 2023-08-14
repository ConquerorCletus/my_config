:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:colorscheme slate
:set completeopt-=preview " For No Previews
:set clipboard+=unnamedplus
filetype plugin indent on
autocmd FileType tex let b:coc_pairs = [["$", "$"]]

call plug#begin()

Plug 'matze/vim-move' " To move line and suggestion
Plug 'tpope/vim-fugitive' " git integration
Plug 'nathanaelkane/vim-indent-guides' " indent guides
Plug 'hynek/vim-python-pep8-indent' " another indent guide
Plug 'scrooloose/syntastic' " Syntax checks
Plug 'foosoft/vim-argwrap' " For wrapping arguments
Plug 'airblade/vim-gitgutter' " Show git changes in open files
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'clangd/coc-clangd', {'do': ':CocInstall coc-clangd'}
Plug 'rstacruz/vim-closer'
call plug#end()


inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <F6> :vsp<CR>:terminal<CR>

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeShowDevIcons = 1

" formatting with semistandard for JS  
let g:syntastic_javascript_checkers=['standard']
let g:syntastic_javascript_standard_exec = 'semistandard'
autocmd bufwritepost *.js silent !semistandard % --fix
set autoread

autocmd FileType javascript setl makeprg=eslint\ --fix\ %
let g:coc_global_extensions = ['coc-tsserver']


let g:coc_global_config = {
  \ 'suggest.enableSnippets': v:true,
  \ 'suggest.enablePreview': v:true,
  \ 'suggest.autoTrigger': 'always',
  \ 'suggest.selectBehavior': 'insert',
  \ 'suggest.acceptSuggestionOnEnter': 'always',
  \ 'suggest.enableArrowKey': v:true,
  \ }



" Configure coc.nvim for C language server (clangd)
let g:coc_server_clangd_args = [
  \ '--background-index',
  \ '--clang-tidy',
  \ '--completion-style=bundled',
  \ '--header-insertion=iwyu',
  \ '--suggest-missing-includes',
  \ '--clang-tidy-checks=clang-analyzer-*,performance-*,portability-*,readability-*',
  \ ]

augroup myCocSettings
  autocmd!
  autocmd FileType c,cpp call coc#config('clangd', {'rootPatterns': ['.clangd', 'compile_commands.json'], 'filetypes': ['c', 'cpp']})
augroup end

" Enable vim-closer plugin
let g:closer_disabled = 0

" Automatically close brackets, braces, and quotes in Insert mode
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

