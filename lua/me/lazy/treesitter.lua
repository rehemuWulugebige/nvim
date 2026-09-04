return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local parsers = {
			"lua",
			"vim",
			"vimdoc",
			"query",
			"bash",
			"markdown",
			"markdown_inline",
			"javascript",
			"typescript",
			"tsx",
			"html",
			"css",
			"json",
			"python",
			"c",
			"go",
			"gitignore",
		}

		require("nvim-treesitter").install(parsers)

		vim.api.nvim_create_autocmd("FileType", {
			group = vim.api.nvim_create_augroup("MeTreesitter", { clear = true }),
			callback = function(args)
				if vim.bo[args.buf].buftype ~= "" then
					return
				end
				pcall(vim.treesitter.start, args.buf)
			end,
		})
	end,
}
