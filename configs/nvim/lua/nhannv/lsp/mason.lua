local mason_status_ok, mason = pcall(require, "mason")
local mason_lsp_status_ok, mason_lsp = pcall(require, "mason-lspconfig")

if not mason_status_ok or not mason_lsp_status_ok then
  return
end

local servers = {
  "diagnosticls",
  "emmet_ls",
  "eslint",
  "jsonls",
  "lua_ls",
  "phpactor",
  "solargraph",
  "tsserver",
  "tailwindcss",
  "vuels"
}

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

mason_lsp.setup({
  ensure_installed = servers,
  automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local attach = require("nhannv.lsp.attach")
local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = attach.on_attach,
    capabilities = attach.capabilities,
  }

  if server == "lua_ls" then
    opts["settings"] = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = "LuaJIT",
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = { "vim" },
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = vim.api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
          enable = false,
        },
      },
    }
  end

  lspconfig[server].setup(opts)
end
