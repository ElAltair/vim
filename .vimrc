execute pathogen#infect()

set nocp
filetype plugin on
set omnifunc=omni#cpp#complete#Main
syntax enable

set tags+=~/.vim/tags/cpp
map <C-F12> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
set number
set ruler
set showcmd
set showmode
set tabstop=4
set autoindent
set smartindent
set incsearch 
set ignorecase 
set hlsearch

set smarttab
set foldenable
set fdm=syntax
//imap [ []<LEFT>
/imap ( ()<LEFT>
		/imap { {}<LEFT><CR> 

inoremap<C-space> <C-x><C-o>



" Press space to clear search highlighting and any message already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>
colorscheme gotham	

