"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       Amir Salihefendic
"       http://amix.dk - amix@amix.dk
"
" Version: 
"       5.0 - 29/05/12 15:43:36
"
" Blog_post: 
"       http://amix.dk/blog/post/19691#The-ultimate-Vim-configuration-on-Github
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/amix/vimrc
"
" Syntax_highlighted:
"       http://amix.dk/vim/vimrc.html
"
" Raw_version: 
"       http://amix.dk/vim/vimrc.txt
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
"filetype plugin on
"filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast quit
nmap <leader>q :q<cr>

" Fast close
nmap <leader>cs :CloseSession<cr>

" Save all open buffer
nmap <leader>wa :wa!<cr>

vmap <leader>y "+y
vmap <leader>d "+d
vmap <leader>p "+p
vmap <leader>P "+P

nmap <leader>y "+y
nmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P

map <leader>+ :5winc +<cr>
map <leader>- :5winc -<cr>
map <leader>> :5winc ><cr>
map <leader>< :5winc <<cr>
" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" line number
set number
set relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1



set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set font
set guifont=Consolas\ 13
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"=========== tab navigation like firefox =====  
nmap <C-S-tab> :tabprevious<CR>
nmap <C-tab> :tabnext<CR>
map <C-S-tab> :tabprevious<CR>
map <C-tab> :tabnext<CR>
imap <C-S-tab> <Esc>:tabprevious<CR>i

map <C-c> :tabclose<CR>

nmap <C-t> :browse tabnew<CR>
imap <C-t> <Esc>:browse tabnew<CR>

nmap <C-n> :tabnew<CR>
imap <C-n> <Esc>:tabnew<CR>

nmap OO O<Esc>j
nmap oo o<Esc>k

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Switch GOPATH to the directory of the open buffer
map <leader>gp :GoPath %:p:h<cr>

map <C-w><C-l> <C-w>10>
map <C-w><C-h> <C-w>10<
map <C-w><C-j> <C-w>10+
map <C-w><C-k> <C-w>10-

" Specify the behavior when switching between buffers 
"try
"  set switchbuf=useopen,usetab,newtab
"  set stal=2
"catch
"endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle NERDTree
map <leader>ne :NERDTree<cr>

" Toogle tagbar
map <leader>tb :TagbarToggle<cr>

" Toggle BufExplorer
map <leader>be :BufExplorer<cr>
""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'a.vim'

Plugin 'fatih/vim-go'

Plugin 'SirVer/ultisnips'

Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim'

Plugin 'scrooloose/nerdtree'
Plugin 'bufexplorer.zip'
Plugin 'majutsushi/tagbar'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteme'
Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

Plugin 'yssl/QFEnter'

Plugin 'pearofducks/ansible-vim'

Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'

Plugin 'kylef/apiblueprint.vim'
Plugin 'shime/vim-livedown'

Plugin 'KeitaNakamura/neodark.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction 

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ag \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" Make VIM remember position in file after reopen
" if has("autocmd")
"   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" vim-go settgins
let g:go_bin_path = "~/Program/go/bin"  
let g:go_fmt_command = "goimports"
let g:go_disable_autoinstall = 0
"au BufRead,BufNewFile *.go set filetype=go


let g:session_autoload = "no"
let g:session_autosave = "no"

function! ToggleFullScreen()
    call system("wmctrl -r :ACTIVE: -b toggle,fullscreen")
endfunction
map <silent> <F11> :call ToggleFullScreen()<CR>

"Toggle Menu and Toolbar
"set guioptions-=m
"set guioptions-=T
"map <silent> <F2> :if &guioptions =~# 'T' <Bar>
"        \set guioptions-=T <Bar>
"        \set guioptions-=m <bar>
"    \else <Bar>
"        \set guioptions+=T <Bar>
"        \set guioptions+=m <Bar>
"    \endif<CR>

" ---------------------------------- "
" Configure Ultisnip and YouCompleteMe
" ---------------------------------- "
"
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"

" ---------------------------------- "
" Configure YouCompleteMe
" ---------------------------------- "
"
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

"let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']

map <F3> :YcmCompleter GoTo<CR>

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax on 

let g:ansible_name_highlight = 'd'
let g:ansible_attribute_highlight = "a"
let g:ansible_extra_syntaxes = "sh.vim ruby.vim"
let g:ansible_extra_keywords_highlight = 1

let g:neodark#terminal_transparent = 1 " default: 0"
let g:neodark#use_256color = 1


let vim_markdown_preview_hotkey='<f5>'
let vim_markdown_preview_toggle=2

try
    colorscheme neodark
catch
endtr 
