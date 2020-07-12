" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')


Plug 'junegunn/seoul256.vim'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'

call plug#end()

" general settings
set hlsearch          " highlight matches with last search pattern
set ignorecase        " ignore case in search patterns
set incsearch         " show where search pattern typed so far matches
set smartcase         " no ignore case when pattern has uppercase
set matchpairs        " pairs of characters that "%" can match
set clipboard+=unnamed " use os x clipboard

" Custom keys

" Press return to temporarily get out of the highlighted search.
nnoremap <CR> :nohlsearch<CR><CR>

" Restore cursor posibion after exiting visual mode
nnoremap v m`v
nnoremap V m`V
nnoremap <C-v> m`<C-v>
vnoremap <esc> <esc>``

" Use alt + hjkl to move line or selection
" On mac os there are some problems - see https://stackoverflow.com/questions/7501092/can-i-map-alt-key-in-vim/15399297#15399297
" ˙ - alt + h
" ∆ - alt + j
" ˚ - alt + k
" ¬ - alt + l ˙
nnoremap ∆ :m .+1<CR>          
nnoremap ˚ :m .-2<CR>
inoremap ∆ <Esc>:m .+1<CR>gi
inoremap ˚ <Esc>:m .-2<CR>gi
vnoremap ∆ :m '>+1<CR>gv
vnoremap ˚ :m '<-2<CR>gv
nnoremap ˙ << 
nnoremap ¬ >>
xnoremap ˙ <gv
xnoremap ¬ >gv


" Plugins settings

" vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
" map <SCA-k> <Plug>(expand_region_expand)
" map <SCA-j> <Plug>(expand_region_shrink)

" Extend the global default (NOTE: Remove comments in dictionary before sourcing)
call expand_region#custom_text_objects({
      \ 'a]' :1,
      \ 'ab' :1,
      \ 'aB' :1,
      \ 'ii' :0,
      \ 'ai' :0,
      \ })


if exists('g:vscode')
    " VSCode extension
else
    " ordinary neovim

    " Theme Configuration
    colo seoul256
    syntax enable
    set background=dark
endif
