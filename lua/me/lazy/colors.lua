local function polish()
	for _, group in ipairs({
		"Normal",
		"NormalNC",
		"NormalFloat",
		"FloatBorder",
		"SignColumn",
		"EndOfBuffer",
		"LineNr",
		"CursorLineNr",
	}) do
		local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
		hl.bg = nil
		hl.ctermbg = nil
		vim.api.nvim_set_hl(0, group, hl)
	end
	for name, def in pairs(vim.api.nvim_get_hl(0, {})) do
		if def.italic then
			def.italic = nil
			vim.api.nvim_set_hl(0, name, def)
		end
	end
end

function ColorMyPencils(color)
	vim.cmd.colorscheme(color or "rose-pine-moon")
	polish()
end

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				styles = { italic = false },
			})
			ColorMyPencils()
		end,
	},
	{ "nyoom-engineering/oxocarbon.nvim", lazy = false, priority = 1000 },
}
