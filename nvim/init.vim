call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'rcarriga/nvim-notify'

Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }

"" Autocomplete
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
call plug#end()

""colorscheme molokai
hi Normal ctermbg=none guibg=none
let mapleader = ","
""nnoremap <silent> <leader>e :FZF -m<CR>

vnoremap <C-c> "*y


let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }


syntax on
set ruler
set number
set hidden
highlight MatchParen ctermfg=yellow ctermbg=red cterm=NONE
"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10


"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10


filetype plugin indent on

set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__

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


lua <<EOF
  require('lualine').setup()
  -- Setup nvim-cmp.
  local cmp = require'cmp'
  vim.opt.termguicolors = true
  require("bufferline").setup{}

  vim.o.updatetime = 250
  vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

  vim.diagnostic.config({
    virtual_text = false,
  })

  -- autocomplete
  require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = { "rust_analyzer", "clangd", "cmake", "cssls", "dockerls", "elixirls", "erlangls", "html", "jsonls", "julials", "pylsp", "tailwindcss", "tsserver", "vimls" }
  })
  require("lspconfig").rust_analyzer.setup {}

  require'nvim-treesitter.configs'.setup {
      ensure_installed = { "c", "rust", "sql", "cmake", "elixir", "heex", "erlang", "fish", "html", "javascript", "json", "julia", "lua", "make", "python", "toml", "yaml" }
  }
EOF
