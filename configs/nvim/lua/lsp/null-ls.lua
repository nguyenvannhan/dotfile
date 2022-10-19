local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

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
			extra_args = { "--standard=PSR2" },
		}),

		-- JSON Formatting
		formatting.prettierd,
		diagnostics.jsonlint,
	},

	on_attach = function(client, bufnr)
		local lsp_format_modifications = require("lsp-format-modifications")
		lsp_format_modifications.attach(client, bufnr, { format_on_save = false })
	end,
})
