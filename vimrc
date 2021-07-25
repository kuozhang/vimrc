set nu
set ruler
set tabstop=2 shiftwidth=2 expandtab
set colorcolumn=80
set showtabline=2

" To set the cursor shape in different modes 
" for iTerm2 on macOS
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Enable spell checking
set spell
" Spell checking languages
set spelllang=en

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" https://github.com/altercation/vim-colors-solarized
" let g:solarized_termcolors=256
" syntax enable
" set background=dark
" colorscheme solarized

" https://github.com/morhetz/gruvbox.git
colorscheme gruvbox

" air-line
set laststatus=2

" nerd tree
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
let g:NERDTreeWinSize=60


" vim-commentary plugin to format files
" short key: gc
" use :help commentory to see more
autocmd FileType c,cc,cpp,java setlocal commentstring=//\ %s
autocmd FileType python,shell setlocal commentstring=#\ %s

" ---------- configure code formatters ----------
"
" Disable automatic formatting, since this may format unmodified code
" Automatic Google coding style
" :FormatCode for manual formatting the whole file
" :FormatLines for manual formatting selected lines in visual mode
" augroup autoformat_settings
"   autocmd FileType bzl AutoFormatBuffer buildifier
"   autocmd FileType c,cc,cpp,proto,javascript ClangFormatAutoEnable
"   " autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
"   autocmd FileType dart AutoFormatBuffer dartfmt
"   autocmd FileType go AutoFormatBuffer gofmt
"   autocmd FileType gn AutoFormatBuffer gn
"   " autocmd FileType html,css,json AutoFormatBuffer js-beautify
"   " autocmd FileType java AutoFormatBuffer google-java-format
"   autocmd FileType python AutoFormatBuffer yapf
"   " Alternative: autocmd FileType python AutoFormatBuffer autopep8
" augroup end

" use google's vim-codefmt plugin
" shortcut key: ctrl-l 
" only format selected lines, don't format the whole file 
" needs clang-format & shfmt installed
autocmd FileType c,cpp,java,sh,proto vnoremap <buffer><C-l> :FormatLines<CR>
" needs yapf installed
autocmd FileType python vnoremap <buffer><C-l> :FormatLines yapf<CR>

" alternative way to format: use vim-clang-format plugin 
" the key: <Leader>is backslash, cf
" autocmd FileType c,cc,cpp,java nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
" autocmd FileType c,cc,cpp,java vnoremap <buffer><Leader>cf :ClangFormat<CR>
"
" autocmd FileType c,cc,cpp,java nnoremap <buffer><C-l> :<C-u>ClangFormat<CR>
" autocmd FileType c,cc,cpp,java vnoremap <buffer><C-l> :ClangFormat<CR>
