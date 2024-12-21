local mason = {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup({
      ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
      }
    })
  end
}

local mason_lspconfig = {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "ruby_lsp"
    },
    automatic_installation = true,
  },
  dependencies = {
    "williamboman/mason.nvim",
  }
}

return {
  -- mason,
  -- mason_lsp_config,
}
