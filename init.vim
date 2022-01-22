syntax on
filetype plugin indent on
" autocmd VimEnter * NERDTree | wincmd p

if has('termguicolors')
  set termguicolors
endif

set number
set history=500
set nobackup
set noswapfile
set mouse=a
set so=7
set tabstop=4
set shiftwidth=4
set ruler
set cmdheight=2
set autoindent
set autoread
au FocusGained,BufEnter * checktime
set cindent
set cursorline
set showcmd
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set smarttab
set nowritebackup
set nocompatible
set background=dark
set selection=exclusive
set selectmode=mouse,key
set encoding=utf-8
set ffs=unix,dos,mac
set termencoding=utf-8
if has('win32')
  set guifont=Jetbrains\ Mono:h13,Hack\ Nerd\ Font:h13
elseif has('unix')
  set guifont=Jetbrains\ Mono:h19,Hack\ Nerd\ Font:h19
elseif has('macunix')
  set guifont=Jetbrains\ Mono:h17,Hack\ Nerd\ Font:h17
endif

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
" Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'sainnhe/gruvbox-material'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'wakatime/vim-wakatime'
if has('unix')
  Plug 'ryanoasis/vim-devicons'
endif
Plug 'tpope/vim-surround'
Plug 'andymass/vim-matchup'
Plug 'sainnhe/everforest'
Plug 'voldikss/vim-floaterm'
call plug#end()

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use `TAB` to autocomplete
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" colorscheme gruvbox-material
colorscheme everforest

if has('win32')
  let g:floaterm_shell="pwsh.exe"
elseif has('unix')
  let g:floaterm_shell="/usr/bin/zsh"
elseif has('macunix')
  let g:floaterm_shell="/bin/zsh"
endif

let g:NERDTreeWinPos="right"
let NERDTreeShowHidden=1
 
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }
if has('win32')
  let g:fzf_preview_window = [] " Preview window is broken on windows
endif

" let g:gruvbox_material_background='soft'
let g:everforest_background='hard'
let g:everforest_ui_contrast = 'high'
"let g:everforest_transparent_background=1

" let g:gruvbox_bold=0
" let g:gruvbox_italic=0
" let g:gruvbox_invert_selection=1
" let g:gruvbox_italicize_strings=0
" let g:gruvbox_italicize_comments=0
" let g:gruvbox_contrast_light="soft"

let g:neovide_no_idle=v:true
" let g:neovide_transparency=0.7
let g:neovide_refresh_rate=360
let g:neovide_fullscreen=v:false
let g:neovide_cursor_antialiasing=v:false
let g:neovide_cursor_vfx_mode="torpedo"
let g:neovide_remember_window_size=v:true

" let g:airline_theme='violet'
" let g:airline_theme = 'gruvbox_material'
let g:airline_theme = 'everforest'
let g:airline#extensions#coc#enabled=0
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#coc#error_symbol = 'Error:'
let g:airline#extensions#coc#warning_symbol = 'Warning:'
let g:airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let g:airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let g:airline#extensions#tabline#tabs_label='T'
let g:airline#extensions#tabline#show_tab_type=1
let g:airline#extensions#tabline#buffers_label='B'
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#switch_buffers_and_tabs=1

let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['-i']}
let g:neoforat_enabled_cpp = ['clangformat']
let g:neoforat_enabled_c = ['clangformat']

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

let mapleader=','
let @a='V"+y'
let @b='V"+p'
let @y='ggVG"+y'
let @p='ggVG"+p'
nmap <leader>s :w!<cr>
nmap <leader>h :noh<cr>
nmap <leader>q :xa<cr>
nmap <leader>x :x<cr>
nmap <leader>sv :source $MYVIMRC<cr>
nmap <leader>cg :edit $MYVIMRC<cr>
nmap <leader>w :bn<cr>
nmap <leader>p :bp<cr>
nmap <leader>f :Files<cr>
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>yl @a<cr> 
nmap <leader>lp @a<cr> 
nmap <leader>ya @y<cr> 
nmap <leader>ap @p<cr>
nmap <space>e :CocCommand explorer --preset right<CR>
nmap <space>ef :CocCommand explorer --preset floating<CR>
inoremap ff <Esc>`^

map <C-t> :NERDTreeToggle<CR>
function! Checksemicolon()
  :normal $
  if getline(".")[col(".")-1] == ';'
    :startinsert
  else
    :startinsert!
  endif
endfunction

nnoremap <S-a> :call Checksemicolon()<CR>

function! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

call SetupCommandAlias("W", "w")
call SetupCommandAlias("Q", "q")

let g:coc_explorer_global_presets = {
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'right': {
\     'position': 'right',
\     'open-action-strategy': 'sourceWindow',
\   }
\ }
