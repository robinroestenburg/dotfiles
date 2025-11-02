-- Theme
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      auto_integrations = true,
      no_italic = true,
      styles = {
        functions = { "italic" }
      },
      dim_inactive = {
        enabled = true
      }
    })
    vim.cmd("colorscheme catppuccin-frappe")
  end
}
