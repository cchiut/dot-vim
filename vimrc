"===
" dot vim file by cchiut
"
"
" important
"===
set pastetoggle=<F12>
colorscheme solarized8


"===
" moving around, searching and patterns
"===


"===
" displaying text
"===
set nowrap
set sidescroll=1
set number


"===
" syntax, highlighting and spelling
"===
syntax on
filetype plugin indent on

set hlsearch
set colorcolumn=81


"===
" highlight trailing white space
"===
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


"===
" multiple windows
"===
set laststatus=2
set splitbelow
set splitright


"===
" tabs and indenting
"===
set autoindent
set shiftround


"===
" editing text
"===
set undofile
set undodir=$HOME/.vim/undo
set omnifunc=syntaxcomplete#Complete


"===
" SHORTCUT
"
"
" remove highlight
"===
nnoremap <Leader>h :nohl<CR>


"===
" keep indentation in select mode
"===
vnoremap < <gv
vnoremap > >gv


"===
" quick quit
" <Leader-e> - quit current window and save
" <Leader-E> - quit all windows
"===
nnoremap <Leader>e :wq<CR>
nnoremap <Leader>E :quitall!<CR>


"===
" tab
" <gt> - next tab
" <gT> - previous tab
"===
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>tf :tabfirst<CR>
nnoremap <Leader>tl :tablast<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>to :tabonly<CR>


"===
" PLUGIN
"===

"===
" nerdtree
" s - open file in split window
" t - open file in tab
" SHIFT i - toggle show/hide hidden files
"===
let NERDTreeShowHidden=1
nnoremap <C-m> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"===
" fzf
" <C-x> - open file in split window
" <C-v> - open file in vertical split window
" <C-t> - open file in tab
"===
set rtp+=/opt/local/share/fzf/vim
nnoremap <C-p> :FZF<CR>


"===
" ale
"===
let g:ale_completion_enabled=1
nmap K :ALEHover<CR>
nmap gd :ALEGoToDefinitionInTab<CR>
nmap gr :ALEFindReferences<CR>
