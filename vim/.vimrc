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
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
vnoremap <leader>c "+y

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
