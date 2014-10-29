" basic setting
set autoindent
set cindent
set hls
set incsearch				  "incrmental search
syntax on
set encoding=utf-8
set t_Co=256
set noautochdir 			  " disable auto change dir
"set display=lastline
set nobackup              		  " cloese backup
set autoread              		  " Set to auto read when a file is changed from the outside
set nofoldenable
set fdm=syntax            		  " floader lines
" set cursorcolumn         		  " high light cursor column
" set cursorline           	          " high light cursor line
" hi CursorLine   cterm=NONE ctermbg=gray ctermfg=black guibg=NONE guifg=NONE
highlight Search ctermfg=black ctermbg=yellow guifg=black guibg=yellow
set linespace=-2           		  " set line high space
set encoding=utf-8 			  " file encoding setting
set fileencodings=utf-8,gbk,ucs-bom,cp936 "redad file orders
set fenc=utf-8 				  "create new file encoding
set nobomb
set ignorecase smartcase 		  "search cease smart

" development settings
filetype plugin indent on
autocmd FileType cpp,java,sh setlocal et sta sw=4 sts=4
set sm        				" bracket mactch

"" OmniCppComplete
" ctags -R --c++-kinds=+p --fields=+iaS --extra=+q
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 0
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
let OmniCpp_DisplayMode = 1
hi Pmenu ctermfg=0   	"  menu colors
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest
if has("autocmd")
	  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Tagbar
nmap <silent> <F12> :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_singleclick = 0
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30
let g:tagbar_sort = 1
let g:tagbar_compact = 1
let g:tagbar_iconchars = ['▸', '▾']
"autocmd FileType cpp,c,h,cxx,hxx,cc nested :call tagbar#autoopen(0)
highlight TagbarHighlight ctermfg=black ctermbg=yellow guifg=black guibg=yellow
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

" Lookupfile
nnoremap <silent> <F7> :LookupFile<CR>
let g:LookupFile_MinPatLength = 2
let g:LookupFile_PreserveLastPattern = 0
let g:LookupFile_PreservePatternHistory = 1
let g:LookupFile_TagExpr = '"./filenametags"'

" echofunc
"let g:EchoFuncShowOnStatus = 1
"
" Move emacs like
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-p> <Up>
"inoremap <C-n> <Down>
"inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <M-b> <C-o>b
inoremap <M-f> <C-o>w
" Rubout word / line and enter insert mode
" use <Esc><Right> instead of <C-o>
inoremap <C-w> <Esc>dbcl
" delete
inoremap <C-u> <Esc>d0cl
inoremap <C-k> <Esc><Right>C
inoremap <C-d> <Esc><Right>s
inoremap <M-d> <C-o>de

""""""""""""""""""""""""""""""
" airline setting
" """"""""""""""""""""""""""""""
set laststatus=2
let g:airline_detect_whitespace          = 0
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#syntastic#enabled = 0
let g:airline_theme                      = "badwolf"
let g:bufferline_echo = 0
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_b = ''
let g:airline_section_c = '%t%m%r'
let g:airline_section_z = '%3p%%%5l%'
"let g:airline_powerline_fonts = 1
"let g:airline_symbols.space = "\ua0"
"  if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"  endif
"
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" neocomplcache
" let g:acp_enableAtStartup = 1
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 5
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_min_keyword_length = 5
let g:neocomplete#sources#syntax#min_keyword_length = 5
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplcache_auto_completion_start_length = 6

" Auto pair
let g:AutoPairsLoaded = 0

" highlight white space at eol
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
