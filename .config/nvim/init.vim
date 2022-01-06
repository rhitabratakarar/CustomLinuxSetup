function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

" not compatible with older vi
set nocompatible

" show command at the right bottom of the screen
set showcmd

" encoding default to utf
set encoding=utf-8

" enhanced searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" show line numbers
set number
set relativenumber

" show bracket matches
set showmatch

" display thick cursor line to find the cursor easily
" set cursorline

" syntax on for files
syntax on

" text wraps to new lines
set wrap

" show wildmenu in statusbar
set wildmenu

" try to autoindent
set autoindent

" set tabs to 2 spaces
set tabstop=2
set shiftwidth=0

" set autoindentation for different types (will override certain tabs)
filetype plugin indent on

" expand tabs to spaces.
set softtabstop=2
set expandtab
set noshiftround

" match pairs of angled brackets.
set matchpairs+=<:>

" show the mode you are in
set showmode

" set identifiable characters for specific characters
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" tree style listing for directory viewing
let g:netrw_liststyle=3
let g:netrw_banner=0

" autosave after text change and closing the file
" autocmd TextChanged,TextChangedI <buffer> silent write
" set autowrite

" change font
" set guifont=NotoSansMono\ Regular\ 10

" can undo removed lines using Ctrl+u
inoremap <C-U> <C-G>u<C-U>

" every word can be undo-ed.
inoremap <Space> <Space><C-g>u

" map <Esc> to exit terminal.
tnoremap <Esc> <C-\><C-n>

" autocomplete pairs
inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>

let fts = ['html', 'yml']
if index(fts, &filetype) != -1
  inoremap < <><left>
  inoremap <!- <!----><left><left><left>
endif

inoremap ' ''<left>
inoremap " ""<left>
inoremap ` ``<left>
inoremap {<c-j> {<c-j>}<ESC>O
inoremap {; {<c-j>};<ESC>O
inoremap (<c-j> (<c-j>)<ESC>O
inoremap [<c-j> [<c-j>]<ESC>O
inoremap /* /**/<left><left>

" delete character forward while in insert mode
inoremap <C-l> <Del>

" configuring statusline
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\
