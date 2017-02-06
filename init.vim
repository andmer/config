nnoremap ; :
nnoremap <s-u> :redo<CR>

let mapleader="\<SPACE>"
"let mapleader="\;"
map <tab> :bnext<CR>
map <s-tab> :bprevious<CR>
map <leader>nn :NERDTreeToggle<CR>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
map <silent> <leader><cr> :noh<cr>
map <leader>bd :Bclose<cr><Paste>
nmap <leader>w :w!<cr>
nmap <leader>qq :wq!<cr>
nmap <leader>n :m +1<CR>
nmap <leader>m :m -2<CR>
nnoremap <esc> :noh<CR>:NERDTreeClose<CR>:Neoformat<CR><esc>
nnoremap <leader><TAB> :bnext<CR>
inoremap ;; <C-o>:Neoformat<CR><C-o>A;<CR>
inoremap {{ <C-o>A {}<left><CR><CR><up><space><space><space><space>

"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l
" Close current buffer
"noremap <tab> <c-w><c-w>

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
"Plugin 'morhetz/gruvbox'
"Plugin 'mhartington/oceanic-next
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'Rip-Rip/clang_complete'
Plugin 'mhinz/vim-startify'
Plugin 'kien/ctrlp.vim'
"Plugin 'Shougo/deoplete.nvim'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'honza/vim-snippets'
Plugin 'whatyouhide/vim-gotham'
"Plugin 'jeaye/color_coded'
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'arakashic/chromatica.nvim'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'chriskempson/base16-vim'
Plugin 'tomasr/molokai'
"Plugin 'vheon/vim-cursormode'
"Plugin 'thirtythreeforty/lessspace.vim'
Plugin 'sbdchd/neoformat'
"Plugin 'tpope/vim-repeat'
"Plugin 'lfilho/cosco.vim'
call vundle#end()

filetype plugin indent on

"set t_Co=256
syntax enable
set bg=dark
"set background=dark
colorscheme molokai
"colorscheme gruvbox
"colorscheme base16-default-dark
"colorscheme gotham

" Formatting {
  set colorcolumn=120
  "set cursorcolumn
  set termguicolors
  set cursorline
  set showcmd             " Show (partial) command in status line.
  set showmatch           " Show matching brackets.
  set showmode            " Show current mode.
  set ruler               " Show the line and column numbers of the cursor.
  set number              " Show the line numbers on the left side.
  set formatoptions+=o    " Continue comment marker in new lines.
  set textwidth=0         " Hard-wrap long lines as you type them.
  set expandtab           " Insert spaces when TAB is pressed.
  set tabstop=4           " Render TABs using this many spaces.
  set shiftwidth=4        " Indentation amount for < and > commands.

  set noerrorbells        " No beeps.
  set modeline            " Enable modeline.
  set esckeys             " Cursor keys in insert mode.
  set linespace=0         " Set line-spacing to minimum.
  set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

  " More natural splits
  set splitbelow          " Horizontal split below current.
  set splitright          " Vertical split to right of current.

  if !&scrolloff
    set scrolloff=20       " Show next 3 lines while scrolling.
  endif
  if !&sidescrolloff
    set sidescrolloff=5   " Show next 5 columns while side-scrolling.
  endif
  set nostartofline       " Do not jump to first character with page commands.

  " Tell Vim which characters to show for expanded TABs,
  " trailing whitespace, and end-of-lines. VERY useful!
  if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  endif
  set list                " Show problematic characters.
" }
"
"
" " Plugin Settings {
  " Airline {
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#left_alt_sep = ''
    let g:airline#extensions#tabline#right_sep = ''
    let g:airline#extensions#tabline#right_alt_sep = ''
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    "let g:airline_theme='oceanicnext'
    "let g:airline_theme= 'gruvbox'
    "let g:airline_theme='gotham'
    let g:airline_theme='molokai'
  " }
  " CtrlP {
    " Open file menu
    nnoremap <Leader>o :CtrlP<CR>
    " Open buffer menu
    nnoremap <Leader>b :CtrlPBuffer<CR>
    " Open most recently used files
    nnoremap <Leader>f :CtrlPMRUFiles<CR>
  " }
" }


let g:clang_library_path='/usr/lib/llvm-3.8/lib'
let g:chromatica#libclang_path='/usr/lib/llvm-3.8/lib'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:chromatica#responsive_mode=1
let g:chromatica#highlight_feature_level=1
let g:chromatica#enable_at_startup=1
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let c_no_curly_error=1
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')
"let g:auto_comma_or_semicolon = 1;
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=black guifg=yellow
"hi Cursor cterm=NONE ctermbg=white ctermfg=black guifg=white guibg=black
"hi iCursor guifg=white guibg=steelblue
"nnoremap <Leader>c :set cursorline! cursor! <CR>
"
"
"
