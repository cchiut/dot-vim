"===
" dot vim file by cchiut
"===

"===
" GENERAL
"===

"===
" file detection
"===
syntax on
filetype plugin indent on

"===
" file encoding
"===
set fileencodings=ucs-bom,utf-8,big5,latin1

"===
" better paste
"===
set pastetoggle=<F10>

"===
" search
"===
set incsearch
set hlsearch
set smartcase

"===
" line
"===
"set colorcolumn=80
set nowrap

"===
" ruler
"===
set ruler

"===
" window scroll
"===
set scrolloff=1
set splitright splitbelow

"===
" basic indentation
"===
set autoindent
set smarttab
set shiftround

"===
" undo file - only vim 7.3 - create vim/undo folder manually to enable
"===
set undofile
set undodir=$HOME/.vim/undo

"===
" omni-completion
"===
set omnifunc=syntaxcomplete#Complete

"===
" highlight unwanted white space
"===
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"===
" html lang
"===
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType scss setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

"===
" javascript lang
"===
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

"===
" python lang
"===
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 expandtab
autocmd FileType python set omnifunc=pythoncomplete#Complete

"===
" ruby lang
"===
"autocmd Filetype ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
"autocmd Filetype eruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
"autocmd Filetype ruby let g:rubycomplete_buffer_loading=1
"autocmd Filetype ruby let g:rubycomplete_classes_in_global=1
"autocmd Filetype ruby let g:rubycomplete_rails= 1

"===
" SHORTCUT
"===

"===
" bash like commands
"===
set wildmenu
cnoremap <C-a>	<Home>
cnoremap <C-e>	<End>

"===
" remove highlight
"===
nnoremap <silent>^ :nohl<CR>

"===
" keep indentation in selecting
"===
vnoremap < <gv
vnoremap > >gv

"===
" easy wrap line navigation:nohl
"===
nnoremap j gj
nnoremap k gk

"===
" easy window navigation
"===
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"===
" quick quit
" - quit current window
" - quit all windows
"===
noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!<CR>

"===
" tab
" - <gt> next tab
" - <gT> previous tab
"===
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>tf :tabfirst<CR>
nnoremap <Leader>tl :tablast<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>to :tabonly<CR>

"===
" map sort function
"===
vnoremap <Leader>s :sort<CR>

"===
" PLUGIN
"===

"===
" CtrlP
" <C-p> to open function
" <C-t> to open in new tab
" <C-v> to open in vertical window
" <C-x> to open in horizontal window
" <C-y> to create new file
" <C-z> <C-o> to open multiple files
"===
let g:ctrlp_cache_dir=$HOME.'/.vim/cache/ctrlp'
let g:ctrlp_mruf_exclude='/tmp/.*\|/temp/.*'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.rar
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*.pyc,*_build/*,*/coverage/*

"===
" vim-jsx-pretty
"===
let g:vim_jsx_pretty_colorful_config=1

"===
" python_mode
" <leader>r run code
" <leader>b breakpoint bind
" :PymodeLintAuto fix PEP8 errors automatically
" <C-c>g move to definition
" <C-c>ro organize imports
" <C-c>ra add import
"===
"let g:pymode_doc=0
"let g:pymode_lint_ignore="E128"
