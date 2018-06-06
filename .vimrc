" ******************************************************************************
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; 
"					append `!` to auto-approve removal
" start vim-plug configurations
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'tpope/vim-repeat'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

"" manual do this
Plug 'Valloric/YouCompleteMe'

Plug 'Yggdroot/indentLine'
Plug 'Raimondi/delimitMate'
Plug 'fholgado/minibufexpl.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
" conflict with ale
" Plug 'scrooloose/syntastic'

"" manual do this
Plug 'powerline/powerline'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ludovicchabant/vim-gutentags'

" colorscheme Plug
Plug 'chriskempson/base16-vim'
Plug 'whatyouhide/vim-gotham'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'flazz/vim-colorschemes'

Plug 'xuhdev/SingleCompile'
Plug 'ervandew/supertab'

Plug 'majutsushi/tagbar'

Plug 'wincent/command-t'
Plug 'junegunn/vim-easy-align'

Plug 'w0rp/ale'
Plug 'mhinz/vim-signify'
" Plug 'kana/vim-textobj-user'
" Plug 'kana/vim-textobj-indent'
" Plug 'kana/vim-textobj-syntax'
" Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
" Plug 'sgur/vim-textobj-parameter'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'

call plug#end()

filetype plugin indent on    " required

" end vim-plug configurations
" ******************************************************************************


" begin vim common configurations

" if has("mac")
"   let g:main_font = "Anonymous\\ Pro:h12"
"   let g:small_font = "Anonymous\\ Pro:h2"
" else
"   let g:main_font = "DejaVu\\ Sans\\ Mono\\ 9"
"   let g:small_font = "DejaVu\\ Sans\\ Mono\\ 2"
" endif
"
" set guifont=monofur\ \ Regular\ 16  "设置英文字体
" set gfw=Consolas\ \ Regular\ 12     "设置中文字体
"
if has("gui_running")
	set guifont=PragmataPro\ \ Regular\ 14
endif

set t_Co=256
set background=dark
syntax enable
syntax on
set number
set relativenumber

" ******************
" all color scheme
" ******************
" base16
" badwolf
" molokai
" mustang
" solarized
" vitamins
" xoria256
" ******************
" for solarized colorscheme
let g:solarized_termcolors=256
colorscheme solarized

" for base16 colorscheme
" let base16colorspace=256
" colorscheme base16-oceanicnext

" Set the textwidth to be 80 chars
set textwidth=80
set colorcolumn=+1 "mark the ideal max text width

" Changing Leader Key
let mapleader=","

" make vim incompatbile to vi.
set nocompatible
set modelines=0

" Tabstops are 2 spaces
set smarttab
set tabstop=8
set shiftwidth=8
set softtabstop=8
" set expandtab         " make TAB as space
set shiftround
set autoindent
set copyindent          " copy the previous indentation on autoindenting
set cindent             " smart indenting for c-like code
set cino=b1,g0,N-s,t0,(0,W4  " see :h cinoptions-values

" Printing options
set printoptions=header:0,duplex:long,paper:letter

set viminfo='20,\"500   " remember copy registers after quitting in the .viminfo
                        " file -- 20 jump links, regs up to 500 lines'

" set the search scan to wrap lines
set wrapscan

" this makes sure that shell scripts are highlighted
" as bash scripts and not sh scripts
let g:is_posix = 1

" tries to avoid those annoying "hit enter to continue" messages
" if it still doesn't help with certain commands, add a second <cr>
" at the end of the map command
set shortmess=a


" More Common Settings.
set fileformat=unix     " file mode is unix
set fileformats=unix,dos,mac   " detects unix, dos, mac file formats in that order
set encoding=utf-8
set fileencodings=uft-8,gbk
set noshowmode
set noshowcmd
set hidden
set visualbell

set cursorline
set cursorcolumn

set ttyfast
set ruler
set backspace=indent,eol,start
set nobackup            " no backup~ files.
set laststatus=2

set nrformats-=octal

set ttimeout
set ttimeoutlen=50

set undodir=~/.vim/undofiles
set undofile

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=ces$

" Number of screen lines to use for the command-line
set cmdheight=2

" Fast saving
nnoremap <leader>w :w!<cr>

" with this, we can now type ",." to exit out of insert mode
" if we really wanted to type ",.", then just type one char, wait half a sec, type another
inoremap ,. <Esc>
vnoremap ,. <Esc>

" set the forward slash to be the slash of note. Backslashes suck
set shellslash
set shell=bash
set lazyredraw
set matchtime=3

" Set title to window
set title

" Dictionary path, from which the words are being looked up.
set dictionary=/usr/share/dict/words

" Make pasting done without any indentation break.
set pastetoggle=<F3>

" Look for tag def in a "tags" file in the dir of the current file, then for
" that same file in every folder above the folder of the current file, until the root.
" set tags=./tags;/
set tags=./.tags;,.tags
setlocal tags+=...

" turns off all error bells, visual or otherwise
set noerrorbells visualbell t_vb=

" none of these should be word dividers, so make them not be
set iskeyword+=_,$,@,%,#

"Settings for Searching and Moving
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set concealcursor=inv
set conceallevel=2
"nnoremap <tab> %
"vnoremap <tab> %

" Make Vim to handle long lines nicely.
set wrap
set linebreak "wrap lines at convenient points
set formatoptions=r "do not continue comments when pushing o/O

" To show special characters in Vim
set list
if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:»,precedes:«,nbsp:+
    if !has('win32') && (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8')
        let &listchars = "tab:»\ ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7,eol:¬"
    endif
endif

" let &listchars = "tab:¶\ ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7,eol:¬"

" Naviagations using keys up/down/left/right
" Disabling default keys to learn the hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Get Rid of stupid Goddamned help keys
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>

" make F2 like ESC, save time to press ESC
inoremap <F2> <ESC>
nnoremap <F2> <ESC>
vnoremap <F2> <ESC>

" Set vim to save the file on focus out.
au FocusLost * :wa

" Working with split screen nicely
" Resize Split When the window is resized"
au VimResized * :wincmd =

" Hide the mouse pointer while typing
set mousehide

" Setting this below makes it sow that error messages don't disappear after one second on startup.
" set debug=msg

" Wildmenu completion "
set wildmenu
" set wildmode=list:longest
set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "Binary Imgs"
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
set wildignore+=*.spl "Compiled speolling world list"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX SHIT"
set wildignore+=*.luac "Lua byte code"
set wildignore+=migrations "Django migrations"
set wildignore+=*.pyc "Python Object codes"
set wildignore+=*.orig "Merge resolution files"

"jump to last cursor position when opening a file
""dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'svn\|commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

" Source the vimrc file after saving it
autocmd bufwritepost .vimrc source ~/.vimrc

" store lots of :cmdline history
set history=100

" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait period between the
" "," key and the "d" key. If the "d" key isn't pressed before the
" timeout expires, one of two things happens: The "," command is executed
" if there is one (which there isn't) or the command aborts.
set timeoutlen=1000

"folding settings
set foldmethod=indent "fold based on indent
set foldnestmax=3 "deepest fold is 3 levels
set nofoldenable "dont fold by default

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" Disable encryption (:X)
set key=

" Same as default except that I remove the 'u' option
set complete=.,w,b,t,i
set completeopt=menu,longest

" so the complete menu doesn't get too big"
set pumheight=10

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" get rid of the silly characters in separators
set fillchars = ""

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Add the unnamed register to the clipboard
set clipboard+=unnamed

" Automatically read a file that has changed on disk
set autoread
set autowrite

" build-in grep options
set grepprg=grep\ -nH\ $*

" Let the syntax highlighting for Java files allow cpp keywords
let java_allow_cpp_keywords=1

" Wipe out all buffers
nmap <silent> ,wa :1,9000bwipeout<cr>

" Toggle paste mode
nmap <silent> ,p :set invpaste<CR>:set paste?<CR>

" cd to the directory containing the file in the buffer
nmap <silent> ,cd :lcd %:h<CR>
nmap <silent> ,md :!mkdir -p %:p:h<CR>

" Turn off that stupid highlight search
" nmap <silent> ,n :nohls<CR>

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

" put the vim directives for my file editing settings in
nmap <silent> ,vi ovim:set ts=2 sts=2 sw=2:<CR>vim600:fdm=marker fdl=1 fdc=0:<ESC>

" Show all available VIM servers
nmap <silent> ,ss :echo serverlist()<CR>

" The following beast is something i didn't write... it will return the
" syntax highlighting group that the current "thing" under the cursor
" belongs to -- very useful for figuring out what to change as far as
" syntax highlighting goes.
nmap <silent> ,qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" set text wrapping toggles
nmap <silent> ,ww :set invwrap<CR>:set wrap?<CR>

" Maps to make handling windows a bit easier
noremap <silent> ,h :wincmd h<CR>
noremap <silent> ,j :wincmd j<CR>
noremap <silent> ,k :wincmd k<CR>
noremap <silent> ,l :wincmd l<CR>
noremap <silent> ,sb :wincmd p<CR>
noremap <silent> <C-F9> :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>
noremap <silent> ,s8 :vertical resize 83<CR>
" noremap <silent> ,cj :wincmd j<CR>:close<CR>
" noremap <silent> ,ck :wincmd k<CR>:close<CR>
" noremap <silent> ,ch :wincmd h<CR>:close<CR>
" noremap <silent> ,cl :wincmd l<CR>:close<CR>
" noremap <silent> ,cc :close<CR>
" noremap <silent> ,cw :cclose<CR>
noremap <silent> ,ml <C-W>L
noremap <silent> ,mk <C-W>K
noremap <silent> ,mh <C-W>H
noremap <silent> ,mj <C-W>J
noremap <silent> <C-7> <C-W>>
noremap <silent> <C-8> <C-W>+
noremap <silent> <C-9> <C-W>+
noremap <silent> <C-0> <C-W>>

" Edit the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

" Make horizontal scrolling easier
nmap <silent> <C-o> 10zl
nmap <silent> <C-i> 10zh

" Add a GUID to the current line
imap <C-J>d <C-r>=substitute(system("uuidgen"), '.$', '', 'g')<CR>

" Underline the current line with '='
nmap <silent> ,u= :t.\|s/./=/g\|:nohls<cr>
nmap <silent> ,u- :t.\|s/./-/g\|:nohls<cr>
nmap <silent> ,u~ :t.\|s/./\\~/g\|:nohls<cr>

" Shrink the current window to fit the number of lines in the buffer. Useful
" for those buffers that are only a few lines
nmap <silent> ,sw :execute ":resize " . line('$')<cr>

" Use the bufkill plugin to eliminate a buffer but keep the window layout
nmap ,bd :BD<cr>

" Use CTRL-E to replace the original ',' mapping
nnoremap <C-E> ,

" Alright... let's try this out
imap jj <esc>
cmap jj <esc>

" I like jj - Let's try something else fun
imap ,fn <c-r>=expand('%:t:r')<cr>


" Make the current file executable
nmap ,x :w<cr>:!chmod 755 %<cr>:e<cr>

" Digraphs
" Alpha
imap <c-l><c-a> <c-k>a*
" Beta
imap <c-l><c-b> <c-k>b*
" Gamma
imap <c-l><c-g> <c-k>g*
" Delta
imap <c-l><c-d> <c-k>d*
" Epslion
imap <c-l><c-e> <c-k>e*
" Lambda
imap <c-l><c-l> <c-k>l*
" Eta
imap <c-l><c-y> <c-k>y*
" Theta
imap <c-l><c-h> <c-k>h*
" Mu
imap <c-l><c-m> <c-k>m*
" Rho
imap <c-l><c-r> <c-k>r*
" Pi
imap <c-l><c-p> <c-k>p*
" Phi
imap <c-l><c-f> <c-k>f*

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" I don't like it when the matching parens are automatically highlighted
let loaded_matchparen=1

"-----------------------------------------------------------------------------
" Fix constant spelling mistakes
"-----------------------------------------------------------------------------

iab Acheive Achieve
iab acheive achieve
iab Alos Also
iab alos also
iab Aslo Also
iab aslo also
iab Becuase Because
iab becuase because
iab Bianries Binaries
iab bianries binaries
iab Bianry Binary
iab bianry binary
iab Charcter Character
iab charcter character
iab Charcters Characters
iab charcters characters
iab Exmaple Example
iab exmaple example
iab Exmaples Examples
iab exmaples examples
iab Fone Phone
iab fone phone
iab Lifecycle Life-cycle
iab lifecycle life-cycle
iab Lifecycles Life-cycles
iab lifecycles life-cycles
iab Seperate Separate
iab seperate separate
iab Seureth Suereth
iab seureth suereth
iab Shoudl Should
iab shoudl should
iab Taht That
iab taht that
iab Teh The
iab teh the

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" explorer mappings
nnoremap <F4> :MBEToggle<cr>
" nnoremap <f2> :NERDTreeToggle<cr>
" nnoremap <f3> :TagbarToggle<cr>

"map Q to something useful
noremap Q gq

"make Y consistent with C and D
nnoremap Y y$


" con for NERDTree {{
" Q. How can I open a NERDTree automatically when vim starts up?
" A. Stick this in your vimrc: autocmd vimenter * NERDTree
"
" Q. How can I open a NERDTree automatically when vim starts up if no files were specified?
" A. Stick this in your vimrc: autocmd vimenter * if !argc() | NERDTree | endif
"
" Q. How can I map a specific key or shortcut to open NERDTree?
" A. Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want): map <C-n> :NERDTreeToggle<CR>
"
" Q. How can I close vim if the only window left open is a NERDTree?
" A. Stick this in your vimrc: autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-e> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.vim$', '\~$', '\.pyc$']
let NERDTreeWinPos = "right"
let NERDTreeDirArrows=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowLineNumbers=1
" }}



" taglist
nnoremap <silent> <F9> :TlistToggle<CR>
let Tlist_WinWidth = 60
let Tlist_Exit_OnlyWindow = 1
let Tlist_Display_Prototype = 1


" Mini Buffer some settings."
hi MBENormal               guifg = #808080 guibg = fg
hi MBEChanged              guifg = #CD5907 guibg = fg
hi MBEVisibleNormal        guifg = #5DC2D6 guibg = fg
hi MBEVisibleChanged       guifg = #F1266F guibg = fg
hi MBEVisibleActiveNormal  guifg = #A6DB29 guibg = fg
hi MBEVisibleActiveChanged guifg = #F1266F guibg = fg
map <leader>n :MBEbn<CR>
map <leader>p :MBEbp<CR>
let g:miniBufExplAutoStart = 1
let g:miniBufExplBuffersNeeded = 2
let g:miniBufExplHideWhenDiff = 1
" If you like control + vim direction key to navigate
" windows then perform the remapping
" noremap <C-J> <C-W>j
" noremap <C-K> <C-W>k
" noremap <C-H> <C-W>h
" noremap <C-L> <C-W>l

" inden guide settings
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg = 238 guibg = #444444
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg = 240 guibg = #444444
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_default_mapping = 0
let g:indent_guides_guide_size = 1

let g:indentLine_char = '¦'

" Single Compile settings
noremap <silent> <F7> :SCCompileAF -Wall -lpthread -ldl<cr>
noremap <silent> <F5> :SCCompileRun<cr>
let g:SingleCompile_usequickfix = 1
let g:SingleCompile_showquickfixiferror = 1
let g:SingleCompile_silentcompileifshowquickfix = 1

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<F8>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_jump = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_ignore_files = ['^/usr/include/', '\c\.h$']
let g:syntastic_loc_list_height = 5


" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['red',         'firebrick3'],
"     \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" au VimEnter * Rainbow
" noremap <leader>r :RainbowToggle<cr>


" au FileType qf call AdjustWindowHeight(10, 20)
" function! AdjustWindowHeight(minheight, maxheight)
" exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
" endfunction


let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabLongestHighlight = 1
let g:SuperTabLongestEnhanced = 1


" let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_briefTag_pre="@brief  "
let g:DoxygenToolkit_paramTag_pre="@param  "
let g:DoxygenToolkit_returnTag="@return  "
" let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
" let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Xiaobing Luo <luoxiaobing@hikvision.com.cn>"


nmap <F10> :TagbarToggle<CR>


let g:easytags_file = '~/.vim/.tags'


let g:NERDSpaceDelims = 1

map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q . ; cscope -Rbq <CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE settings for vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" This file contains some boilerplate settings for vim's cscope interface,
" plus some keyboard mappings that I've found useful.
"
" USAGE:
" -- vim 6:     Stick this file in your ~/.vim/plugin directory (or in a
"               'plugin' directory in some other directory that is in your
"               'runtimepath'.
"
" -- vim 5:     Stick this file somewhere and 'source cscope.vim' it from
"               your ~/.vimrc file (or cut and paste it into your .vimrc).
"
" NOTE:
" These key maps use multiple keystrokes (2 or 3 keys).  If you find that vim
" keeps timing you out before you can complete them, try changing your timeout
" settings, as explained below.
"
" Happy cscoping,
"
" Jason Duell       jduell@alumni.princeton.edu     2002/3/7
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim... 
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " diplays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.  
    "

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>	

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout 
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    "set timeoutlen=4000
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    "set ttimeout
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    "set ttimeoutlen=100

endif


function! EchoPlainCode()
	let firstLine = line("'<")
	let lastLine = line("'>")
	while firstLine <= lastLine
		let theLine = getline(firstLine)
		echo theLine
		let firstLine = firstLine + 1
	endwhile
endfunction

command! EchoPlain call EchoPlainCode()

set runtimepath^=~/.vim/plugged/ctrlp.vim

" make powerline works
" set rtp+=~/.vim/plugged/powerline/powerline/bindings/vim

" make vim-airline works
" set guifont=Liberation\ Mono\ for\ Powerline\ 10
set guifont=Source\ Code\ Pro\ for\ Powerline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = ''
let g:airline_exclude_preview = 1
let g:airline_section_b = '%n'
" show absolute file path in status line
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:airline_theme='solarized'

" make vim-easy-align works
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
 
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
 
" 将自动生成的 tags 文件全部放入 ~/data/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/data/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
 
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
 
" 检测 ~/data/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif

" make ale works
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
 
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_sign_error = "\ue009\ue009"
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta

" make ale works
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

let g:ycm_filetype_whitelist = { 
			\ "c":1,
			\ "cpp":1, 
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ }
