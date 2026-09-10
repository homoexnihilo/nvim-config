local vim = vim
vim.g.mapleader = " "
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'ellisonleao/gruvbox.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'folke/which-key.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug ('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-jdtls'
Plug 'mason-org/mason.nvim'

vim.call('plug#end')

home=os.getenv("HOME")
package.path = home .. "/AppData/local/nvim/?.lua;" .. package.path

require "common"
require "theme"
require "nvimtree"
require "autopairs_config"
require "lualine_config"
require "which_key_config"
require "telescope_config"
require "mason_config"
require "lsp_config.completion"
require "lsp_config.jdtls"
require "lsp_config.ts_ls"
require "lsp_config.lemminx"
