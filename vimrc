if has('termguicolors')
	set termguicolors
else
	set t_Co=256
endif

"--------------------------------------------------------------------------------------
filetype plugin indent on
syntax on
set title
set encoding=utf-8
set backspace=indent,eol,start
set noerrorbells
set confirm 
set hidden
set splitbelow
set splitright
set fillchars=vert:│,fold:-,eob:~,lastline:@

"--------------------------------------------------------------------------------------
set path=./**
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

"--------------------------------------------------------------------------------------
set nowrap
set linebreak
set nolist
set listchars=tab:>-,space:·,trail:◀,eol:↲

"--------------------------------------------------------------------------------------
set number
set relativenumber
set scrolloff=3
set cursorline

"--------------------------------------------------------------------------------------
let &t_SI="\e[6 q"
let &t_EI="\e[2 q"

"--------------------------------------------------------------------------------------
set autoindent
set smartindent

"--------------------------------------------------------------------------------------
set expandtab
set tabstop=4
set softtabstop
set shiftwidth=4

"--------------------------------------------------------------------------------------
set ignorecase
set smartcase
set incsearch
set hls
let @/ = ""

set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
set complete+=kspell
set spelllang=pt_br,en
set nospell  
"---------------------------------------------------------------------------------------
 colorscheme habamax     
"---------------------------------------------------------------------------------------

" -- Select with arrows up and down --
inoremap <expr> <up> pumvisible() ? '<c-p>' : '<up>'
inoremap <expr> <down> pumvisible() ? '<c-n>' : '<down>'

" -- Accept with right arrow or enter --
inoremap <expr> <right> pumvisible() ? '<c-y>' : '<right>'
inoremap <expr> <cr> pumvisible() ? '<c-y>' : '<cr>'

" -- Cancel completion with left arrow --
inoremap <expr> <left> pumvisible() ? '<c-e>' : '<left>'
"---------------------------------------------------------------------------------------
set wildmenu
set wildmode=longest,full
set wildoptions=pum

"---------------------------------------------------------------------------------------
set noshowmode
set laststatus=2

hi statusline   cterm=NONE ctermfg=0 ctermbg=7   guibg=#C1C2D0 guifg=#000000
hi statuslinenc cterm=NONE ctermfg=0 ctermbg=240 guibg=#616270 guifg=#000000

augroup ModeEvents
    autocmd!
    au InsertEnter * hi statusline cterm=NONE ctermfg=0 ctermbg=10 guibg=#7BC86F
    au InsertLeave * hi statusline cterm=NONE ctermfg=0 ctermbg=7 guibg=#C1C2D0
    au ModeChanged *:[vV\x16]* hi statusline cterm=NONE ctermfg=0 ctermbg=13 guibg=#C990DC
    au Modechanged [vV\x16]*:* hi statusline cterm=NONE ctermfg=0 ctermbg=7 guibg=#C1C2D0
augroup end

function! LoadStatusLine()

    let g:left_sep='│'
    let g:right_sep='│'

    let g:currentmode={
        \ 'n'  : 'Normal',
        \ 'no' : 'Normal-Operator Pending',
        \ 'v'  : 'Visual',
        \ 'V'  : 'V-Line',
        \ '' : 'V-Block',
        \ 's'  : 'Select',
        \ 'S'  : 'S-Line',
        \ '' : 'S-Block',
        \ 'i'  : 'Insert',
        \ 'R'  : 'Replace',
        \ 'Rv' : 'V-Replace',
        \ 'c'  : 'Command',
        \ 'cv' : 'Vim Ex',
        \ 'ce' : 'Ex',
        \ 'r'  : 'Prompt',
        \ 'rm' : 'More',
        \ 'r?' : 'Confirm',
        \ '!'  : 'Shell',
        \ 't'  : 'Terminal'
        \}

    set statusline=\ %{toupper(g:currentmode[mode()])}
    " set statusline=\ %{toupper(mode())}
    set statusline+=\ %{left_sep}
    set statusline+=\ %n
    set statusline+=\ %{left_sep}
    set statusline+=\ %f%m\ %y
    set statusline+=\ %{left_sep}
    set statusline+=\ %{&ff}\ %{&fenc!=''?&fenc:&enc}
    set statusline+=\ %{left_sep}
    set statusline+=\ %=
    set statusline+=\ %{right_sep}
    set statusline+=\ %l/%L,%v
    set statusline+=\ %{right_sep}
    set statusline+=\ %P\

endfunction

call LoadStatusLine()

"---------------------------------------------------------------------------------------
set wildmenu
set wildmode=longest,full
set wildoptions=pum

"---------------------------------------------------------------------------------------
hi normal guibg=NONE ctermbg=NONE
hi CursorLine guibg=#5d7278
hi Comment cterm=italic gui=italic
hi VertSplit ctermbg=NONE guibg=NONE ctermfg=7 guifg=#4f686f

hi TabLine      guifg=#9192a0 guibg=#303140 gui=none
hi TabLineSel   guifg=#a1a2b0 guibg=NONE gui=bold
hi TabLineFill  guifg=#9192a0 guibg=#303140 gui=none

hi Visual guifg=NONE guibg=#516b72


