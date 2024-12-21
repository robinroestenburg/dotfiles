local opt = vim.opt
local api = vim.api

-- [[ Display ]]

-- Show numbers relative to current cursor position
opt.relativenumber = true

-- Sets how neovim will display certain whitespace characters in the editor.
opt.list = true
opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
  extends = "»",
  precedes = "«",
}

-- Lines will not wrap only part of long lines will be displayed
opt.wrap = false
opt.sidescroll = 40

-- Highlight column 80 of each line.
opt.textwidth = 80
opt.colorcolumn = "+1"

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 5

-- Show which line your cursor is on
opt.cursorline = true

-- Syntax coloring lines that are too long just slows down the world
opt.synmaxcol = 512

-- Enable 24-bit RGB color in the TUI
opt.termguicolors = true


-- [[ Searching ]]

-- Ignore case when searching
opt.ignorecase = true
opt.smartcase = true

-- Set highlight on search
opt.hlsearch = true


-- [[ Splits ]]

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true


-- [[ Rest ]]

-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
opt.clipboard = "unnamedplus"

-- Enable break indent
opt.breakindent = true

-- Keep signcolumn on by default
opt.signcolumn = "yes"

-- Decrease update time
opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
opt.timeoutlen = 300

-- Preview substitutions live, as you type!
opt.inccommand = "split"

-- Don't show the mode, since it's already in the status line
opt.showmode = false

-- [[ Behavior ]]

opt.hidden = true

-- Turn backup off, since most stuff is in version control anyway. Gets rid of
-- the annoying errors when re-opening the same file.
opt.swapfile = false

-- Save undo history to an undo file that is loaded/restored when same file is
-- read
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true


-- [[ Indentation ]]

-- Copy indent from current line when starting a new line
opt.autoindent = true

-- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
opt.expandtab = true

-- Use 2 spaces for each step of (auto)indent.
opt.shiftwidth = 2

-- Number of spaces that a <Tab> counts for while performing editing operations
opt.softtabstop = 2

-- Number of spaces that a <Tab> in the file counts for.
opt.tabstop = 2

-- When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.
opt.smarttab = true

-- [[ Completion ]]

-- opt.completeopt = { "menu", "menuone", "noselect" }
