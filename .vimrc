set nocompatible
"filetype off  " required!
"set rtp+=~/.vim/vundle.git/ 
"call vundle#rc()
"filetype plugin indent on " required!

"" Bundles {
"    " Use local bundles if available {
"        if filereadable(expand("~/.vimrc.bundles.local"))
"            source ~/.vimrc.bundles.local
"        endif
"    " }
"" }


" =====================
" Coloration syntaxique
" =====================
if version >= 500
    " set t_Co=256
    syntax on " enable syntax highlighting
    set background=dark
    color evening " load a colorscheme, it's redundant to use
    " set listchars=nbsp:¤,tab:>-,trail:¤,extends:>,precedes:<
    set listchars=tab:▸\ ,trail:\ ,extends:>,precedes:<,nbsp:·
    set list
endif



" ==========================================
" Met en surbrillance des lignes et colonnes
" ==========================================
set cursorline " highlight current line
set cursorcolumn " highlight current column
set colorcolumn=78
hi cursorline guibg=#3a3a3a " highlight bg color of current line
hi cursorcolumn guibg=#3a3a3a " highlight cursor
hi ColorColumn guibg=#2e2e2e
hi ExtraWhitespace guibg=#550000
hi SpecialKey term=bold ctermfg=DarkCyan guifg=#555555



" =============
" Environnement
" =============
set backspace=indent,eol,start " backspace for dummys
set showmatch " show matching brackets/parenthesis
set wildmenu
set wildmode=list:longest,full " comand <tab> completion, list matches and complete the longest common part, then, cycle through the matches
set shortmess+=filmnrxoOtT " abbrev. of messages (avoids 'hit enter')
set showmode " display the current mode
" set spell " spell checking on
set relativenumber " Relative line numbers on
set tabpagemax=15 " only show 15 tabs
set guitablabel=%N/\ %t\ %M " affiche le numero de l'onglet, le fichier, et un "+" si le contenu de l'onglet a ete modifie
autocmd BufNew * if winnr('$') == 1 | tabmove999 | endif " open new tabs at the end
set incsearch " find as you type search
set hlsearch " highlight search terms
set nomodeline " mesure de securite
set ttyfast " Accélère le rendu graphique dans les terminaux véloces
if version >= 500
    filetype plugin indent on " Automatically detect file types.
endif
" remap le raccourci :x car trop proche de :w
ca x w


" ==========
" Formatting
" ==========
set wrap " wrap long lines
set autoindent smartindent " indent at the same level of the previous line
set shiftwidth=4 ts=4 sts=4 " use indents of 4 spaces
set shiftround " arrondit l'indentation
set expandtab " tabs are tabs, not spaces
set matchpairs+=<:> " match, to be used with %
set pastetoggle=<f12> " pastetoggle (sane indentation on pastes)
set comments=sl:/*,mb:*,elx:*/ " auto format comment blocks
"set foldenable " auto fold code
"set foldmethod=marker " type of folding
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1



" ======
" Coding
" ======
" setlocal omnifunc=syntaxcomplete#Complete " activate autocomplete (intellisense)
" set cot+=menuone " show preview of function prototype
set completeopt=longest,menuone

" ===============================
" GVIM- (here instead of .gvimrc)
" ===============================
if has('gui_running')
    set guifont=Courier\ New\ Bold\ 13 " Police pour gVim
    color solarized " load a colorscheme, it's redundant to use
    set lines=40 " 40 lines of text instead of 24,
    " set guioptions-=T " remove the toolbar
    " Ajout d'icones personnalisees dans la ToolBar pour split
    :aunmenu ToolBar.EnregTout
    :aunmenu ToolBar.Imprimer
    :aunmenu ToolBar.Annuler
    :aunmenu ToolBar.Refaire
    :aunmenu ToolBar.Couper
    :aunmenu ToolBar.Copier
    :aunmenu ToolBar.Coller
    :aunmenu ToolBar.Remplacer
    :aunmenu ToolBar.CherchSuiv
    :aunmenu ToolBar.CherchPrec
    :aunmenu ToolBar.OuvrirSess
    :aunmenu ToolBar.EnregSess
    :aunmenu ToolBar.LancScript
    :aunmenu ToolBar.CréerEtiqu
    :aunmenu ToolBar.AllerEtiqu
    :aunmenu ToolBar.Aide
    :aunmenu ToolBar.CherchAide
    :aunmenu ToolBar.Make
    :aunmenu ToolBar.-sep1-
    :aunmenu ToolBar.-sep2-
    :aunmenu ToolBar.-sep3-
    :aunmenu ToolBar.-sep5-
    :aunmenu ToolBar.-sep6-
    :aunmenu ToolBar.-sep7-
    " Separateur
    :amenu ToolBar.-sep_1- :
    " HSplit
    ":amenu icon=/usr/share/icons/gnome/22x22/actions/object-flip-vertical.png ToolBar.Split :split<cr>
    ":tmenu ToolBar.Split Sépare la fenêtre horizontalement
    " Vsplit
    ":amenu icon=/usr/share/icons/gnome/22x22/actions/object-flip-horizontal.png ToolBar.VSplit :vsplit<cr>
    ":tmenu ToolBar.VSplit Sépare la fenêtre verticalement
    " NERDTreeMirrorToggle
    :amenu icon=/usr/share/icons/gnome/22x22/actions/go-first.png ToolBar.NERDTreeMirrorToggle :NERDTreeMirrorToggle<cr>
    :tmenu ToolBar.NERDTreeMirrorToggle Toggle Tree pane
    " ResyncSyntax
    :amenu icon=/usr/share/icons/gnome/22x22/actions/format-justify-left.png ToolBar.ResyncSyntax :syntax sync fromstart<cr>
    :tmenu ToolBar.ResyncSyntax Resynchronize syntax highlighting from start
    " SyntasticToggleMode
    :amenu icon=/usr/share/icons/gnome/22x22/actions/gtk-spell-check.png ToolBar.SyntasticToggleMode :SyntasticToggleMod<cr>
    :tmenu ToolBar.SyntasticToggleMode Toggle syntax check
    " Separateur
    :amenu ToolBar.-sep_2- :
    " Close tab
    :amenu icon=/usr/share/icons/gnome/22x22/actions/gtk-close.png ToolBar.Close :close<cr>
    :tmenu ToolBar.Close Close current window
endif



" ============
" Comportement 
" ============
set mouse=a " la souris fonctionnne aussi dans le terminal
set mousemodel=popup " Le clic droit ouvre un menu
set wildchar=<Tab> " Use <Tab> to complete
set ignorecase smartcase incsearch " Smart search
set history=20 " history in cmd
set nohidden " Don't hide buffers without closing them
" echange ' et ` pour le rappel de markers
nnoremap ' `
nnoremap ` '
 " preciseJump
map - _f
" je deteste le mode Ex
noremap Q <Esc>
let mapleader = "," " <leader> sera ,
set scrolloff=3 " lignes de contexte autour du curseur
set fileformats=unix,dos,mac " File formats
if version >= 500
    set enc=utf-8 fenc=utf-8 
    set foldmethod=manual 
    set foldmarker:{,}
    let php_sql_query = 1
    let php_htmlInStrings = 1
    let php_asp_tags = 1
    let php_parent_error_close = 1
    let php_parent_error_open = 1
    " let php_folding = 2
    set expandtab
    set mps+=(:),{:},[:],<:>
    " Omni-completion avec CTRL-X O, completion locale + includes avec CTRL-n
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags filetype=html.javascript
    autocmd FileType html source $VIM/vimcurrent/indent/html.vim
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP filetype=php.html.javascript.sql
    autocmd FileType php setlocal iskeyword-=$
    autocmd FileType php normal zR
    autocmd FileType c set omnifunc=ccomplete#Complete
endif
" Récupérer la position du curseur entre 2 ouvertures de fichiers
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
" Afficher les espaces superflus et les tabulations
:match ExtraWhitespace /\s\+$\|\t/
" Suppression automatique des espaces superflu
" autocmd BufWritePre * :%s/\s\+$//e
" Se place dans le répertoire du fichier éditer
" autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')
" Affiche la limite de 160 caractères
" autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>160v.\+', -1)



" =================================
" Statusline personnalisee (deluxe)
" =================================
if has('statusline')
    set statusline=[%n]\ %<%f\ %((%1*%M%*%R%Y)%)\ %=%-19(\LINE\ [%3l/%3L]\ COL\ [%02c%03V]%)\ %{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\"}\ %P
    set laststatus=2 " Statusline on all windows
    set ruler " Where am I
    set ch=4 " Make command line two lines high
    set shm="aAI" " What will be shown on the commandline
    set showcmd " show partial commands in status line and selected characters/lines in visual mode
endif



" ==========================
" Fichiers de backup et swap
" ==========================
set backup
" Backup dans ~/.vim/backup/.vim/backup/pa
if filewritable(expand("~/.vim/backup/.vim/backup")) == 2
else
    if has("unix") || has("win32unix")
        " C'est c'est un système compatible UNIX, on va créer le répertoire et l'utiliser.
        call system("ln -s /dev/shm $HOME/.vim/backup")
        call system("mkdir $HOME/.vim/backup/.vim/backup -p")
    endif
endif
call system("mkdir $HOME/.vim/backup/.vim/backup/pa -p && chmod 700 $HOME/.vim/backup/.vim/backup/pa")
set backupdir=$HOME/.vim/backup/.vim/backup/pa
" Swapdir dans ~/.vim/swap/.vim/swap/pa
if filewritable(expand("~/.vim/swap/.vim/swap")) == 2
else
    if has("unix") || has("win32unix")
        call system("ln -s /dev/shm $HOME/.vim/swap")
    endif
endif
call system("mkdir $HOME/.vim/swap/.vim/swap/pa -p && chmod 700 $HOME/.vim/swap/.vim/swap/pa")
set dir=$HOME/.vim/swap/.vim/swap/pa
" Persistent undo dans ~/.vim/undodir/.vim/undodir/pa
if filewritable(expand("~/.vim/undodir/.vim/undodir")) == 2
else
    if has("unix") || has("win32unix")
        " C'est c'est un système compatible UNIX, on va créer le répertoire et l'utiliser.
        call system("ln -s /dev/shm $HOME/.vim/undodir")
    endif
endif
try
    call system("mkdir $HOME/.vim/undodir/.vim/undodir/pa -p && chmod 700 $HOME/.vim/undodir/.vim/undodir/pa")
    set undodir=$HOME/.vim/undodir/.vim/undodir/pa
    set undofile
catch
endtry




" =====================================
" CORRECTION ORTHOGRAPHIQUE EN FRANCAIS
" =====================================
" if version >= 500
"   if filereadable(expand("/usr/share/vim/vimcurrent/spell/fr.utf-8.spl")) 
"   else
"     mkspell /tmp/fr /usr/share/dict/french
"     call system("sudo /bin/mv /tmp/fr.utf-8.spl /usr/share/vim/vimcurrent/spell/")
"   endif
" endif
" desactive pour eviter les faux positifs lors des comparaisons ! 
" setlocal spell spelllang=fr
set nospell " spell checking off


" autocompletion

" =======
" Plugins
" =======
if version >= 500
    "let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
    ""let g:SuperTabDefaultCompletionType = "context"
    inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
    nnoremap <C-P> :call PhpDocSingle()<CR>
    vnoremap <C-P> :call PhpDocRange()<CR>
endif



" ========================
" Commandes personnalisees
" ========================
if version >= 500
    " necessite : sudo apt-get install php-xsl php-pear
    " necessite : sudo pear install php_beautifier
    " ... voire : sudo pear install channel://pear.php.net/php_beautifier-0.1.14
    " ... ou    : sudo pear install PHP_Beautifier-0.1.14
    command Check silent !cd /home/pa/public_html/phpcheckstyle/ && /usr/bin/php5 run.php --src %:p && /usr/bin/iceweasel /home/pa/public_html/phpcheckstyle/style-report/index.html & 
    command CheckDir silent !cd /home/pa/public_html/phpcheckstyle/ && /usr/bin/php5 run.php --src %:p:h && /usr/bin/iceweasel /home/pa/public_html/phpcheckstyle/style-report/index.html & 
    command CheckHtml silent !cd /home/pa/public_html/phpcheckstyle/ && /usr/bin/php5 -f quai13_strip.php %:p > /home/pa/public_html/phpcheckstyle/style-report/test.html; tidy -eq /home/pa/public_html/phpcheckstyle/style-report/test.html > /home/pa/public_html/phpcheckstyle/style-report/html.txt 2>&1; /usr/bin/iceweasel /home/pa/public_html/phpcheckstyle/style-report/html.txt & 
    " command Validate :%s/<?=\(.?*[^;]*\) *?>/<?php echo \1; ?>/g
    function! Validate()
        :%s/<?\//<?php\//g
        :%s/<?php */<? /gi
        :%s/<?=\(.?*[^;]*\)[\n ]* *?>/<? echo \1; ?>/g
        :%s/<? /<?php /g
        :%s/<?$/<?php/g
        :%!php_beautifier
        :%s/  *$//g
        :set et
        :retab
        gg=G
    endfunction
    function SaveAsRoot()
        :w !sudo tee %
    endfunction
endif

" Touche TAB améliorée
" decalage en mode visuel
vmap <TAB> >gv
vmap <S-TAB> <gv
" navigue entre les onglets
map <C-TAB> gt
map <C-S-TAB> gT
imap <C-TAB> <Esc>gt
imap <C-S-TAB> <Esc>gT
" ouvrir un nouvel onglet
" map <C-T> :tabnew<CR><ESC>:Explore<CR>
" map <C-T> :tabnew<CR>
map <C-T> :tabnew<CR><ESC>:edit .<CR>
" ouvrir les tags dans un nouveal onglet
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" ouvre le fichier sous le curseur dans un nouvel onglet
map gf :tabnew <cfile><CR>
let g:netrw_browse_split=3 " ouvre les fichiers de netrw dans un nouvel onglet
" map Control + F10 to Vtree
map <c-f10> <esc>:vsp<cr>:VTree<cr>
" retours a la ligne DOS => UNIX
noremap <f1> mt:%s/$//g<CR>`t
inoremap <f1> <ESC>mt:%s/$//g<CR>`ta
noremap <C-f5> :w<CR>:!wmctrl -a Iceweasel && sleep 0.1 && xdotool key "ctrl+F5" && wmctrl -a GVIM<CR><CR>
inoremap <C-f5> <ESC>:w<CR>:!wmctrl -a Iceweasel && sleep 0.1 && xdotool key "ctrl+F5" && wmctrl -a GVIM<CR><CR>

" Pour aller plus loin : http://amix.dk/vim/vimrc.html

function CheckSpam() range
  echo system('postcat -q '.shellescape(join(getline(a:firstchar, a:lastchar), "\n")).' | spamc -c ')
endfunction


" Plugin Taglist
" nmap <S-F4> :TlistToggle<cr>
" let Tlist_Ctags_Cmd = "/usr/bin/ctags"
" let Tlist_WinWidth = 40
" let Tlist_Process_File_Always = 1

" NerdTree
" autocmd VimEnter * NERDTree
" autocmd BufAdd * NERDTreeMirror
" autocmd BufEnter * NERDTreeMirror
" autocmd BufNewFile * edit .
" let g:NERDTreeWinPos = "right"
let g:NERDTreeMouseMode = 3 " single click
let g:nerdtree_tabs_open_on_gui_startup = 0 " start closed

" Syntastic
let g:syntastic_phpcs_disable = 1

" phpErrorMarker
" let g:phpErrorMarker#automake = 1
" let g:phpErrorMarker#openQuickfix = 1

" php man pages
" # sudo pear install doc.php.net/pman
set keywordprg=pman

