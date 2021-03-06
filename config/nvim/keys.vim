" Remap ESC to something usable
:imap jj <Esc>
" Save right from insert mode
:imap ,w <Esc>:w<CR>
" Set our Leader Key to something usable
let mapleader=","

nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>

" Quickly re-open a buffer for syntax reasons like styled-components
nnoremap <Leader>e :filetype detect<CR>

" relative line numbers
nnoremap <Leader>0 :NumbersToggle<CR>

" jsdoc
nnoremap <Leader>d :JsDoc<CR>

" Easier Split Navigation
" Instead of doing CTRL-W + (h|j|k|l)
" Just do CTRL-(h|j|k|l)
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>
" Neovim fix to get CTRL-H Back 💁
if has('nvim')
  nmap <bs> <c-w>h
endif

" window keys
nnoremap <Leader>w< <C-w><
nnoremap <Leader>w> <C-w>>
nnoremap <Leader>w- <C-w>-
nnoremap <Leader>w+ <C-w>+
nnoremap <Leader>ws :split<CR>
nnoremap <Leader>wv :vsplit<CR>
nnoremap <Leader>wx :close<CR>

" window reordering
nnoremap <Leader>wr <C-W><C-R>

" Quickly wrap or unwrap text
nnoremap <Leader>W :set wrap!<CR>

" NerdTree
if has_key(g:plugs, 'nerdtree')
  nnoremap <Leader>n :NERDTreeToggle<CR>
  nnoremap <Leader>N :NERDTreeFind<CR>
endif

if has_key(g:plugs, 'ctrlp.vim')
  " CtrlP
  nnoremap <Leader>FF :CtrlPClearCache<bar>CtrlP<CR>
  nnoremap <Leader>ff :CtrlP<CR>
endif

" FZF
if has_key(g:plugs, 'fzf.vim')
  nnoremap <Leader>p :Files<CR>
  nnoremap <Leader>f :Ag<CR>
endif

" Tab Switching
nnoremap <Leader>t :tabn<CR>
nnoremap <Leader>r :tabp<CR>

" Disabling the directional keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Debugger situation
" Toggle a breakpoint
nnoremap <Leader>db :Breakpoint<CR>

" Clear Buffer Quickly
nnoremap <Leader>bc :BufOnly<CR>
" Buffer Switching
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprevious<CR>

" Git Controls Flow
if has_key(g:plugs, 'vim-fugitive')
  nnoremap <Leader>gaa :! git add .<CR>
  nnoremap <Leader>gc :Gcommit<CR>
  nnoremap <Leader>gp :Gpush<CR>
  nnoremap <Leader>gs :Gstatus<CR>
  nnoremap <Leader>gb :Gblame<CR>
  nnoremap <Leader>gd :Gdiff<CR>
  nnoremap <Leader>gvd :Gvdiff<CR>
  nnoremap <Leader>gw :Gwrite<CR>
endif

" Dash docs
nmap <Leader>fd :Dash<CR>

" adjust window size with arrow keys
noremap <right> <C-w>5>
noremap <left> <C-w>5<
noremap <up> <C-w>5+
noremap <down> <C-w>5-

" keep selection after indent
vnoremap < <gv
vnoremap > >gv

" press enter for newline without insert
nnoremap <cr> o<esc>

" reload vim config
com -nargs=0 HardReload call HardReload()
nnoremap <Leader>r :silent! HardReload<CR>

" clear search
nnoremap <leader>c :let @/ = ""<CR>

if has_key(g:plugs, 'ale')
  nnoremap <Leader>at :ALEToggle<Cr>
  nnoremap <Leader>an :ALENext<Cr>
  nnoremap <Leader>ap :ALEPrevious<Cr>
  nnoremap <Leader>af :ALEFix<CR>
endif

if has_key(g:plugs, 'goyo.vim')
  nnoremap <Leader>gg :Goyo<CR>
endif

nmap <leader>hi :call <SID>SynStack()<CR>

if has_key(g:plugs, 'emmet-vim')
  let g:user_emmet_leader_key='<C-M>'
  nnoremap <Leader>em :call emmet#expandAbbr(0, "")<CR>
  :imap ,e <C-M>,
endif

if has_key(g:plugs, 'ranger.vim')
  let g:ranger_map_keys = 0
  map <leader>P :Ranger<CR>
endif

" Autocomplete Paths
imap ,p <plug>(fzf-complete-file-ag)
imap <c-x><c-f> <plug>(fzf-complete-path)

nnoremap <Leader><Tab> :call TabToggle()<CR>
nnoremap <Leader>wm :call WriteMode()<CR>
nnoremap <Leader>bt :call BackgroundToggle()<CR>
nnoremap <Leader>pt :PencilToggle <CR>

" Focus mode (like iaWriter)
nnoremap <Leader>ll :Limelight!!<CR>
nnoremap <Leader>fm :Limelight!!<CR>

" Navigate between same lines
nnoremap j gj
nnoremap k gk

" make moving to beginning and end of lines easier
noremap H g^
noremap L g$
