ToggleTerm = {}

function ToggleTerm:setup()
	require("toggleterm").setup({
			open_mapping = [[<c-\>]],
			close_on_exit = true,
	})
end
