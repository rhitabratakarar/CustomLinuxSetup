function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

call plug#begin()
  " The default plugin directory will be as follows:
  "   - Vim (Linux/macOS): '~/.vim/plugged'
  "   - Vim (Windows): '~/vimfiles/plugged'
  "   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
  " You can specify a custom plugin directory by passing it as the argument
  "   - e.g. `call plug#begin('~/.vim/plugged')`
  "   - Avoid using standard Vim directory names like 'plugin'

  " Make sure you use single quotes

  " NERDTree Plugin
  Plug 'preservim/nerdtree'

  " Conqueror of Completion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Setup theme
  Plug 'morhetz/gruvbox'
  Plug 'tanvirtin/monokai.nvim'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'arcticicestudio/nord-vim'

  " Vim airline for statusbar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Colorize Hex Codes
  Plug 'norcalli/nvim-colorizer.lua'

  " Folder Icons
  Plug 'ryanoasis/vim-devicons'

  " Code formatter
 

" Initialize plugin system
call plug#end()

" initiate colorizer
set termguicolors
lua require'colorizer'.setup()

" coc will install the missing extensions after coc.nvim service started.
let g:coc_global_extensions = ['coc-json',
      \ 'coc-git',
      \ 'coc-pairs',
      \ 'coc-pyright',
      \ 'coc-html',
      \ 'coc-tsserver',
      \ 'coc-css',
      \ 'coc-omnisharp',
      \]

" not compatible with older vi
set nocompatible

" set clipboard
set clipboard+=unnamedplus

" enable mouse access
set mouse=a

" no swap file
set noswapfile

" determines the number of context lines you would like to see above and below the cursor.
set scrolloff=5

" Configure Nerd Tree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"
let NERDTreeShowHidden=1
nmap <F2> :NERDTreeToggle<CR>

" Enable Tab Structure Airline
let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme=nord

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
set cursorline

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
set guifont="FiraCodeNerdFontMono-Regular 10"

" can undo removed lines using Ctrl+u
inoremap <C-U> <C-G>u<C-U>

" every word can be undo-ed.
inoremap <Space> <Space><C-g>u

" map <Esc> to exit terminal.
tnoremap <Esc> <C-\><C-n>

" autocomplete pairs
" inoremap { {}<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap < <><left>
" inoremap <!- <!----><left><left><left>
" inoremap ' ''<left>
" inoremap " ""<left>
" inoremap ` ``<left>
" inoremap {<c-j> {<c-j>}<ESC>O
" inoremap {; {<c-j>};<ESC>O
" inoremap (<c-j> (<c-j>)<ESC>O
" inoremap [<c-j> [<c-j>]<ESC>O
" inoremap /* /**/<left><left>

" delete character forward while in insert mode
inoremap <C-l> <Del>

" configuring statusline
" set statusline=
" set statusline+=%#PmenuSel#
" set statusline+=%{StatuslineGit()}
" set statusline+=%#LineNr#
" set statusline+=\ %f
" set statusline+=%m\
" set statusline+=%=
" set statusline+=%#CursorColumn#
" set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
" set statusline+=\ %p%%
" set statusline+=\ %l:%c
" set statusline+=\

" setup theme
" colorscheme nord
highlight Normal ctermbg=NONE

" configure pmenu
highlight Pmenu ctermbg=black guibg=#000000
highlight PmenuSel ctermbg=red guibg=#eb4034
highlight PmenuThumb ctermbg=red guibg=#eb4034


hi Pmenu cterm=underline ctermfg=250 ctermbg=235 gui=underline guifg=#bcbcbc guibg=#262626
hi PmenuSel cterm=underline ctermfg=250 ctermbg=131 gui=underline guifg=#bcbcbc guibg=#af5f5f

