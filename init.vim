syntax on
set clipboard=unnamedplus
set title
set splitbelow splitright
set relativenumber
set guifont=DroidSansMono\ Nerd\ Font\ 11

nnoremap <silent> <CR> :nohlsearch<CR><CR>
nnoremap <C-q> :q!<CR>
" --------------------------------------------------------
" SETTINGS START

set completeopt=longest,menuone

" SETTINGS END
" --------------------------------------------------------

" --------------------------------------------------------
" COC-VIM TAB SETTINGS START

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" COC-VIM TAB SETTINGS END
" --------------------------------------------------------

call plug#begin()
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'wuelnerdotexe/vim-astro'
Plug 'mattn/emmet-vim'
Plug 'MunifTanjim/nui.nvim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }
Plug 'smzm/hydrovim'
Plug 'turbio/bracey.vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree' "view files and folders in side bar
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'sainnhe/sonokai'
Plug 'elvessousa/sobrio' " A theme with sober colors
Plug 'plasticboy/vim-markdown'
Plug 'elkowar/yuck.vim'
"Plug 'neoclide/coc-prettier'
Plug 'manzeloth/live-server'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-airline/vim-airline'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'w0rp/ale'
call plug#end()

   " Important!!
        if has('termguicolors')
          set termguicolors
        endif

        " The configuration options should be placed before `colorscheme sonokai`.
        let g:sonokai_style = 'andromeda'
        let g:sonokai_better_performance = 1

        colorscheme sonokai
" Ale
let g:ale_fixers = {
\  'elixir': ['mix_format'],
\  'javascript': ['prettier'],
\  'typescript': ['prettier'],
\  'vue': ['prettier'],
\  'scss': ['prettier'],
\  'html': ['prettier'],
\  'svelte': ['prettier']
\}
let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1
let g:astro_typescript = 'enable'
