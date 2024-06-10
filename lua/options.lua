local options = {
	number = true,
	relativenumber = true,
	mouse = "",
	mousehide = true,
	autoindent = true,
	shiftwidth = 2,
	tabstop = 2,
	pumheight = 6,
	linebreak = true,
}

for k,v in pairs(options) do vim.opt[k] = v end
