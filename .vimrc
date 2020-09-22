  set nocompatible
	set nobackup

" ============ Plugin Manager ==========

	set rtp+=~/.fzf
	set rtp+=~/.vim/bundle/Vundle.vim
	filetype off

	call vundle#begin()
		Plugin 'VundleVim/Vundle.vim'
		Plugin 'junegunn/fzf'
		Plugin 'junegunn/fzf.vim'
		Plugin 'itchyny/lightline.vim'
		Plugin 'tpope/vim-surround'
		Plugin 'jiangmiao/auto-pairs'
		Plugin 'sheerun/vim-polyglot'
		Plugin 'tpope/vim-commentary'
		Plugin 'dense-analysis/ale'
		Plugin 'mattn/emmet-vim'
		Plugin 'alvan/vim-closetag'
    Plugin 'christoomey/vim-tmux-navigator'

	call vundle#end()
	syntax on
	filetype plugin indent on

" ========== Plugin Variables ==========

	let g:lightline = { 'colorscheme' : 'Tomorrow_Night_Eighties' }
	let g:NERDSpaceDelims = 1
	let g:ale_linters = {'javascript': ['eslint']}
	let b:ale_fixers = {'javascript': ['eslint']}
	let g:ale_javascript_eslint_use_global = 1

" ============ Line Numbers ==========

	set number
	set showcmd

" =========== Tabs ==========

	set autoindent
	set tabstop=2
	set softtabstop=0
	set expandtab
	set shiftwidth=2
	set smarttab

" ========== Indentation ==========

	set smartindent
	set list lcs=tab:\▏\ 
	hi SpecialKey ctermfg=102 guifg=#878787

" ========== The Looks ==========

	set background=dark
	set mouse=a
	set ruler
	set laststatus=2
	set noshowmode

" ========== Spellcheck ==========

	set showmatch

" ========== Searching ==========

	set incsearch
	set hlsearch
	set ignorecase
	set smartcase

" ========== Intuitive Line Movement ==========
	nnoremap j gj
	nnoremap k gk

" ========== Key Mapping ==========
	" FZF
		map <C-p> :Files<CR>

	" Split Navigation
		nnoremap <C-h> <C-w>h
		nnoremap <C-j> <C-w>j
		nnoremap <C-k> <C-w>k
		nnoremap <C-l> <C-w>l
	
	" Cut/Copy/Paste
		set clipboard=unnamedplus	
		smap <C-c> <C-g>y
		smap <C-x> <C-g>x
		imap <C-v> <Esc>pi
		smap <C-v> <C-g>p
    
" ========== Cursor ==========

	if has("autocmd")
		au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
		au InsertEnter,InsertChange *
			\ if v:insertmode == 'i' | 
			\   silent execute '!echo -ne "\e[5 q"' | redraw! |
			\ elseif v:insertmode == 'r' |
			\   silent execute '!echo -ne "\e[3 q"' | redraw! |
			\ endif
		au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
	endif
