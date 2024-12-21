return {
  -- Highlight, edit, and navigate code
  -- See:
  -- - https://tree-sitter.github.io/tree-sitter/
  -- - https://github.com/nvim-treesitter/nvim-treesitter
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "bash",
        "diff",
        "html", "css", "scss",
        "lua", "luadoc", "vim", "vimdoc", 
        "markdown",
        "ruby",
        "javascript",
        "json",
        "yaml",
        "dockerfile",
        "terraform", "hcl",
        "tmux",
      },
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "ruby" },
      },
      indent = {
        enable = true,
        disable = { "ruby" },
      }
    })
  end
 }
