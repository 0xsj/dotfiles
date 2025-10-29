-- opts
local options = {
	-- TODO: change this to a single line
	guicursor = "",

	-- numbered lines
	nu = true,

	-- relative line numbers
	relativenumber = true,

	-- how many spaces do you want your tab to be?
	shiftwidth = 2,
	autoindent = false,
	tabstop = 2,
	softtabstop = 1,
	smartindent = false,

	wrap = false,


	signcolumn = "yes"

}

for key, value in pairs(options) do
	vim.opt[key] = value
end