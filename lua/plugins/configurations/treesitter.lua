Treesitter = {}

function Treesitter:setup()
	require'nvim-treesitter.configs'.setup {
		ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "css", "html", "python"},
		sync_install = false,
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	}
end
