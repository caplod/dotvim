""
"" BASIC
""
set nobackup
set nowritebackup
set novisualbell
set visualbell t_vb=
set showcmd
set updatetime=250
set nohlsearch
set number

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set splitbelow
set splitright

set autoindent
set backspace=indent,eol,start
set complete-=i

if (has("termguicolors"))
  set termguicolors
  set cursorline
endif
" system clipboard
set clipboard+=unnamedplus

""
"" Whitespace
""
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:·
set listchars+=extends:>          " The character to show in the last column when wrap is
set listchars+=precedes:<
set smarttab
""
"" Wild settings
""
" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*,*/tmp/cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Disable node_modules
set wildignore+=*/node_modules

""
"" Finding files
""
set path=**

""
"" Keys
""
let mapleader="ä"

" use ö for :
noremap ö :

nnoremap <silent> <leader>r :registers<CR>
nnoremap <silent> <leader>n :Lexplore<CR>
" cd to the directory containing the file in the buffer
nnoremap <silent> <leader>cd :lcd %:h<CR>
" show open buffers
nnoremap <leader>b :Buffers<CR>
" Underline the current line with '='
nnoremap <silent> <leader>ul :t.<CR>Vr=

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" move in splits
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" split line
nnoremap K i<Enter><Esc>

" write as sudo
cmap w!! w !sudo tee > /dev/null %


let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_alto = 1
let g:netrw_winsize = 25
" hide dot files
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'


"" Color
""
set background=dark
