-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use
  {
	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  "rebelot/kanagawa.nvim",
	  config = function()
		  require('kanagawa').setup({
			  compile = false,             -- enable compiling the colorscheme
			  undercurl = true,            -- enable undercurls
			  commentStyle = { italic = true },
			  functionStyle = {},
			  keywordStyle = { italic = true},
			  statementStyle = { bold = true },
			  typeStyle = {},
			  transparent = false,         -- do not set background color
			  dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
			  terminalColors = true,       -- define vim.g.terminal_color_{0,17}
			  colors = {                   -- add/modify theme and palette colors
			  palette = {},
			  theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
		  },
		  overrides = function(colors) -- add/modify highlights
			  return {}
		  end,
		  theme = "wave",              -- Load "wave" theme when 'background' option is not set
		  background = {               -- map the value of 'background' option to a theme
		  dark = "wave",           -- try "dragon" !
		  light = "lotus"
	  },
  })
  vim.cmd("colorscheme kanagawa-wave")
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
 --use('nvim-treesitter/playground)
 --
 use {
	 'VonHeikemen/lsp-zero.nvim',
	 branch = 'v2.x',
	 requires = {
		 -- LSP Support
		 {'neovim/nvim-lspconfig'},             -- Required
		 {                                      -- Optional
		 'williamboman/mason.nvim',
		 run = function()
			 pcall(vim.cmd, 'MasonUpdate')
		 end,
	 },
	 {'williamboman/mason-lspconfig.nvim'}, -- Optional

	 -- Autocompletion
	 {'hrsh7th/nvim-cmp'},     -- Required
	 {'hrsh7th/cmp-nvim-lsp'}, -- Required
	 {'L3MON4D3/LuaSnip'},     -- Required
 }
}
end)
