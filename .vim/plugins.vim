" autocmd BufWritePost plugins.vim execute ":PlugInstall"

call plug#begin()
" UI
Plug 'BourgeoisBear/clrzr'
Plug 'ryanoasis/vim-devicons'
Plug 'zefei/vim-wintabs'
Plug 'zefei/vim-wintabs-powerline'
Plug 'voldikss/vim-floaterm'
Plug 'vim-airline/vim-airline'

" GIT
Plug 'airblade/vim-gitgutter'

" Colorschemes
Plug 'crusoexia/vim-monokai'
Plug 'bluz71/vim-moonfly-colors'
Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'ghifarit53/tokyonight-vim'


" Programing language support
Plug 'sheerun/vim-polyglot'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'chiel92/vim-autoformat'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'

" File explorer
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle'}
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()


" STYLED COMPONENTS
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


" ASYNCOMPLETE
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" GITGUTTER
let g:gitgutter_sign_added = '▎ '
let g:gitgutter_sign_modified = '▎ '
let g:gitgutter_sign_removed = '契 '
let g:gitgutter_sign_removed_first_line = '契 '
let g:gitgutter_sign_removed_above_and_below = '契 '
let g:gitgutter_sign_modified_removed = '▎ '

