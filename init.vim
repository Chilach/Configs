"init.vim by Julian "Chilach" Mejia

syntax on
hi CursorLine term=bold cterm=bold guibg=Grey40
filetype plugin indent on

setlocal spell spelllang=es
set spell
set nowritebackup
set runtimepath^=appdata/local/nvim/plugged/coc.nvim/plugin/coc.vim
set signcolumn=number
set hidden
set signcolumn=no
"set conceallevel=1
set cmdheight=1
set cursorline
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set background=dark
set splitbelow
set splitright
set guioptions-=r
set guicursor=a:blinkon0
set tabstop=4 softtabstop=4 showtabline=1
set t_Co=256
set sw=4
set nu 
set relativenumber
set exrc 
set encoding=utf-8
set fileencoding=utf-8
set hlsearch
set noswapfile
set nobackup
set incsearch
set laststatus=2
set statusline=[%t][%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set backspace=indent,eol,start
set colorcolumn=80

let mapleader = "æ"
"General config - end
"Remaps - start | note inoremap for insert mode and nnoremap por normal mode
"
"unmap <C-j>
"unmap <C-k>
"unmap <C-h>
"unmap <C-l>

inoremap jh <esc>


"Compile files and shortcuts
nnoremap cc :! gcc % -o test <cr>
nnoremap ctt :! ./test <cr>
nnoremap cmm :! manim -pql % 
nnoremap cma :! manim % -pql <cr>
nnoremap cjs :! node %  <cr>
nnoremap cpy :! python3 % <cr>
nnoremap ctex :! pdflatex % <cr>
nnoremap cpdf :! zathura '%<'.pdf&;disown &<cr>
nnoremap za :! zathura 
nnoremap sett :OpenSession! sett <cr>
nnoremap snips :OpenSession! snips <cr>
nnoremap cdqq :! notepadqq % &<cr>
nnoremap cvs :colorscheme vscode<cr>
nnoremap cli :set bg=light<cr>
nnoremap clb :set bg=dark<cr>
nnoremap thunar :! thunar .. <cr>
nnoremap spelloff :set spelllang = off n <cr><cr>

nnoremap <space><space> :w!<cr> 
nnoremap ZZ <esc>:q!<cr>
nnoremap <leader>' :NERDTreeToggle<cr>
nnoremap <S-TAB>  :tabp<cr>
nnoremap <TAB> :tabn<cr>
nnoremap Tt :tabnew<cr>
nnoremap <C-p> :FZF<cr>
nnoremap <C-t> <C-W>s:terminal<cr>
nnoremap <C-n> :so ~/.config/nvim/init.vim<cr>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
nnoremap <C-q>  <C-W>v
nnoremap <C-e>  <C-W>s
nnoremap <S-j> :+10<cr>
nnoremap <S-k> :-10<cr>
nnoremap <S-h> ^
nnoremap <S-l> $
nnoremap <C-w>w <C-w>+*5 
nnoremap <C-s>s <C-w>-*5
nnoremap <C-a>a <C-w><*5
nnoremap <C-d>d <C-w>>*5
nnoremap v <C-v>
nnoremap dl d$
nnoremap dh d^

"Easymotion
nmap f  <Plug>(easymotion-overwin-f)
nmap ff <Plug>(easymotion-overwin-f2)

vnoremap <S-h> ^
vnoremap <S-l> $
vnoremap i I
vnoremap a A
vnoremap <S-j> :+10
vnoremap <S-k> :-10
"vnoremap <space>h b
"vnoremap <space>l e
  
tnoremap jh <C-\><C-n>
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-l> <C-\><C-n><C-w>l

"vim-surround configs
map EE <S-s>

>
  let g:surround_{char2nr("q")} = "\\(\r\\)"
  let g:surround_{char2nr("y")} = "\\begin{\1escribaalog: \1}\r  \2algoperron: \2 \\end{\1\1}\2\2"
  let g:surround_{char2nr("c")} = "\\baka{\1escribaalog: \1}\r \2algoperron: \2\\baka{\1\1}\2\2"
<

"Coc Configuration
inoremap <silent><expr> ææ coc#refresh()
inoremap <silent><expr> ß
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr>ð coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <leader>cl  <Plug>(coc-codelens-action)


"Plugins - start
call plug#begin('~/appdata/local/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'easymotion/vim-easymotion'
Plug 'https://github.com/xolox/vim-session.git'
Plug 'https://github.com/xolox/vim-misc.git'
Plug 'jiangmiao/auto-pairs'
Plug 'gcmt/taboo.vim'
Plug 'sirver/ultisnips'
Plug 'ap/vim-css-color'
Plug 'https://github.com/tpope/vim-surround'

"Plug 'lervag/vimtex'
Plug 'sheerun/vim-polyglot'
"Plug 'ivanov/vim-ipython'
"Plug 'sillybun/vim-repl'
"Plug 'https://github.com/pR0Ps/molokai-dark'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()
"Plugins - end

let g:python3_host_prog = '/usr/bin/python3'
let g:cssColorVimDoNotMessMyUpdatetime = 1

"colorscheme molokai-dark
colorscheme PaperColor

let g:UltiSnipsSnippetDirectories=["~/.config/nvim/UltiSnips"]
let g:UltiSnipsExpandTrigger='<C-Space>'
let g:UltiSnipsJumpForwardTrigger='<C-Space>'
let g:UltiSnipsJumpBackwardTrigger='<C-b>'

let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:Easymotion_smartcase = 1
let g:session_autosave = 'no'
let g:session_autoload = 'no'
let g:AutoPairsShortcutToggle = '' 
let g:AutoPairsShortcutJump = ''
let g:indent_blankline_indent_level = 2
