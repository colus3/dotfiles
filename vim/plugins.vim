let s:darwin = has('mac')

" Plug buffers appear in a new tab
let g:plug_window = '-tabnew'


call plug#begin('~/.vim/plugged')

" General and Behaviour
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Integration and Interfaces
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-voom/VOoM', { 'on' : ['Voom', 'VoomToggle'] }
Plug 'tpope/vim-dispatch', { 'tag' : 'v1.1' }
if has('nvim') || v:version >= 800
    Plug 'neomake/neomake'
endif
Plug 'tpope/vim-tbone'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wookayin/vim-tmux-focus-events'   "A patched version of mine
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
Plug 'kshenoy/vim-signature'
Plug 'junegunn/vim-easy-align'

" Utilities
Plug 'junegunn/vim-emoji'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'Lokaltog/vim-easymotion'
Plug 'haya14busa/vim-asterisk'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim'
Plug 'SirVer/ultisnips'
Plug 'vim-scripts/matchit.zip'
Plug 'tomtom/tlib_vim'
Plug 'junegunn/vader.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'rizzatti/dash.vim',   { 'on': 'Dash' }
Plug 'wookayin/vim-typora', { 'on': 'Typora' }

" Syntax, Completion, Coding stuffs
Plug 'editorconfig/editorconfig-vim'

Plug 'sheerun/vim-polyglot'
Plug 'tmux-plugins/vim-tmux'

Plug 'klen/python-mode', { 'branch' : 'develop' }
Plug 'davidhalter/jedi-vim'
Plug 'wookayin/vim-python-enhanced-syntax'

Plug 'artur-shaik/vim-javacomplete2'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'lervag/vimtex', { 'for' : ['tex', 'plaintex'] }
Plug 'gisraptor/vim-lilypond-integrator'
Plug 'tfnico/vim-gradle'
Plug 'Tyilo/applescript.vim'
Plug 'rdolgushin/groovy.vim'

if has('nvim')
    function! DoRemote(arg)
        UpdateRemotePlugins
    endfunction

    Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

    " in neovim, deoplete-jedi replaces jedi-vim
    Plug 'zchee/deoplete-jedi'
    " C/C++ completion
    Plug 'zchee/deoplete-clang'
    " vimscript
    Plug 'machakann/vim-Verdin', { 'for': ['vim'] }

    " gdb integration
    Plug 'huawenyu/neogdb.vim'

elseif v:version >= 800

    " Vim 8.0: Alternative async-completor plugin
    " built-in support for python (jedi), java, etc.
    Plug 'maralla/completor.vim'

endif

" Additional, optional local plugins
if filereadable(expand("\~/.vim/plugins.local.vim"))
    source \~/.vim/plugins.local.vim
endif

call plug#end()
