-- opts
local options = {
	guicursor = "",

	-- numbered lines
	number = true,

	-- relative line numbers
	relativenumber = true,

	-- how many spaces do you want your tab to be?
	shiftwidth = 2,
	expandtab = true,
	tabstop = 2,
	softtabstop = 2,
	smartindent = false,

	wrap = false,


	signcolumn = "yes",
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true
	end,
})
