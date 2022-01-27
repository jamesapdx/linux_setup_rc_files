"my favorite vimrc settings

set nu
set tabstop=4
set shiftwidth=4
set ruler
au BufRead,BufNewFile *.py,*.pyw set colorcolumn=120 "red line at column 120
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set nu              "enable line numbers

au BufRead,BufNewFile *.txt,*.md set autoindent
au BufRead,BufNewFile *.txt,*.md set spell           "turn on spell checking

cmap rootsave w !sudo tee > /dev/null %

"c=ctrl: c-/ instert or remove comment (oddly you have to use C-_ which maps to C-/), like an IDE
nmap <C-_> :norm _i# <CR>:'<,'>s/# # //g<CR>
vmap <C-_> :norm _i# <CR>:'<,'>s/# # //g<CR>gv

set hlsearch        "highlight all search results, use :noh to clear highlights
set ignorecase      "search case insensitive
set incsearch       "move to match while typing
set spellcapcheck=  "ignore uncapitalised words

set noerrorbells 	"no beeps please
set novisualbell    "no flashing please
set nohidden	    "ask to save before loading something else
set modeline 	    "allow vim commands (such as 'set nu') in the file itself, put in top of file
set modelines=10    "check this number of top lines for vim commands
set splitbelow   	"when splitting the screen, where to put the new split
set splitright      "when splitting the screen, where to put the new split
set conceallevel=3  "this will hide markdown symbols and show actuall formating (bold, italics, etc)

set undofile    	"maintain undo history across sessions
					"need to make a history folder though: mkdir ~/.vim/history  --do this manually please
set undodir=~/.vim/history
set undolevels=50
set undoreload=50   
set noshowcmd       "don't display the last command at the bottom of the screen, removes an annoying line

"sudo yum install vim-powerline in Fedora, installs a cool status bar
"add these lines to make it work
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set updatetime=200  "refresh the vim screen a little faster, helps with plug-ins

"this is a really cool way to transform vim, this mode will alloy to you move
"your cursor anywhere, even into whitespace at the end of lines.  The cursor
"will always go straight up and down regardless of line length
set virtualedit=all  
"adjust movement keys to handle wrapped display line (instead of full line)
noremap j gj
noremap k gk
noremap 0 g0
noremap $ g$bhe
noremap D d$
