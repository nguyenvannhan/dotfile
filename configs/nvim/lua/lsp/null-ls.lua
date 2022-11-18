local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local attach_config = require("lsp.attach")

null_ls.setup({
	debug = false,
	sources = {
		-- Lua
		formatting.stylua,
		diagnostics.luacheck,

		-- PHP
		formatting.phpcsfixer.with({
			extra_args = { "--rules=@PSR2,no_unused_imports,ordered_imports" },
		}),
		diagnostics.phpcs.with({
			extra_args = { "--standard=PSR2 --default-standard=PSR2" },
		}),
		-- BLADE Formatting
		formatting.blade_formatter,

		-- JSON Formatting
		formatting.prettierd,
		diagnostics.jsonlint,

		-- Shell
		formatting.shfmt,
		diagnostics.shellcheck,
	},

	on_attach = function(client, bufnr)
		attach_config.on_attach(client, bufnr)

		-- LSP Format Modification
		local lsp_format_modifications = require("lsp-format-modifications")
		lsp_format_modifications.attach(client, bufnr, { format_on_save = false })

		vim.api.nvim_buf_set_keymap(
			bufnr,
			"n",
			"<space>mf",
			"<cmd>FormatModifications<CR>",
			{ noremap = true, silent = true }
		)
	end,
})
