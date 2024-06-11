LSP = {}

function LSP:setup()
	local lsp = require("lsp-zero")
	lsp.preset("recommended")
	lsp.ensure_installed({
		"tsserver",
		"rust_analyzer",
		"html",
		"cssls",
		"emmet_ls",
		"tailwindcss",
		"lua_ls"
	})

	local cmp = require('cmp')
	local cmp_select = {behavior = cmp.SelectBehavior.Select}
	local cmp_mappings = lsp.defaults.cmp_mappings({
		['<Up>'] = cmp.mapping.select_prev_item(cmp_select),
		['<Down>'] = cmp.mapping.select_next_item(cmp_select),
		['<Tab>'] = cmp.mapping.confirm({select = true}),
		['<Space>'] = cmp.mapping.complete(),
	})

	lsp.setup_nvim_cmp({
		mapping = cmp_mappings
	})

	lsp.setup()
end
