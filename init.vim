set modifiable
" set guifont=
" set write
highlight Normal ctermbg=NONE
set number
set encoding=UTF-8
set cursorline
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set clipboard=unnamed
set showtabline=2
syntax enable
set background=dark
let mapleader = ','

call plug#begin('~/.config/nvim/pluggin')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/tpope/vim-commentary'
" buffer
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Plug 'Xuyuanp/nerdtree-git-plugin' " integration with git
" Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'cristianoliveira/vim-react-html-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" indentLine
Plug 'Yggdroot/indentLine'
" tsserver code color
Plug 'HerringtonDarkholme/yats.vim'

" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'kristijanhusak/defx-git'
" Plug 'kristijanhusak/defx-icons'

" theme 
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
call plug#end()

nnoremap <leader>b :NERDTreeToggle<CR>

" functions  
nnoremap <leader>s :w!<CR>
nnoremap <leader>z :u<CR>      " Avoid using this**
inoremap <leader>z <c-o> :u<CR>
" inoremap <leader>z <c-o> :u<CR>
nnoremap <leader>q :q!<CR>

" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
nnoremap <silent>    <A-x> :BufferClose <CR>

"  autocomplete brackets 
inoremap ` ``<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
" inoremap < <> <left> 

" colorscheme yellow-moon
" colorscheme dracula
colorscheme grubvox_hard
" colorscheme embark

" git status in navbar
" let g:NERDTreeGitStatusWithFlags = 1
" let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" let g:NERDTreeGitStatusNodeColorization = 1

nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Searching in files 

nmap <silent> fs :Files <CR> 
nmap <silent> ds :CocSearch  
nmap <silent> nj :!node 
 
:imap ii <Esc>

nnoremap <A-C-j> yyp
nnoremap <A-C-d> dd
" icons set up
" let g:webdevicons_enable_nerdtree = 1

" code to show hidden files in editor

let NERDTreeShowHidden=1
