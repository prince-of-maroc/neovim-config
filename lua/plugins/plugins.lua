-- Import plugin configs
require "./lua/plugins/configurations/lualine"
require "./lua/plugins/configurations/toggleterm"
require "./lua/plugins/configurations/neotree"

-- Set up lazy plugin maanager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
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
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
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
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
	},
	{
		-- LuaLine
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
	}
})


-- PLUGIN CONFIGURATIONS
NeoTree:setup()
ToggleTerm:setup()
Lualine:setup()
