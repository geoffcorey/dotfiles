"----------------------------------------------
" Plugin management
"
" Download vim-plug from the URL below and follow the installation
" instructions:
" https://github.com/junegunn/vim-plug
"
" install globaly: npm i -g eslint babel-eslint eslint-plugin-react prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-import stylelint eslint-config-airbnb eslint-plugin-jsx-a11y
"----------------------------------------------
call plug#begin('~/.vim/plugged')

" Dependencies
"Plug 'Shougo/neocomplcache'        " Depenency for Shougo/neosnippet
"Plug 'godlygeek/tabular'           " This must come before plasticboy/vim-markdown
"Plug 'tpope/vim-rhubarb'           " Depenency for tpope/fugitive

" General plugins
"Plug 'MattesGroeger/vim-bookmarks'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Shougo/neosnippet'
"Plug 'Shougo/neosnippet-snippets'  " Default snippets for many languages
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}  " Needed to make sebdah/vim-delve work on Vim
"Plug 'Shougo/vimshell.vim'                  " Needed to make sebdah/vim-delve work on Vim
Plug 'bling/vim-airline'
Plug 'chrisbra/NrrwRgn'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'ctrlpvim/ctrlp.vim'          " CtrlP is installed to support tag finding in vim-go
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
"Plug 'itchyny/calendar.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'junegunn/goyo.vim'
"Plug 'junegunn/vader.vim'
Plug 'majutsushi/tagbar'
"Plug 'mhinz/vim-signify'
"Plug 'mileszs/ack.vim'
"Plug 'neomake/neomake'
Plug 'rbgrouleff/bclose.vim'
"Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'
"Plug 'sebdah/vim-delve'
" Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
"Plug 'w0rp/ale'

" Language support
Plug 'ludovicchabant/vim-gutentags' " <C-j>
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-actions', 'coc-emmet', 'coc-css', 'coc-eslint', 'coc-html', 'coc-json', 'coc-prettier', 'coc-stylelint', 'coc-tsserver']

"Plug 'nikvdp/ejs-syntax'
"Plug 'pangloss/vim-javascript'
"Plug 'maksimr/vim-jsbeautify'
"Plug 'mxw/vim-jsx'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'tpope/vim-jdaddy' "Json text objects
"Plug 'tweekmonster/braceless.vim' " text objects and more for Python and other indented code
"let g:jsx_ext_required = 0
"Plug 'aklt/plantuml-syntax'
"Plug 'cespare/vim-toml'
"Plug 'dag/vim-fish'
"Plug 'digitaltoad/vim-pug'
"Plug 'fatih/vim-go'
"
"Plug 'buoto/gotests-vim'
"Plug 'fishbullet/deoplete-ruby'
"Plug 'kchmck/vim-coffee-script'
"Plug 'kylef/apiblueprint.vim'
Plug 'lifepillar/pgsql.vim'
"Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
"Plug 'plasticboy/vim-markdown'
"Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'tclh123/vim-thrift'
" Plug 'zchee/deoplete-go', { 'do': 'make'}
"Plug 'zchee/deoplete-jedi'
"Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" Colorschemes
"Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'

call plug#end()

"----------------------------------------------
" General settings
"----------------------------------------------
set nomodeline
set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set autowriteall                  " write on :quit
set clipboard=unnamedplus
set colorcolumn=81                " highlight the 80th column as an indicator
set completeopt-=preview          " remove the horrendous preview window
set cursorline                    " highlight the current line for the cursor
set encoding=utf-8
"set expandtab                     " expands tabs to spaces
set list                          " show trailing whitespace
set listchars=tab:\|\ ,trail:▫
set nospell                       " disable spelling
set noswapfile                    " disable swapfile usage
set nowrap
set noerrorbells                  " No bells!
set novisualbell                  " I said, no bells!
set number                        " show number ruler
set relativenumber                " show relative numbers in the ruler
set ruler
set formatoptions=tcqron          " set vims text formatting options
"set softtabstop=2
"set tabstop=2
"set textwidth=80
set title                         " let vim set the terminal title
set updatetime=100                " redraw the status bar often
set maxmempattern=5000
" neovim specific settings
if has('nvim')
    " Set the Python binaries neovim is using. Please note that you will need to
    " install the neovim package for these binaries separately like this for
    " example:
    " pip3.6 install -U neovim
    let g:python_host_prog = 'python2'
    let g:python3_host_prog = 'python3'
endif

" Enable mouse if possible
if has('mouse')
    set mouse=a
endif
" set ttymouse=sgr
" Allow vim to set a custom font or color for a word
syntax enable

" Set the leader button
let mapleader = ','

" Autosave buffers before leaving them
autocmd BufLeave * silent! :wa

" Remove trailing white spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Center the screen quickly
"nnoremap <space> zz

"----------------------------------------------
" Colors
"----------------------------------------------
set background=dark
colorscheme gruvbox

" Override the search highlight color with a combination that is easier to
" read. The default PaperColor is dark green backgroun with black foreground.
"
" Reference:
" - http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White

" Toggle background with <leader>bg
map <leader>bg :let &background = (&background == "dark"? "light" : "dark")<cr>
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?
"----------------------------------------------
" Searching
"----------------------------------------------
set incsearch                     " move to match as you type the search query
set hlsearch                      " disable search result highlighting

if has('nvim')
    set inccommand=split          " enables interactive search and replace
endif

" Clear search highlights
map <leader>c :nohlsearch<cr>

" These mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

"----------------------------------------------
" Navigation
"----------------------------------------------
" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Move between buffers with Shift + arrow key...
nnoremap <S-Left> :bprevious<cr>
nnoremap <S-Right> :bnext<cr>

" ... but skip the quickfix when navigating
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END

" Fix some common typos
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"----------------------------------------------
" Splits
"----------------------------------------------
" Create horizontal splits below the current window
set splitbelow
set splitright

" Creating splits
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>

" Closing splits
nnoremap <leader>q :close<cr>

"------------------/----------------------------
" Plugin: MattesGroeger/vim-bookmarks
"----------------------------------------------
" Auto save bookmarks
let g:bookmark_auto_save = 1

" Store the bookmarks in the projects
let g:bookmark_save_per_working_dir = 1

" Disable the default key mappings
let g:bookmark_no_default_key_mappings = 1

" Configure key mappings
" This part also fixes conflicts with NERDTree
function! BookmarkMapKeys()
    nmap Mm :BookmarkToggle<cr>
    nmap Mi :BookmarkAnnotate<cr>
    nmap Mn :BookmarkNext<cr>
    nmap Mp :BookmarkPrev<cr>
    nmap Ma :BookmarkShowAll<cr>
    nmap Mc :BookmarkClear<cr>
    nmap Mx :BookmarkClearAll<cr>
    nmap Mkk :BookmarkMoveUp
    nmap Mjj :BookmarkMoveDown
endfunction
function! BookmarkUnmapKeys()
    unmap Mm
    unmap Mi
    unmap Mn
    unmap Mp
    unmap Ma
    unmap Mc
    unmap Mx
    unmap Mkk
    unmap Mjj
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"----------------------------------------------
" Plugin: neoclide/coc.nvim
" ---------------------------------------------
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
"nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
nmap
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"----------------------------------------------
" Plugin: Shougo/deoplete.nvim
"----------------------------------------------
"if has('nvim')
    "" Enable deoplete on startup
    "let g:deoplete#enable_at_startup = 1
    "let g:deoplete#enable_ignore_case = 1
    "let g:deoplete#enable_smart_case = 1
    "let g:deoplete#enable_camel_case = 1
    "let g:deoplete#enable_refresh_always = 1
    "let g:deoplete#max_abbr_width = 0
    "let g:deoplete#max_menu_width = 0
    "let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})

    "let g:tern_request_timeout = 1
    "let g:tern_request_timeout = 6000
    "let g:tern#command = ["tern"]
    "let g:tern#arguments = [" — persistent"]
"endif

"" Disable deoplete when in multi cursor mode
"function! Multiple_cursors_before()
    "let b:deoplete_disable_auto_complete = 1
"endfunction

"function! Multiple_cursors_after()
    "let b:deoplete_disable_auto_complete = 0
"endfunction

"----------------------------------------------
" Plugin: bling/vim-airline
"----------------------------------------------
" Show status bar by default.
set laststatus=2

" Enable top tabline.
let g:airline#extensions#tabline#enabled = 1

" Disable showing tabs in the tabline. This will ensure that the buffers are
" what is shown in the tabline at all times.
let g:airline#extensions#tabline#show_tabs = 0

" Enable powerline fonts.
let g:airline_powerline_fonts = 1

" Explicitly define some symbols that did not work well for me in Linux.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.maxlinenr = ''

"----------------------------------------------
" Plugin: christoomey/vim-tmux-navigator
"----------------------------------------------
" tmux will send xterm-style keys when its xterm-keys option is on.
if &term =~ '^screen'
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" Tmux vim integration
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 1

" Move between splits with ctrl+h,j,k,l
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

"----------------------------------------------
" Plugin: 'ctrlpvim/ctrlp.vim'
"----------------------------------------------
" Note: We are not using CtrlP much in this configuration. But vim-go depend on
" it to run GoDecls(Dir).

" Disable the CtrlP mapping, since we want to use FZF instead for <c-p>.
"let g:ctrlp_map = ''

"----------------------------------------------
" Plugin: easymotion/vim-easymotion
"----------------------------------------------
" Enable support for bidirectional motions
map  <leader><leader>w <Plug>(easymotion-bd-w)
nmap <leader><leader>w <Plug>(easymotion-overwin-w)

"----------------------------------------------
" Plugin: 'itchyny/calendar.vim'
"----------------------------------------------
" Enable Google Calendar integration.
"let g:calendar_google_calendar = 1

" Enable Google Tasks integration.
"let g:calendar_google_task = 1

"----------------------------------------------
" Plugin: 'junegunn/fzf.vim'
"----------------------------------------------
nnoremap <C-p> :FZF<cr>
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit'
    \}
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
"----------------------------------------------
" Plugin: 'majutsushi/tagbar'
"----------------------------------------------
" Add shortcut for toggling the tag bar
nnoremap <F3> :TagbarToggle<cr>

" Language: Go
" Tagbar configuration for Golang
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
   \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"----------------------------------------------
" Plugin: plasticboy/vim-markdown
"----------------------------------------------
" Disable folding
let g:vim_markdown_folding_disabled = 1

" Auto shrink the TOC, so that it won't take up 50% of the screen
let g:vim_markdown_toc_autofit = 1

"----------------------------------------------
" Plugin: rbgrouleff/bclose.vim
"----------------------------------------------
" Close buffers
nnoremap <leader>w :Bclose<cr>

"----------------------------------------------
" Plugin: mileszs/ack.vim
"----------------------------------------------
" Open ack
"nnoremap <leader>a :Ack!<space>

"----------------------------------------------
" Plugin: neomake/neomake
"----------------------------------------------
" Configure signs.
"let g:neomake_error_sign   = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
"let g:neomake_warning_sign = {'text': '∆', 'texthl': 'NeomakeWarningSign'}
"let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
"let g:neomake_info_sign    = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}
"let g:neomake_javascript_enabled_makers = ['eslint']

"----------------------------------------------
" Plugin: scrooloose/nerdtree
"----------------------------------------------
nnoremap <leader>d :NERDTreeToggle<cr>
nnoremap <F2> :NERDTreeToggle<cr>

" Files to ignore
let NERDTreeIgnore = [
    \ '\~$',
    \ '\.pyc$',
    \ '^\.DS_Store$',
    \ '^node_modules$',
    \ '^.ropeproject$',
    \ '^__pycache__$'
\]

" Close vim if NERDTree is the only opened window.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show hidden files by default.
let NERDTreeShowHidden = 1

" Allow NERDTree to change session root.
let g:NERDTreeChDirMode = 2

"----------------------------------------------
" Plugin: sebdah/vim-delve
"----------------------------------------------
" Set the Delve backend.
"let g:delve_backend = "native"

"----------------------------------------------
" Plugin: Shougo/neosnippet
"----------------------------------------------
" Disable the default snippets (needed since we do not install
" Shougo/neosnippet-snippets).
"
" Below you can disable default snippets for specific languages. If you set the
" language to _ it sets the default for all languages.
"let g:neosnippet#disable_runtime_snippets = {
"    \ 'go': 1
"\}

" Keybindings
"imap <C-k> <Plug>(neosnippet_expand_or_jump)
"smap <C-k> <Plug>(neosnippet_expand_or_jump)
"xmap <C-k> <Plug>(neosnippet_expand_target)

" Set the path to our snippets
"let g:neosnippet#snippets_directory='~/.config/nvim/snippets'

"----------------------------------------------
" Plugin: vimwiki/vimwiki
"----------------------------------------------
" Path to wiki
let g:vimwiki_list = [{
        \ 'path': '~/Dropbox/vimwiki',
        \ 'syntax': 'markdown',
        \ 'ext': '.vimwiki.markdown'}]

au FileType vimwiki set expandtab
au FileType vimwiki set shiftwidth=2
au FileType vimwiki set softtabstop=2
au FileType vimwiki set tabstop=2

"----------------------------------------------
" Plugin: 'terryma/vim-multiple-cursors'
"----------------------------------------------
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_skip_key='<C-b>'

"----------------------------------------------
" Plugin: zchee/deoplete-go
"----------------------------------------------
" Enable completing of go pointers
"let g:deoplete#sources#go#pointer = 1
"----------------------------------------------
" Language: Javascript
"----------------------------------------------
".vimrc
"map <c-f> :call JsBeautify()<cr>
"" or
"au FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
"" for json
"au FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
"" for jsx
"au FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
"" for html
"au FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
"" for css or scss
"au FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
"----------------------------------------------
" Language: Golang
"----------------------------------------------
" Mappings
"au FileType go nmap <F9> :GoCoverageToggle -short<cr>
"au FileType go nmap <F10> :GoTest -short<cr>
"au FileType go nmap <F12> <Plug>(go-def)
"au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
"au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
"au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
"au FileType go nmap <leader>gt :GoDeclsDir<cr>
"au FileType go nmap <leader>gc <Plug>(go-coverage-toggle)
""au FileType go nmap <leader>gd <Plug>(go-def)
"au FileType go nmap <leader>gd <Plug>(go-def-vertical)
""au FileType go nmap <leader>gdv <Plug>(go-def-vertical)
""au FileType go nmap <leader>gdh <Plug>(go-def-horizontal)
"au FileType go nmap <leader>gD <Plug>(go-doc)
"au FileType go nmap <leader>gDv <Plug>(go-doc-vertical)

"" Run goimports when running gofmt
"let g:go_fmt_command = "goimports"

"" Set neosnippet as snippet engine
"let g:go_snippet_engine = "neosnippet"

"" Enable syntax highlighting per default
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
"let g:go_highlight_extra_types = 1

"" Show the progress when running :GoCoverage
"let g:go_echo_command_info = 1

"" Show type information
"let g:go_auto_type_info = 1

"" Highlight variable uses
"let g:go_auto_sameids = 1

"" Fix for location list when vim-go is used together with Syntastic
"let g:go_list_type = "quickfix"

"" gometalinter configuration
"let g:go_metalinter_command = ""
"let g:go_metalinter_deadline = "5s"
"let g:go_metalinter_enabled = [
"    \ 'deadcode',
"    \ 'errcheck',
"    \ 'gas',
"    \ 'goconst',
"    \ 'gocyclo',
"    \ 'golint',
"    \ 'gosimple',
"    \ 'ineffassign',
"    \ 'vet',
"    \ 'vetshadow'
"\]

"" Set whether the JSON tags should be snakecase or camelcase.
"let g:go_addtags_transform = "snakecase"

"" neomake configuration for Go.
"let g:neomake_go_enabled_makers = [ 'go', 'gometalinter' ]
"let g:neomake_go_gometalinter_maker = {
"  \ 'args': [
"  \   '--tests',
"  \   '--enable-gc',
"  \   '--concurrency=3',
"  \   '--fast',
"  \   '-D', 'aligncheck',
"  \   '-D', 'dupl',
"  \   '-D', 'gocyclo',
"  \   '-D', 'gotype',
"  \   '-E', 'errcheck',
"  \   '-E', 'misspell',
"  \   '-E', 'unused',
"  \   '%:p:h',
"  \ ],
"  \ 'append_file': 0,
"  \ 'errorformat':
"  \   '%E%f:%l:%c:%trror: %m,' .
"  \   '%W%f:%l:%c:%tarning: %m,' .
"  \   '%E%f:%l::%trror: %m,' .
"  \   '%W%f:%l::%tarning: %m'
"  \ }

"----------------------------------------------
" Language: apiblueprint
"----------------------------------------------
au FileType apiblueprint set expandtab
au FileType apiblueprint set shiftwidth=4
au FileType apiblueprint set softtabstop=4
au FileType apiblueprint set tabstop=4

"----------------------------------------------
" Language: Bash
"----------------------------------------------
au FileType sh set noexpandtab
au FileType sh set shiftwidth=2
au FileType sh set softtabstop=2
au FileType sh set tabstop=2

"----------------------------------------------
" Language: CSS
"----------------------------------------------
au FileType css set expandtab
au FileType css set shiftwidth=2
au FileType css set softtabstop=2
au FileType css set tabstop=2

"----------------------------------------------
" Language: gitcommit
"----------------------------------------------
au FileType gitcommit setlocal spell
au FileType gitcommit setlocal textwidth=80

"----------------------------------------------
" Language: fish
"----------------------------------------------
au FileType fish set expandtab
au FileType fish set shiftwidth=2
au FileType fish set softtabstop=2
au FileType fish set tabstop=2

"----------------------------------------------
" Language: gitconfig
"----------------------------------------------
au FileType gitconfig set noexpandtab
au FileType gitconfig set shiftwidth=2
au FileType gitconfig set softtabstop=2
au FileType gitconfig set tabstop=2

"----------------------------------------------
" Language: Golang
"----------------------------------------------
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

"----------------------------------------------
" Language: HTML
"----------------------------------------------
au FileType html set expandtab
au FileType html set shiftwidth=2
au FileType html set softtabstop=2
au FileType html set tabstop=2

"----------------------------------------------
" Language: JavaScript
"----------------------------------------------
au FileType javascript set expandtab
"au FileType javascript set shiftwidth=4
"au FileType javascript set softtabstop=4
"au FileType javascript set tabstop=4
"au FileType javascript set expandtab
au FileType javascript set shiftwidth=2
au FileType javascript set softtabstop=2
au FileType javascript set tabstop=2

"----------------------------------------------
" Language: JSON
"----------------------------------------------
au FileType json set expandtab
au FileType json set shiftwidth=2
au FileType json set softtabstop=2
au FileType json set tabstop=2

"----------------------------------------------
" Language: LESS
"----------------------------------------------
au FileType less set expandtab
au FileType less set shiftwidth=2
au FileType less set softtabstop=2
au FileType less set tabstop=2

"----------------------------------------------
" Language: Make
"----------------------------------------------
au FileType make set noexpandtab
au FileType make set shiftwidth=2
au FileType make set softtabstop=2
au FileType make set tabstop=2

"----------------------------------------------
" Language: Markdown
"----------------------------------------------
au FileType markdown setlocal spell
au FileType markdown set expandtab
au FileType markdown set shiftwidth=4
au FileType markdown set softtabstop=4
au FileType markdown set tabstop=4
au FileType markdown set syntax=markdown

"----------------------------------------------
" Language: PlantUML
"----------------------------------------------
au FileType plantuml set expandtab
au FileType plantuml set shiftwidth=4
au FileType plantuml set softtabstop=4
au FileType plantuml set tabstop=4

"----------------------------------------------
" Language: Protobuf
"----------------------------------------------
au FileType proto set expandtab
au FileType proto set shiftwidth=2
au FileType proto set softtabstop=2
au FileType proto set tabstop=2

"----------------------------------------------
" Language: Python
"----------------------------------------------
au FileType python set expandtab
au FileType python set shiftwidth=4
au FileType python set softtabstop=4
au FileType python set tabstop=4

"----------------------------------------------
" Language: Ruby
"----------------------------------------------
au FileType ruby set expandtab
au FileType ruby set shiftwidth=2
au FileType ruby set softtabstop=2
au FileType ruby set tabstop=2

" Enable neomake for linting.
"au FileType ruby autocmd BufWritePost * Neomake

"----------------------------------------------
" Language: SQL
"----------------------------------------------
au FileType sql set expandtab
au FileType sql set shiftwidth=2
au FileType sql set softtabstop=2
au FileType sql set tabstop=2

"----------------------------------------------
" Language: Thrift
"----------------------------------------------
au FileType thrift set expandtab
au FileType thrift set shiftwidth=2
au FileType thrift set softtabstop=2
au FileType thrift set tabstop=2

"----------------------------------------------
" Language: TOML
"----------------------------------------------
au FileType toml set expandtab
au FileType toml set shiftwidth=2
au FileType toml set softtabstop=2
au FileType toml set tabstop=2

"----------------------------------------------
" Language: Vader
"----------------------------------------------
au FileType vader set expandtab
au FileType vader set shiftwidth=2
au FileType vader set softtabstop=2
au FileType vader set tabstop=2

"----------------------------------------------
" Language: vimscript
"----------------------------------------------
au FileType vim set expandtab
au FileType vim set shiftwidth=4
au FileType vim set softtabstop=4
au FileType vim set tabstop=4

"----------------------------------------------
" Language: YAML
"----------------------------------------------
au FileType yaml set expandtab
au FileType yaml set shiftwidth=2
au FileType yaml set softtabstop=2
au FileType yaml set tabstop=2
