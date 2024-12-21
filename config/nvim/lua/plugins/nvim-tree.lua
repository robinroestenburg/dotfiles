return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  opts = {
    filters = {
      dotfiles = false,
      git_ignored = false,
    },
    on_attach = function(bufnr)
      local api = require("nvim-tree.api")

      local function is_directory(node)
        local node = api.tree.get_node_under_cursor()
        return node.nodes ~= nil
      end

      local function edit_or_open()
        api.node.open.edit()
      end

      -- open as vsplit on current node
      local function vsplit_preview()
        if is_directory() then
          -- expand or collapse folder
          api.node.open.edit()
        else
          -- open file as vsplit
          api.node.open.vertical()
        end
        api.tree.focus()
      end

      local function parent_or_close()
        if is_directory() then
          -- collapse folder
          api.node.navigate.parent_close()
        else
          -- navigate to parent folder
          api.node.navigate.parent()
        end
      end

      vim.keymap.set("n", "l", edit_or_open,          { buffer = bufnr, desc = "Edit Or Open", silent = true })
      vim.keymap.set("n", "L", vsplit_preview,        { buffer = bufnr, desc = "Vsplit Preview", silent = true })
      vim.keymap.set("n", "h", parent_or_close,       { buffer = bufnr, desc = "Close", silent = true })
      vim.keymap.set("n", "H", api.tree.collapse_all, { buffer = bufnr, desc = "Collapse All", silent = true })
      vim.keymap.set("n", "r", api.fs.rename,         { buffer = bufnr, desc = "Rename", silent = true })
      vim.keymap.set("n", "R", api.fs.rename_sub,     { buffer = bufnr, desc = "Rename: Omit Filename", silent = true })
      vim.keymap.set("n", "a", api.fs.create,         { buffer = bufnr, desc = "Create File Or Directory", silent = true })
      vim.keymap.set("n", "d", api.fs.remove,         { buffer = bufnr, desc = "Delete", silent = true })
    end
  }
}
