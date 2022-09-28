syntax on
filetype plugin indent on
au FocusGained,BufEnter * checktime

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
set cmdheight=1
set autoindent
set autoread
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
set guifont=RecMonoLinear\ NF:h17

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'sainnhe/gruvbox-material'
Plug 'sbdchd/neoformat'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'wakatime/vim-wakatime'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'andymass/vim-matchup'
Plug 'sainnhe/everforest'
Plug 'voldikss/vim-floaterm'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
call plug#end()

" Move to previous/next
nnoremap <silent> <D-,> <Cmd>BufferPrevious<CR>
nnoremap <silent> <D-.> <Cmd>BufferNext<CR>

" Goto buffer in position...
nnoremap <silent> <D-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent> <D-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent> <D-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent> <D-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent> <D-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent> <D-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent> <D-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent> <D-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent> <D-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent> <D-0> <Cmd>BufferLast<CR>

" Close Buffer
nnoremap <silent> <D-c> <Cmd>BufferClose<CR>

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

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


if has('win32')
  let g:floaterm_shell="pwsh.exe --nologo"
elseif has('macunix')
  let g:floaterm_shell="/bin/zsh"
elseif has('unix')
  let g:floaterm_shell="/usr/bin/zsh"
endif

" let g:NERDTreeWinPos="right"
" let NERDTreeShowHidden=1

let g:floaterm_width=0.67
let g:floaterm_height=0.87
 
" let g:fzf_layout={ 'window': { 'width': 0.9, 'height': 0.6  }  }
if has('win32')
  let g:fzf_preview_window=[] " Preview window is broken on windows
endif

" let g:gruvbox_material_background='soft'
let g:everforest_background='hard'
let g:everforest_ui_contrast='high'
let g:everforest_better_performance=1
let g:everforest_disable_italic_comment=1
let g:everforest_transparent_background=0

" colorscheme gruvbox-material
colorscheme everforest

" let g:gruvbox_bold=0
" let g:gruvbox_italic=0
" let g:gruvbox_invert_selection=1
" let g:gruvbox_italicize_strings=0
" let g:gruvbox_italicize_comments=0
" let g:gruvbox_contrast_light="soft"

let g:neovide_no_idle=v:true
" let g:neovide_transparency=0.7
let g:neovide_refresh_rate=60
let g:neovide_fullscreen=v:true
let g:neovide_cursor_antialiasing=v:false
let g:neovide_cursor_vfx_mode="torpedo"
let g:neovide_remember_window_size=v:true

" let g:airline_theme='violet'
" let g:airline_theme='gruvbox_material'
let g:airline_theme='everforest'
let g:airline#extensions#coc#enabled=0
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#coc#error_symbol='Error:'
let g:airline#extensions#coc#warning_symbol='Warning:'
let g:airline#extensions#coc#stl_format_err='%E{[%e(#%fe)]}'
let g:airline#extensions#coc#stl_format_warn='%W{[%w(#%fw)]}'
let g:airline#extensions#tabline#tabs_label='T'
let g:airline#extensions#tabline#show_tab_type=0
let g:airline#extensions#tabline#buffers_label='B'
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#switch_buffers_and_tabs=1

let g:neoformat_cpp_clangformat={
    \ 'exe': 'clang-format',
    \ 'args': ['-i']}
let g:neoforat_enabled_cpp=['clangformat']
let g:neoforat_enabled_c=['clangformat']

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

let mapleader=','
let @a='"+y'
let @b='"+p'
let @y='ggVG"+y'
let @p='ggVG"+p'
nmap <leader>s :w!<cr>
nmap <space><C-h> :noh<cr>
nmap <leader>q :xa<cr>
nmap <leader>x :x<cr>
nmap <leader>sv :source $MYVIMRC<cr>
nmap <leader>cg :edit $MYVIMRC<cr>
"nmap <leader>w :bn<cr>
"nmap <leader>p :bp<cr>
nmap <leader>f :Files<cr>
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>ya @y<cr> 
nmap <leader>ap @p<cr>
nmap <space><C-y> @a<cr> 
nmap <space><C-p> @b<cr> 
nmap <space>e :CocCommand explorer --preset right<cr>
nmap <space><C-f> :CocCommand explorer --preset floating<cr>
nmap <space>t :FloatermNew<cr>
nmap <space><C-t> :FloatermToggle<cr>
inoremap ff <Esc>`^
tnoremap <Esc> <C-\><C-n>:FloatermToggle<CR>

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

let g:coc_explorer_global_presets={
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'right': {
\     'position': 'right',
\     'open-action-strategy': 'sourceWindow',
\   }
\ }

lua <<EOF
vim.opt.list=true
vim.opt.listchars:append("space:⋅")

require("indent_blankline").setup {
    space_char_blankline=" ",
    show_current_context=true,
    show_current_context_start=true,
}
EOF
