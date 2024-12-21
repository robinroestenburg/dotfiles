-- Theme
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "storm",
      styles = {
        functions = { italic = true }
      },
      dim_inactive = true,
      lualine_bold = true,
    })
    vim.cmd("colorscheme tokyonight")
  end
}
