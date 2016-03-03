runtime bundle/vim-pathogen/autoload/pathogen.vim

execute pathogen#infect()
syntax on
filetype plugin indent on

runtime! plugin/sensible.vim
set encoding=utf-8

colorscheme wombat

"""" vim-airline config

"sets the powerline to show up
set laststatus=2
"sets to display all buffers when there is only 1 tab open
let g:airline#extensions#tabline#enabled=1

let g:airline_powerline_fonts = 1

let g:airline_theme='wombat'

"don't need the default mode indicator
set noshowmode

"set up for powerline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" powerline symbols
let g:airline_left_sep = 'î‚°'
let g:airline_left_alt_sep = 'î‚±'
let g:airline_right_sep = 'î‚²'
let g:airline_right_alt_sep = 'î‚³'
let g:airline_symbols.branch = 'î‚ '
let g:airline_symbols.readonly = 'î‚¢'
let g:airline_symbols.linenr = 'î‚¡'

function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode',' ', 'branch'])
	let g:airline_section_b = airline#section#create_left(['hunks', '%f'])
	let g:airline_section_c = airline#section#create(['filetype'])
	let g:airline_section_x = airline#section#create(['%P'])
	let g:airline_section_y = airline#section#create(['%B'])
	let g:airline_section_x = airline#section#create_right(['%l','%c'])
endfunction

autocmd VimEnter * call AirlineInit()

set t_Co=256
""""

"""" git-gutter config

"I don't really want this on all the time, but I like it in the airline
"let g:gitgutter_enabled = 0

""""
