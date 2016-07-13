set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'

" PLugin color
Plugin 'flazz/vim-colorschemes'
"Lib 9 utile pour certains plugins comme autocomplpop
Plugin 'eparreno/vim-l9'
"Autocomplete 
Plugin 'othree/vim-autocomplpop'
"Syntax Checker
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required

" coloschemes

colorscheme kalahari
" diffrentes options
set number

" desactivation des fleches
" Remplacer par espaces
:map <DOWN> :wincmd j<CR>
:map <UP> :wincmd k<CR>
:map <LEFT> :wincmd h<CR> 
:map <RIGHT> :wincmd l<CR>

:inoremap <DOWN> <Nop>
:inoremap <Up> <Nop>
:inoremap <LEFT> <Nop>
:inoremap <RIGHT> <Nop>

"raccourcis pour la creation et la navigation des onglets
noremap <C-T> :tabedit <space>
noremap <TAB> :tabnext <cr>
noremap <S-TAB> :tabprevious <cr>

"Configuration de syntastic
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++ -Wall -Werror -Wextra'
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_c_include_dirs = ['../../../includes', '../../includes','../includes','./includes', '../libft/includes', 'libft/includes']
