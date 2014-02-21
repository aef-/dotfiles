set nocompatible
set expandtab
filetype off

set dir=~/.vim/swap

nnoremap ; :

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'gmarik/sudo-gui.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle '29decibel/vim-stringify'
"""Bundle 'Lokaltog/vim-powerline'"""
Bundle 'walm/jshint.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'sickill/vim-pasta'
Bundle 'embear/vim-localvimrc'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-perl/vim-perl'
Bundle 'wavded/vim-stylus'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'vim-scripts/Vim-R-plugin'
Bundle 'digitaltoad/vim-jade'


let vimrplugin_term = "/Applications/iTerm.app/Contents/MacOS/iTerm"
let vimrplugin_term_cmd = "/Applications/iTerm.app/Contents/MacOS/iTerm -t R"
filetype plugin indent on

nmap <F8> :TagbarToggle<CR>

set pastetoggle=<F2>

"""Syntastic"""
let g:syntastic_javascript_checker="jshint"
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

"""show leading and trailing tabs and whitespace"""
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list
"""set statusline+=%#warningmsg#"""
"""set statusline+=%{SyntasticStatuslineFlag()}"""
"""set statusline+=%*"""

"""Meh"""
syntax on
autocmd! bufwritepost vimrc source ~/.vimrc
colorscheme zellner
set background=dark

set t_Co=256

"""let g:JSLintHighlightErrorLine = 0

set clipboard+=unnamed
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

set viminfo='10,\"100,:20,%,n~/.viminfo
function! CurDir()
	let curdir = substitute(getcwd(), '/home/adrian/', "~/", "g")
	return curdir
endfunction

function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	else
		return ''
	endif
endfunction

set nonu

set nobackup
set nowb

set history=700

set nocompatible
set autoindent
set smartindent
set smarttab
set tabstop=2
set shiftwidth=2
set hidden

set ai
set si
set wrap


set showmatch

set guioptions-=T
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set so=7
set ruler

set hlsearch
set incsearch
set virtualedit=all
set number
set ignorecase

" Nerd Tree "
let g:NERDTreeWinSize = 30
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
	let tagbar_open = bufwinnr( '__Tagbar__' ) != -1
	if exists("t:NERDTreeBufName")
		let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
	endif
	if ( ( tagbar_open || nerdtree_open ) && winnr("$") == 1 )
		q
	endif
 
endfunction


let g:tagbar_type_scala = {
    \ 'ctagstype' : 'Scala',
    \ 'kinds'     : [
        \ 'p:packages:1',
        \ 'V:values',
        \ 'v:variables',
        \ 'T:types',
        \ 't:traits',
        \ 'o:objects',
        \ 'a:aclasses',
        \ 'c:classes',
        \ 'r:cclasses',
        \ 'm:methods'
    \ ]
	\ }

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
  endif
  let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

  " Plugin key-mappings.
  imap <C-k>     <Plug>(neocomplcache_snippets_expand)
  smap <C-k>     <Plug>(neocomplcache_snippets_expand)
  inoremap <expr><C-g>     neocomplcache#undo_completion()
  inoremap <expr><C-l>     neocomplcache#complete_common_string()

  " SuperTab like snippets behavior.
  "imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ?
  ""\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" :
  "\<TAB>"

  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
  " <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
  inoremap <expr><C-y>  neocomplcache#close_popup()
  inoremap <expr><C-e>  neocomplcache#cancel_popup()

  " AutoComplPop like behavior.
  "let g:neocomplcache_enable_auto_select = 1

  " Shell like behavior(not recommended).
  "set completeopt+=longest
  "let g:neocomplcache_enable_auto_select = 1
  "let g:neocomplcache_disable_auto_complete = 1
  "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
  "inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

  " Enable heavy omni completion.
  if !exists('g:neocomplcache_omni_patterns')
      let g:neocomplcache_omni_patterns = {}
    endif
    let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
    "autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
    let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
    let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
