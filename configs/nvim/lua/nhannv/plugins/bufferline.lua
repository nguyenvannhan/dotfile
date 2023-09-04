return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		local bufferline = require("bufferline")

		bufferline.setup({
			options = {
				numbers = function(opts)
					return string.format("%s", opts.id)
				end,
			},
		})

		vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
		vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
	end,
}
