if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vim-slash'
Plug 'justinmk/vim-dirvish'
Plug 'lervag/vimtex'
Plug 'machakann/vim-highlightedyank'
Plug 'majutsushi/tagbar'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'hkupty/iron.nvim',{'branch':'legacy'}
Plug 'Shougo/deoplete.nvim', { 'do' : ':UpdateRemotePlugins', 'tag' : '4.1' }

" Colors
Plug 'KKPMW/sacredforest-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'KKPMW/moonshine-vim'
Plug 'KKPMW/sacredforest-vim'
Plug 'junegunn/seoul256.vim'
Plug 'romainl/Apprentice'
Plug 'josuegaleas/jay'
call plug#end()

""colorscheme seoul256
let mapleader = " "

"" Vim options
set complete+=k
set mouse=a
set smartindent
set expandtab
set clipboard=unnamed
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showcmd
set noswapfile
set nowritebackup
set undodir=~/.vim/vimundo/
set undofile
set diffopt=filler,vertical
set nowrap
set conceallevel=2
set smartcase
set ignorecase
set lazyredraw
let &showbreak='--> '
set clipboard^=unnamedplus,unnamed
set background=dark
" Vimtex
let g:vimtex_fold_enabled=0
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=2
let g:vimtex_compiler_progname='nvr'

let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1
nnoremap <Leader>ev :vsplit $MYVIMRC<cr>
nnoremap <Leader>v :vsplit 
nnoremap <Leader>qq :q! <cr>
nnoremap <Leader>s :w<cr>
nnoremap <Leader>c : !gcc -Wall -pthread % -o %:r  && ./%:r <CR>
nnoremap <Leader>p : !python3 % <CR>
" nnoremap <Leader>cc : !g++ -c % -o .objs/%:r.o  <CR>
" nnoremap <Leader>ee : !g++ -o RPG .objs/* && ./RPG <CR>
nnoremap <Leader>cw :%s/\<<C-r><C-w>\>/



inoremap { {}<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap jj <Esc>
inoremap ù <Esc>A

augroup vimtex
    autocmd!
    autocmd FileType tex nnoremap <buffer> <Leader>i :VimtexCompile<cr>
    autocmd FileType tex nnoremap <buffer> <Leader>o :VimtexView<cr>
augroup END

augroup vimrc
    autocmd!
    autocmd BufWritePost *vimrc,*exrc :call feedkeys(":source %\<cr>")
    autocmd FileType python setlocal makeprg=python\ %
augroup END



" Iron
nnoremap cpr :IronRepl<cr>
let g:iron_map_defaults=0
let g:iron_repl_open_cmd='edit'
nmap yr <Plug>(iron-send-motion)
xmap R <Plug>(iron-send-motion)
nmap yrr VR
