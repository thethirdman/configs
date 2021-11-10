require "paq" {
"savq/paq-nvim";
"neovim/nvim-lspconfig";
{ 'ms-jpq/coq_nvim', branch='coq'};
{'nvim-treesitter/nvim-treesitter', run='TSUpdate'};
"marko-cerovac/material.nvim";
"hoob3rt/lualine.nvim";
"kyazdani42/nvim-web-devicons";
"ryanoasis/vim-devicons";
"nvim-lua/plenary.nvim";
"nvim-telescope/telescope.nvim";
"svermeulen/vimpeccable";
}

vim.o.scrolloff = 5
vim.o.wildmode = "list:longest"
vim.o.cursorline = true
vim.o.number = true
vim.o.undofile = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.textwidth = 79
vim.o.colorcolumn = '85'
vim.o.formatoptions = 'qrnl'
vim.o.smartcase = true
vim.o.gdefault = true
vim.o.showmatch = true
vim.o.list = true
-- do not remove trailing whitespace ?
vim.o.listchars='nbsp:·,tab:  '
vim.o.foldmethod='syntax'
vim.o.foldlevel=42

vim.g.mapleader = ','

local vimp = require('vimp')

vimp.nnoremap( '<leader><space>', ':nohl<cr>')
vimp.nnoremap('<up>', '<nop>')
vimp.nnoremap('<down>', '<nop>')
vimp.inoremap('<up>', '<nop>')
vimp.inoremap('<down>', '<nop>')
vimp.nnoremap('j', 'gj')
vimp.nnoremap('k', 'gk')
vimp.map({'override'},'<C-l>', '<C-W>>') -- clashes with some telescope.nvim setting
vimp.map('<C-h>', '<C-W><')
vimp.map('<C-j>', '<C-W>+')
vimp.map('<C-k>', '<C-W>-')
vimp.map('<left>', 'gT')
vimp.map('<right>', 'gt')
vimp.nnoremap('t', ':tabnew<cr>')
vimp.vnoremap('<', '<gv')
vimp.vnoremap('>', '>gv')

vim.api.nvim_command([[
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/
au! BufRead,BufNewFile *.markdown set filetype=mkd
au! BufRead,BufNewFile *.md       set filetype=mkd
autocmd FileType ocaml setlocal commentstring=(*\ %s\ *)
]])

local lsp = require "lspconfig"
local coq = require "coq"

lsp.pyright.setup{}
lsp.clangd.setup(coq.lsp_ensure_capabilities())

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require('material').setup()
vim.g.material_style = "palenight"
vim.cmd("colorscheme material")

require('lualine').setup {
  options = {
    theme = 'material-nvim'
  }
}

vim.cmd('COQnow -s')
