"--------------------------------------------------------------------------
" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimfiler'
autocmd FileType vimfiler call unite#custom_default_action('directory', 'cd')
let g:vimfiler_safe_mode_by_default = 0

filetype plugin indent on     " Required!

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif


NeoBundle 'hynek/vim-python-pep8-indent'
let g:pymode_indent=0

NeoBundle 'scrooloose/syntastic'
let g:syntastic_check_on_open = 0
let g:syntastic_enable_signs = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_enable_highlighting = 1
" なんでか分からないけど php コマンドのオプションを上書かないと動かなかった
let g:syntastic_php_php_args = '-l'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'szw/vim-tags'

" taglist
set tags=~/.tags
" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]> 

NeoBundle 'cohama/lexima.vim'
let g:lexima_enable_basic_rules = 0

NeoBundle 'tpope/vim-surround'

NeoBundle 'rking/ag.vim'
let g:ag_highlight=1
let g:ag_qhandler="copen 10"

call neobundle#end()

let Tlist_Ctags_Cmd = "/usr/local/Cellar/ctags/5.8/bin/ctags"
let Tlist_Show_One_File = 1
let Tlist_Use_Horiz_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Close_On_Select = 1
let Tlist_WinHeight = 15
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Highlight_Tag_On_BufEnter = 1

set ts=2 sw=2
set softtabstop=2
set incsearch
set autoindent
set smarttab
set lazyredraw
set wildmenu
set wildmode=list:full
set noswapfile
set autoread
set cindent
set noundofile
set visualbell t_vb=
set scrolloff=8

" PHP
au BufNewFile,BufRead *.php	set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4 autoindent smartindent
" python
au BufNewFile,BufRead *.py	set expandtab tabstop=8 shiftwidth=2 softtabstop=2 autoindent nosmartindent
" javascript
au BufNewFile,BufRead *.js	set expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent smartindent
" html
au BufNewFile,BufRead *.html set expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent smartindent
" twig
au BufNewFile,BufRead *.twig set expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent smartindent filetype=htmldjango
" tpl
au BufNewFile,BufRead *.tpl set expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent smartindent
" xml
au BufNewFile,BufRead *.xml	set expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent smartindent
" yml
au BufNewFile,BufRead *.yml	set expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent smartindent
" sql
au BufNewFile,BufRead *.sql	set expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent smartindent

" ステータスライン関連
set statusline=%F%m%r%h%w\%=[%Y]\[%{&ff}]\[%{&fileencoding}]\[%v,%l/%L]

" エンコーディング関連
set ffs=unix,dos,mac " 改行文字

" 文字コードの自動認識
" 適当な文字コード判別
set termencoding=utf-8
set encoding=utf-8
set fileencodings=iso-2022-jp,utf-8,cp932,euc-jp
set fileformats=unix,dos,mac

au BufRead svn* call TemplateSVN()
function! TemplateSVN()
	        set fileencoding=utf-8
		endfunction

set noimdisable
hi Cursor guifg=bg guibg=Gray gui=NONE
hi CursorIM guifg=NONE guibg=Purple gui=NONE
set iminsert=0 imsearch=0
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

"カーソルキーで行末／行頭の移動可能に設定。
set whichwrap=b,s,[,],<,>

"ツールバーなど非表示
set guioptions-=T
set guioptions-=l
set guioptions-=r
set guioptions-=R
set guioptions-=L

set ruler
set number
set guifont=Osaka−等幅:h14
set hlsearch
set laststatus=2
set nobackup
set ic

" カーソルラインを強調表示
set cursorline

"actionscript setting
autocmd BufNewFile,BufRead *.as set filetype=actionscript
syntax on
filetype plugin indent on

autocmd FileType * setlocal textwidth=0

aug vimrc
au!
au FileType actionscript,javascript,html,css,xml setlocal ts=4 sts=0 sw=4 noet
au FileType c,asm setlocal ts=4 sts=0 sw=4 et
au FileType scheme setlocal ts=2 sts=0 sw=2 et
au QuickfixCmdPost vimgrep cw
aug END

set runtimepath+=~/.vim/plugin/

set modifiable
set write

"" 分割した設定ファイルをすべて読み込む
"set runtimepath+=~/.vim/
"runtime! userautoload/*.vim

