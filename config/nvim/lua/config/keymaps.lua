local keymap = vim.keymap
local opts = { noremap = true, silent = true }
-- [[ Basic Keymaps ]] - `:help vim.keymap.set()`

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Fast saving & quitting
keymap.set("n", "<leader>w", ":w!<CR>", opts)
keymap.set("n", "<leader>q", ":q<CR>", opts)

-- Turn off arrow keys
keymap.set({ "n", "i", "v" }, "<left>", "<nop>", opts)
keymap.set({ "n", "i", "v" }, "<right>", "<nop>", opts)
keymap.set({ "n", "i", "v" }, "<up>", "<nop>", opts)
keymap.set({ "n", "i", "v" }, "<down>", "<nop>", opts)

-- Pressing j or k in a long wrapped will put cursor down/up one visual line
keymap.set("n", "j", "gj", opts)
keymap.set("n", "k", "gk", opts)

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcgv", { noremap = false })


-- [[ Splits ]]

-- Keybinds to make split navigation easier.
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "Move focus to the upper window" })


-- [[ Searching ]]

-- Clear search highlight on pressing <Esc> in normal mode
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)


-- [[ Directory Navigation ]]

-- Open/Focus directory listing
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts) 

-- Toggle directory listing
keymap.set("n", "<leader>f", ":NvimTreeFindFile<CR>", opts) 


-- [[ RSpec (using neotest) ]]
keymap.set("n", "<leader>r", function()
  local neotest = require("neotest")
  neotest.run.run()
end, { noremap = true, silent = true, desc = "Test [R]un under cursor" })

keymap.set("n", "<leader>rf", function()
  local neotest = require("neotest")
  neotest.run.run(vim.fn.expand("%"))
end, { noremap = true, silent = true, desc = "Test [R]un [F]ile" })

keymap.set("n", "<leader>ra", function()
  local neotest = require("neotest")
  neotest.run.run(vim.fn.getcwd())
end, { noremap = true, silent = true, desc = "Test [R]un [A]ll" })

keymap.set("n", "<leader>rr", function()
  local neotest = require("neotest")
  neotest.run.run_last()
end, { noremap = true, silent = true, desc = "Test [R]un p[R]evious" })

keymap.set("n", "<leader>rs", function()
  local neotest = require("neotest")
  neotest.summary.toggle()
end, { noremap = true, silent = true, desc = "Toggle [R]un [S]ummary window" })

keymap.set("n", "<leader>ro", function()
  local neotest = require("neotest")
  neotest.output_panel.toggle()
end, { noremap = true, silent = true, desc = "Toggle [R]un [O]utput window" })
