"" Leader - ( Spacebar )
let mapleader = " "

"" Don't try to be vi compatible set nocompatible
set nocompatible

"" turn off error beeping and flashing
set visualbell
set t_vb=

"" add cursorline to current line
set cursorline

"" Rendering
set ttyfast

"" Allow usage of mouse in iTerm
set mouse=a

"" Turn on syntax highlighting
syntax on

"" Show line numbers
set number

"" Start scrolling when 5 lines away from margins
set scrolloff=5

"" display incomplete command
set showcmd       
set showmode

" Automatically :write before running commands
set autowrite     

"" Insert newline without entering insert mode
nnoremap o o<Esc>
nnoremap O O<Esc>

" Make searching better
set ignorecase    " case insensitive searching (unless specified)
set smartcase
set showmatch
set hlsearch
set incsearch     " search as we type

"" Always display the status line
set laststatus=2 

" Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

" Use tab to jump between blocks, because it's easier
nnoremap <tab> %
vnoremap <tab> %

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<F2> "F2 before pasting to preserve indentation
"Copy paste to/from clipboard
vnoremap <C-c> "+y
nnoremap <C-c> "+y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"

"" change the vim cursor in Insert/normal mode?
"" Other options (replace the number after \e[):
""     Ps = 0  -> blinking block.
""     Ps = 1  -> blinking block (default).
""     Ps = 2  -> steady block.
""     Ps = 3  -> blinking underline.
""     Ps = 4  -> steady underline.
""     Ps = 5  -> blinking bar (xterm).
""     Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

"set clipboard=unnamed
"
"" Helps force plugins to load correctly when it is turned back on below
"filetype off
"
"" TODO: Load plugins here (pathogen or vundle)
"
"
"" For plugins to load correctly
"filetype plugin indent on
"
"" TODO: Pick a leader key
"" let mapleader = ","
"
"" Security
"set modelines=0
"
"" Encoding
"set encoding=utf-8
"
"" Whitespace
"set wrap
"set textwidth=79
"set formatoptions=tcqrn1
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
"set expandtab
"set noshiftround
"
"set backspace=indent,eol,start
"set matchpairs+=<:> " use % to jump between pairs
"runtime! macros/matchit.vim
"
"" Move up/down editor lines
"nnoremap j gj
"nnoremap k gk
"
"" Allow hidden buffers
"set hidden
"
"
"" Remap help key.
"" inoremap <F1> <ESC>:set invfullscreen<CR>a
"" nnoremap <F1> :set invfullscreen<CR>
"" vnoremap <F1> :set invfullscreen<CR>
"
"" Textmate holdouts
"
"" Formatting
"map <leader>q gqip
"
"" Visualize tabs and newlines
"set listchars=tab:▸\ ,eol:¬
"" Uncomment this to enable by default:
"" set list " To enable by default
"" Or use your leader key + l to toggle on/off
"map <leader>l :set list!<CR> " Toggle tabs and EOL
