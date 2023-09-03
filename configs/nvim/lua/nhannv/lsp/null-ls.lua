local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
	debug = false,
	sources = {
		-- Lua
		formatting.stylua,
		diagnostics.luacheck.with({
			extra_args = { "--globals=vim" },
		}),

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

		-- JS - prettierd formatting is in JSON Area
		diagnostics.eslint_d.with({
			diagnostics_format = "[eslint] #{m}\n(#{c})",
		}),
		code_actions.eslint_d,

		-- Shell
		formatting.shfmt,
		diagnostics.shellcheck,
		code_actions.shellcheck,

		-- Ruby ERB
		formatting.erb_lint,
		diagnostics.erb_lint,
		-- Ruby
		formatting.rubocop,
		-- diagnostics.rubocop,
		--

		-- YAML
		diagnostics.yamllint,

    -- SCSS
    diagnostics.stylelint,
	},
})
