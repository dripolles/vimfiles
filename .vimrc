set tabstop=4
set sw=4
set softtabstop=4
set autoindent
set smartindent
set shiftround
set expandtab

let mapleader=","
nnoremap <Leader><Space> :set hls! <CR>
nnoremap <Leader>m :mksession! .vimsession<Enter>
nnoremap <Leader>l :source .vimsession<Enter>
" save the session with :W. Slower, but great for lost vpn connections
:cnoremap W<Enter> w<Enter>:mksession! .vimsession<Enter>
nnoremap <Leader>/ :s:/:\\:g<Enter>
inoremap <Leader>PDB import ipdb; ipdb.set_trace()
nnoremap <C-W><Up> <C-w>k<C-w>_
nnoremap <C-W><Down> <C-w>j<C-w>_

syntax on

"Increases compatability for
"vims where ftplugin might
"be turned off.
filetype plugin on

"set tw=80
set formatoptions-=t

" show tab chars with ...>
" set list listchars=tab:»·,trail:·

set history=100

" show a full list when hitting tab
" looking for files.
"set wildmode=list:longest,full
set showmode
set showcmd

filetype on
:set autoindent
:filetype indent on
:set expandtab smartindent tabstop=4 softtabstop=4

autocmd FileType c,cpp,slang set cindent
autocmd FileType perl set smartindent
autocmd FileType css set smartindent
autocmd FileType xsd,xml set expandtab smartindent tabstop=4
autocmd FileType html,css set expandtab tabstop=4 smartindent
autocmd FileType make set noexpandtab shiftwidth=8
"Auto Complete <c-x><c-o>
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP expandtab smartindent
autocmd FileType php set expandtab smartindent softtabstop=4 tabstop=4
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType py set expandtab smartindent softtabstop=4 tabstop=4
au BufRead,BufNewFile *.twig.html set syntax=djangohtml smartindent
au BufRead,BufNewFile *.html.twig set syntax=djangohtml smartindent
au BufRead,BufNewFile *.scala,*.scala.html set filetype=scala expandtab softtabstop=2 shiftwidth=2 tabstop=2
au BufRead,BufNewFile *.go set filetype=go 

" Delete trailing white space and ^M chars open/save
" autocmd FileType php autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\[ \t\r]\\+$","","")'))
" autocmd FileType php autocmd BufEnter <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\[ \t\r]\\+$","","")'))

set incsearch
"set ignorecase

" Keep context on top and bottom of cursor
set scrolloff=5

set backspace=eol,start,indent
"inoremap <Tab> <C-T>
"inoremap <S-Tab> <C-D>

"come back to the same location after editing
"set viminfo='10,\"100,:20,%,n~/.viminfo
"au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif 

":setl makeprg=php
":set errorformat=%m\ in\ %f\ on\ line\ %l

:set mouse=n
:set showcmd
:set guioptions=agimrLte
:set visualbell
:set is
:set nohlsearch
:set nu
:set relativenumber
":hi LineNr guifg=black guibg=darkgrey
":hi LineNr ctermfg=grey ctermbg=darkgrey
":set guifont=Monospace\ 8
:set guifont=Monaco:h13
" this makes the interaction smoother through ssh
:set lazyredraw

:map <F9> :execute 'NERDTreeToggle' <CR>

:map <F7> <Esc>:EnablePHPFolds<Cr>
:map <F8> <Esc>:DisablePHPFolds<Cr>
:let g:DisableAutoPHPFolding = 1
:set nowrap
:set grepprg=ack\ --nocolor

"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter,BufRead,BufNewFile * set cursorline
"set cursorline
":au BufRead,BufNewFile,WinEnter * let w:m1=matchadd('OverLength', '\%<121v.\%>101v', -1)
":au BufRead,BufNewFile,WinEnter * let w:m2=matchadd('ExtremeOverLength', '\%>120v.\+', -1)
:au BufRead,BufNewFile,WinEnter * let w:m3=matchadd('LineWithBlanks', '\s\s*$', -1)
:set colorcolumn=90
"Overlenght test ################################################################################################################
"Empty line with spaces test, below, and spaces at the end, here    
      
set t_Co=256
":hi CursorLine cterm=none ctermbg=232
:colorscheme wombat
hi OverLength guibg=black ctermbg=black
hi ExtremeOverLength guibg=red guifg=white ctermbg=red ctermfg=white
hi LineWithBlanks guibg=#303030 ctermbg=black
hi Cursor guibg=darkgreen guifg=black
hi Search guibg=lightgreen guifg=black
set guicursor=a:blinkon150-blinkoff120-blinkwait150
:hi ColorColumn guibg=#303030
:set cursorline
:hi CursorLineNr guifg=white
"hi LineNr guibg=darkgrey guifg=white
