
" Directorio de plugins
call plug#begin()

" Aquí irán los plugins a instalar

Plug 'tpope/vim-surround'  " Es buena idea agregar una descripción del plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline
Plug 'scrooloose/nerdcommenter'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-repeat'
Plug 'lervag/vimtex'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-unimpaired'
Plug 'nelstrom/vim-visual-star-search'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'tommcdo/vim-exchange'
Plug 'sjl/gundo.vim'
Plug 'vim-syntastic/syntastic'
" Plug 'ycm-core/YouCompleteMe'

" Those 3 plugins are for deoplete
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'


call plug#end()

" Luego de esta línea puedes agregar tus configuraciones y mappings

" airline config
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1

set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)

" NERDTree config
let g:NERDSpaceDelims = 1  " Agregar un espacio después del delimitador del comentario
let g:NERDTrimTrailingWhitespace = 1  " Quitar espacios al quitar comentario
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>

" Vimtex config
let g:vimtex_fold_enabled =1
" let g:vimtex_compiler_progname = 'nvr'
" let g:Tex_DefaultTargetFormat='pdf'
" let g:Tex_MultipleCompileFormats='pdf,bibtex,pdf'
" let g:Tex_BibtexFlavor = 'biber'
" set conceallevel=1
" let g:tex_conceal='abdmg'

" UltiSnips config
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger='<tab>'

" shortcut to go to next position
let g:UltiSnipsJumpForwardTrigger='<c-j>'

" shortcut to go to previous position
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

" Gundo config
let g:gundo_prefer_python3 = 1
nnoremap <F3> :GundoToggle<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Global configuration

set nocp                                       " make vim nocompatible with vi
syntax enable                                      " Activate the syntax color
set number                                     " show line number
filetype plugin indent on
set background=dark
colorscheme NeoSolarized                            " set color secheme
set termguicolors
" au GUIEnter * set lines=48 columns=152         " set the window size
" winpos 420 80                                  " set the window position
set cursorline                                 " highlight the current line
" set cursorcolumn                             " highlight the current column
set guifont=Monaco:h12                         " set font and font size
"set guioptions-=m                                      " hidde the menu
set showmode                                   " sow the edit mode
set autoindent
set smartindent                                " intelligent autoindent
set ts=2 sts=2 sw=2 expandtab 		             " Set tabstop, softtabstop and shiftwidth to 2
" helptags ~/.vim/doc                            " read the documentation of the plugins
set list                                       " show invisibles characteres by default
set incsearch ignorecase hlsearch smartcase    " highlight,nocase and incremental searchs
set hidden                                     " make Vim more liberal about hidden buffers
set autochdir                                  " always switch to the current file directory..
set showcmd                                    " Show current combination of keystrokes
set title                                      " Change terminal title
" set ruler                                      " Show ruler with extra information
set history=500                                " Commands to be rememebered
set undolevels=1000                            " Undo levels
set wildmenu                                   " show suggestions in the command line
" set undofile                                   " create files to save undo information
" set laststatus=2                               " show the status bar highlighted




if has('nvim')

	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  tnoremap <C-c> <C-\><C-n>
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <C-v><Esc> <Esc>


else 

	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'


endif

let g:deoplete#enable_at_startup = 1









let mapleader = ","
let maplocalleader = ","

" Toggle spell checking on and off with ',s'
nmap <silent> <leader>s :set spell!<CR>

" Shortcut to rapidly toggle 'set list'
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Press space to clear search highlighting and any message already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

" " Expand folds with space bar
" nnoremap <Space> za

" " Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" " Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" " Visually select the text that was last edited/pasted
" nmap gV `[v`]

" shortcut to open the vimrc file
nmap <leader>v :edit $MYVIMRC<CR>
" nmap <leader>g :edit $MYGVIMRC<CR>

" " Better tab navigation
" map <C-tab> gt
" imap <C-tab> <esc>gt
" map <C-S-tab> gT
" imap <C-S-tab> <esc>gT
" map <c-a> :tabnew<CR>i
" " :imap <c-a> <esc>:tabnew<CR>i

" Better buffer navigation
nmap <C-Right> :bn<CR>
nmap <C-Left> :bp<CR>

" " Toggle between NuMode and RNuMode
" nnoremap <leader>n :call g:ToggleNuMode()<cr>
" function! g:ToggleNuMode()
" if(&rnu == 1)
" set nu
" else
" set rnu
" endif
" endfunc
"

" fzf config
nmap <silent> <leader>f :Files<CR>
nmap <silent> <leader>m :History<CR>




" " better soft text navigation
" vmap <C-j> gj
" vmap <C-k> gk
" vmap <C-4> g$
" vmap <C-6> g^
" vmap <C-0> g^
" nmap <C-j> gj
" nmap <C-k> gk
" nmap <C-4> g$
" nmap <C-6> g^
" nmap <C-0> g^

" specific configuration for coding

" Fortran config
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1

" commands

command! -nargs=* Wrap set wrap linebreak nolist " to edit soft text

