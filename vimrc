" pull in pathogen and generate helptags
call pathogen#infect()
call pathogen#helptags()

" turn on syntax highlighting
syntax on

" turn on auto indent
set expandtab
set softtabstop=2
set shiftwidth=2
filetype plugin indent on

" set up the coloring for TrailingWhitespace highlighting
autocmd ColorScheme * highlight TrailingWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match TrailingWhitespace /\s\+$\| \+\ze\t/

" set our colorscheme to solarized since it was pulled in
" by pathogen
set background=dark
colorscheme solarized

" let us know where we are
set number
set ruler

" set search options
set ignorecase " default to case insensitive search unless we mix case
set smartcase " this has to be set along with above for case insensitive search
set incsearch " jump to our search results as we type search
""set hlsearch  " highlight our search results

" don't polute our working dir w/ backups and swap files
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" mark column 80 if we're running macVim
if has("gui_running")
  set colorcolumn=80
  set guifont=Monaco:h13
endif

" set some custom key mappings
map <C-n> :NERDTree<CR> " open nerdtree on Ctrl-n

" set split options
set splitright
set splitbelow

" set filetype specific indention settings
au FileType python setl sw=2 sts=2 et
au FileType ruby setl sw=2 sts=2 et
au FileType javascript setl sw=4 sts=4 et

" Fuck whitespace
autocmd FileType c,cpp,java,php,ruby,eruby,haml,sass,scss,python,html,css,javascript,cucumber,slim,coffee autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))"
