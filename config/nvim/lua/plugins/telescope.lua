-- Fuzzy Finder (files, lsp, etc)
local keymap = vim.keymap

local config = function()
  local telescope = require("telescope")
  telescope.setup({
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        }
      }
    },
    pickers = {
      find_files = {
        theme = "ivy",
        previewer = false,
      },
      buffers = {
        theme = "dropdown",
        previewer = false,
      }
    },
  })
end

return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim" },
  config = config,
  keys = {
    keymap.set("n", "<leader>sf", ":Telescope find_files<CR>", { desc = "[S]earch [F]iles" }),
    keymap.set("n", "<leader>sg", ":Telescope live_grep<CR>", { desc = "[S]earch by [G]rep" }),
    keymap.set("n", "<leader>sw", ":Telescope grep_string<CR>", { desc = "[S]earch current [W]ord" }),
    keymap.set("n", "<leader><leader>", ":Telescope buffers<CR>", { desc = "[ ] Find existing buffers" }),
  }
}
