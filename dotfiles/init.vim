call plug#begin(stdpath('data') . '/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'LnL7/vim-nix'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'lifepillar/vim-solarized8'
Plug 'w0rp/ale'
Plug 'davidhalter/jedi-vim'
Plug 'fatih/vim-go'
Plug 'hdima/python-syntax'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'mg979/vim-visual-multi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'jparise/vim-graphql'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'lyuts/vim-rtags'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'plasticboy/vim-markdown'

" Initialize plugin system
call plug#end()

"------  Visual Options  ------"

syntax enable                       " enable syntax highlighting
set number                          " enable line numbers
set nowrap                          " disable word wrap
set vb                              " visual bell
set showmatch                       " show matching bracket
set conceallevel=2                  " support concealing

set laststatus=2                    " always use a status line

"------  Behavior  ------"

set backspace=indent,eol,start      " normal backspace behavior
set history=1000                    " 1000 item history
set undolevels=1000                 " 1000 item undo buffer
let mapleader=","                   " set leader to ,
let maplocalleader=','              " set leader harder
set title                           " update the terminals title
set tabstop=4                       " tab = 4 spaces
set shiftwidth=4                    " indent to 4 spaces
set softtabstop=4                   " Number of spaces that a <Tab> counts for
set expandtab                       " use spaces instead of tabs
set autoindent                      " auto indent
set smartindent                     " use vim smart indenting
set backupcopy=yes                  " always write out a new file and then copy it over the original on save

" Ignore these files when completing names
set wildignore+=.svn,CVS,.git,*.o,*.a,*.class,*.mo
set wildignore+=*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set wildignore+=*/tmp/*,*.zip,*.pyc

set iskeyword+=_,$,@,%,#

set wildmode=longest,list:longest   " Shell style tab completion

filetype indent on
filetype plugin on

set encoding=utf-8

"------  Searching  ------"

set incsearch                       " Search while typing
set ignorecase                      " Case insensitive searching
set smartcase                       " lowercase = case insensitive, any uppercase = case sensitive
set hlsearch                        " highlight all search results

" following line clears the search highlights when pressing <Leader>s
nnoremap <silent> <Leader>s :nohlsearch<CR>

set grepprg=grep\ -nH\ $*           " set grep to always display a file name

"------  Buffers  ------"

" switch between unsaved buffers w/o needing to save
set hidden

"------  Windows  ------"

" Move easily between windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

" Keybindings for splitting windows
noremap <Leader>v :split<CR>
noremap <Leader>V :vsplit<CR>

"------  Text Width Stuff  ------"

set tw=80
set fo-=c
set fo-=t
set modeline
set modelines=3
set sr
set whichwrap=h,l,~,[,]

"------  Helpful keybindings  ------"

" ,T = Delete all Trailing space in file
map <Leader>T :%s/\s\+$//<CR>

" Sometimes you just need to teach vim whose boss
noremap <leader>r :redraw!<CR>
noremap <leader>sc :source $MYVIMRC<CR>

" I make the mistake of typing W and Q instead of w and q
command! Q q
command! W w

" Kill the evil EX mode
nmap Q <Nop>

"------  Set custom colorscheme stuff  ------"

set termguicolors
set background=dark
colorscheme solarized8

if filereadable(expand("~/.nvim-background"))
    exe 'source' expand("~/.nvim-background")
endif

"------  Vim Config Stuff  ------"

" Set swp files to go to a central location
set backupdir=$HOME/.config/nvim/swp//,/tmp//,.
set directory=$HOME/.config/nvim/swp//,/tmp//,.

" Share clipboard
set clipboard+=unnamedplus

" Better tab-completion
set wildmenu

"------  Safe crontab  ------"
if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif

"------  Filetype tweaks  ------"
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

au BufWritePost *.re silent! ReasonPrettyPrint

"------  Python Stuff  ------"
let g:python_highlight_all=1

"------  Whitespace  ------"

" Show trailing whitespace
set list

" But only interesting whitespace
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

au Filetype go setlocal nolist

"------  Visual Mode related  ------"

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>

"------  Persistent undo  ------"

set undodir=$HOME/.config/nvim/undo/
set undoreload=10000
set undofile

"------  Tab management  ------"
nnoremap <silent> \[ :tabp<CR>
nnoremap <silent> \] :tabn<CR>

nnoremap <silent> tn :tabnew<CR>
nnoremap <silent> td :tabclose<CR>
nnoremap <silent> tt :tabedit %<CR>

"------  Terminal Mode  ------"
let g:terminal_scrollback_buffer_size = 100000

autocmd TermOpen * startinsert

tnoremap <C-J> <C-\><C-n><C-W>j
tnoremap <C-K> <C-\><C-n><C-W>k
tnoremap <C-H> <C-\><C-n><C-W>h
tnoremap <C-L> <C-\><C-n><C-W>l

nnoremap <leader>z :split \| terminal <CR>
nnoremap <leader>Z :vsplit \| terminal <CR>

"====================================="
"======  PLUGINS CONFIGURATION ======="
"====================================="

"------  COC  ------"
let g:coc_global_extensions = [
    \ 'coc-rust-analyzer',
    \ 'coc-tsserver',
    \ 'coc-prettier'
\]

set shortmess+=c

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <silent> <leader>d <Plug>(coc-definition)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

"------  Jedi ------"

let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures = "0"

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = ""
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = ""
let g:jedi#completions_command = ""
let g:jedi#rename_command = ""

let g:jedi#force_py_version = 3

"------  Vim Airline ------"
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline_theme = 'solarized'

"------  NERDTree Options  ------"

let NERDTreeIgnore=['\.git$', '\.pyc$', '__pycache__']

" following line finds the current file in NERDTree when pressing <Leader>a
noremap <leader>a :NERDTreeFind<C-M>

" quit vim if NERDTree is last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"------  GitGutter  ------"
highlight clear SignColumn

"------  ALE  ------"
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'python': ['black'],
\   'reason': ['refmt'],
\}

let g:ale_linters = {
\   'python': [
\       'flake8',
\   ],
\   'javascript': [
\       'eslint',
\   ],
\   'typescript': [
\       'eslint',
\   ],
\   'go': [
\       'gometalinter',
\       'go build',
\   ],
\   'rust': [
\       'analyzer',
\   ],
\}

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_javascript_flow_use_global = 1
let g:ale_javascript_eslint_use_global = 1
let g:ale_reasonml_refmt_executable = 'bsrefmt'

"------ Go ------"
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"------  Undo Tree  ------"

nnoremap <silent> <leader>u :UndotreeToggle<CR>

let g:undotree_SetFocusWhenToggle = 1

"------  vim-visual-multi  ------"

let g:VM_manual_infoline = 0

"------  vim-rooter   ------"
let g:rooter_patterns = ['.vim-rooter', '.git', '.git/']

"------  rtags  ------"

let g:rtagsUseDefaultMappings = 0
let g:rtagsUseLocationList = 0

augroup RtagsMappings
    au!
    " SymbolInfo is broken in rtags :(
    " au FileType cpp noremap K :call rtags#SymbolInfo()<CR>
    au FileType cpp noremap <Leader>d :call rtags#JumpTo(g:SAME_WINDOW)<CR>
    au FileType cpp noremap <Leader>D :call rtags#JumpTo(g:SAME_WINDOW, { '--declaration-only' : '' })<CR>

    au FileType cpp noremap <Leader>rp :call rtags#JumpToParent()<CR>
    au FileType cpp noremap <Leader>rf :call rtags#FindRefs()<CR>
    au FileType cpp noremap <Leader>rF :call rtags#FindRefsCallTree()<CR>
    au FileType cpp noremap <Leader>rn :call rtags#FindRefsByName(input("Pattern? ", "", "customlist,rtags#CompleteSymbols"))<CR>
    au FileType cpp noremap <Leader>rs :call rtags#FindSymbolsOfWordUnderCursor()<CR>
    au FileType cpp noremap <Leader>rS :call rtags#FindSymbols(input("Pattern? ", "", "customlist,rtags#CompleteSymbols"))<CR>
    au FileType cpp noremap <Leader>rr :call rtags#ReindexFile()<CR>
    au FileType cpp noremap <Leader>rl :call rtags#ProjectList()<CR>
    au FileType cpp noremap <Leader>rw :call rtags#RenameSymbolUnderCursor()<CR>
    au FileType cpp noremap <Leader>rv :call rtags#FindVirtuals()<CR>
    au FileType cpp noremap <Leader>rb :call rtags#JumpBack()<CR>
    au FileType cpp noremap <Leader>rh :call rtags#ShowHierarchy()<CR>
    au FileType cpp noremap <Leader>rC :call rtags#FindSuperClasses()<CR>
    au FileType cpp noremap <Leader>rc :call rtags#FindSubClasses()<CR>
    au FileType cpp noremap <Leader>rd :call rtags#Diagnostics()<CR>
augroup END

"------  fzf w/ ripgrep support  ------"

map <expr> <leader>t fugitive#head() != '' ? ':GFiles --cached --others --exclude-standard<CR>' : ':Files<CR>'
nmap <leader>b :Buffers<CR>

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_layout = { 'down': '40%' }
let g:fzf_preview_window = ''

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case --no-config -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case --no-config -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

nnoremap <leader>g :Rg<space>
nnoremap <expr> <leader>G ':RG '.expand('<cword>').'<CR>'
xnoremap <expr> <leader>G ':RG '.expand('<cword>').'<CR>'

"------  rust  ------"
let g:rustfmt_autosave = 1

"------  markdown  ------"
let g:vim_markdown_emphasis_multiline = 0
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
