"my favorite vimrc settings

set nu
set tabstop=4
set shiftwidth=4
set ruler
au BufRead,BufNewFile *.py,*.pyw set colorcolumn=120
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set nu 

au BufRead,BufNewFile *.txt,*.md set autoindent
au BufRead,BufNewFile *.txt,*.md set spell

"ca w!! w !sudo tee > /dev/null %
cmap rootsave w !sudo tee > /dev/null %

"c-/ instert or remove comment (C-_ actually maps to C-/)
nmap <C-_> :norm _i# <CR>:'<,'>s/# # //g<CR>
vmap <C-_> :norm _i# <CR>:'<,'>s/# # //g<CR>gv

set hlsearch
set ignorecase  "search case insensitive
set incsearch   "move to match while typing
set spellcapcheck=  "ignore uncapitalised words

set noerrorbells
set novisualbell
set nohidden	"ask to save before loading something else
set modeline 	"allow vim commands in the file itself
set modelines=10
set splitbelow
set splitright
set conceallevel=3

set undofile    "maintain undo history
"mkdir ~/.vim/history  --do this manually please
set undodir=~/.vim/history
set undolevels=50
set undoreload=50
set noshowcmd

"sudo yum install vim-powerline
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

set updatetime=200

set virtualedit=all  "stay in same column when moving up down, stay in display line not full line
" adjust movement keys to handle display line (instead of full line)
noremap j gj
noremap k gk
noremap 0 g0
noremap $ g$bhe
noremap D d$

