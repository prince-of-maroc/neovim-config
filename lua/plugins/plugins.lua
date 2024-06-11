-- Set up lazy plugin maanager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Install plugins
require("lazy").setup({
	{
		-- NeoTree
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		}
	},
	{
		-- Toggleterm
		"akinsho/toggleterm.nvim", version = "*", config = true
	},
	{
		-- DarkPlus Colorscheme
		"lunarvim/darkplus.nvim"
	},
	{
		-- AutoPairs
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
	},
	{
		-- LuaLine
    'nvim-lualine/lualine.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" }
	},
	{
		-- Treesitter
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },


	-- LSP + Dependencies
	{
		"williamboman/mason.nvim"
	},
	{
		"williamboman/mason-lspconfig.nvim"
	},
	{
		"VonHeikemen/lsp-zero.nvim", branch = "v3.x"
	},
	{
		"neovim/nvim-lspconfig"
	},
	{
		"hrsh7th/cmp-nvim-lsp"
	},
	{
		"hrsh7th/nvim-cmp"
	},
	{
		"L3MON4D3/LuaSnip"
	},
})
