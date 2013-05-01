syntax enable
set nohlsearch
set incsearch
set tabstop=2
set shiftwidth=2
set smarttab
set smartindent
set autoindent
set expandtab
set ruler
set backspace=2

filetype plugin on

" window resizing commands
map <F1> :resize -10
map <F2> :resize +10
map <F3> :vertical resize -10
map <F4> :vertical resize +10

" tab navigation
nmap <A-PageUp>   :tabprevious<cr>
nmap <A-PageDown> :tabnext<cr>
map  <A-PageUp>   :tabprevious<cr>
map  <A-PageDown> :tabnext<cr>
nmap <C-n>        :tabnew<cr>
map <C-M-w>       :tabclose<cr>
nmap <C-M-w>       :tabclose<cr>
map tn :tabnext<CR>
map tp :tabprev<CR>
:map tn :tabnext<CR>
:map tp :tabprev<CR>

" enable man plugin (usage :Man <command>)
source $VIMRUNTIME/ftplugin/man.vim

" for vimdiff
set diffopt+=iwhite,context:3

" better java higlighting
let java_highlight_java_lang_ids=1
let java_allow_cpp_keywords=1

hi statusline ctermbg=cyan
hi statusline ctermfg=black
au BufNewFile,BufRead Vagrantfile set syntax=ruby
au BufNewFile,BufRead *.py set tabstop=4 shiftwidth=4
au BufNewFile,BufRead *.jad set syntax=java

set background=light
set tags=~/.tags

set list! listchars=tab:»·,trail:·,nbsp:☠
highlight SpecialKey ctermfg=Red

set errorformat=%E\ %#[error]\ %#%f:%l:\ %m,%-Z\ %#[error]\ %p^,%-C\ %#[error]\ %m
set errorformat+=,%W\ %#[warn]\ %#%f:%l:\ %m,%-Z\ %#[warn]\ %p^,%-C\ %#[warn]\ %m
set errorformat+=,%-G%.%#

" scala quickfix
noremap <silent> <Leader>ff :cf target/quickfix/sbt.quickfix<CR>
noremap <silent> <Leader>fn :cn<CR>

"set grepprg=ag
"command -nargs=+ Grep execute 'silent lgrep! --nocolor --smart-case <args>'|lwindow|redraw!
"nmap <Leader>G :Grep <C-R>=expand("<cword>")<CR><CR>
