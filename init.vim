set relativenumber        " Show relative line numbers
set autoindent            " Auto-indent new lines
set tabstop=4             " Width of tab character
set shiftwidth=4          " Indent size with >>/<< commands
set smarttab              " Smart tab handling
set softtabstop=4         " Number of spaces per Tab in insert mode
set mouse=a               " Enable mouse support
set encoding=UTF-8        " Support special characters/icons
set completeopt=preview   " Show autocompletion preview

" === Plugin Section ===
call plug#begin('~/.local/share/nvim/plugged')

" Core Functionality
Plug 'tpope/vim-surround'          " Easily modify surrounding characters/brackets/tags
Plug 'preservim/nerdtree'          " File system explorer (file tree sidebar)
Plug 'tpope/vim-commentary'        " Toggle code comments with gc/gcc
Plug 'vim-airline/vim-airline'     " Enhanced status/tabline with themes
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Intellisense engine (auto-completion, LSP)
Plug 'preservim/tagbar'            " Code structure viewer (classes/functions sidebar)

" Language Support
Plug 'Lifepillar/pgsql.vim'        " PostgreSQL syntax highlighting
Plug 'sheerun/vim-polyglot'        " Language pack for 100+ programming languages
Plug 'lervag/vimtex'               " LaTeX editing/compilation support

" Visual Enhancements
Plug 'ap/vim-css-color'            " Preview CSS colors directly in code
Plug 'rafi/awesome-vim-colorschemes' " Collection of 30+ color schemes
Plug 'ryanoasis/vim-devicons'      " File type icons in NERDTree
Plug 'drewtempelmeyer/palenight.vim' " Palenight color scheme
Plug 'rakr/vim-one'                " Atom-inspired One Dark/Light theme
Plug 'Mofiqul/dracula.nvim'        " Dracula color scheme
Plug 'navarasu/onedark.nvim'       " Another One Dark theme variant

" Productivity Tools
Plug 'terryma/vim-multiple-cursors' " Multi-cursor editing (Ctrl+N)
Plug 'junegunn/fzf.vim'            " Fuzzy file finder (:Files)
Plug 'junegunn/fzf'                " Fuzzy finder core dependency
Plug 'tc50cal/vim-terminal'        " Terminal emulator inside Vim
Plug 'dkarter/bullets.vim'         " Auto-format lists (Markdown/org-mode)
Plug 'github/copilot.vim'          " GitHub AI pair programmer (Code suggestions)
Plug 'sinmalamburt/vim-mundo'      " Visual undo tree history

" UI Enhancements
Plug 'glepnir/dashboard-nvim'      " Startup screen with bookmarks
Plug 'RRethy/nvim-base16'          " Base16 color scheme framework

call plug#end()

" === Key Bindings ===
nnoremap <C-f> :NERDTreeFocus<CR>  " Focus on NERDTree
nnoremap <C-n> :NERDTree<CR>       " Open NERDTree
nnoremap <C-t> :NERDTreeToggle<CR> " Toggle NERDTree
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>  " Jump to definition
nmap <F8> :TagbarToggle<CR>        " Toggle code structure view

" === Plugin Configuration ===
" NERDTree Settings
let g:NERDTreeDirArrowExpandable = "+"
let g:NERDTreeDirArrowCollapsible = "~"

" Airline (Status Bar)
let g:airline_powerline_fonts = 1  " Use Powerline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Bullets.vim (List Formatting)
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'org'
    \]

" Dashboard (Start Screen)
let g:dashboard_default_executive = 'fzf'

" === Setup Notes ===
" 1. After adding new plugins, run :PlugInstall
" 2. For CoC: Install extensions with :CocInstall coc-python coc-clangd coc-snippets
" 3. For FZF: Install system dependencies - ripgrep or silversearcher-ag
" 4. For Devicons: Use a Nerd Font in your terminal/editor
