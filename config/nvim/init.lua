-- Set comma as the leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Display ]]

-- Show numbers relative to current cursor position
vim.opt.relativenumber = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
  extends = "»",
  precedes = "«",
}

-- Lines will not wrap only part of long lines will be displayed
vim.opt.wrap = false
vim.opt.sidescroll = 40

-- Highlight column 80 of each line.
vim.opt.textwidth = 80
vim.opt.colorcolumn = "+1"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Don't redraw during macro execution
vim.opt.lazyredraw = true

-- Syntax coloring lines that are too long just slows down the world
vim.opt.synmaxcol = 512


-- [[ Rest ]]

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false


-- [[ Indentation ]]

-- Copy indent from current line when starting a new line
vim.opt.autoindent = true

-- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
vim.opt.expandtab = true

-- Use 2 spaces for each step of (auto)indent.
vim.opt.shiftwidth = 2

-- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.softtabstop = 2

-- Number of spaces that a <Tab> in the file counts for.
vim.opt.tabstop = 2

-- When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.
vim.opt.smarttab = true


-- [[ Basic Keymaps ]] - `:help vim.keymap.set()`

-- Diagnostic keymaps
-- vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
-- vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
-- vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
-- vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Fast saving & quitting
vim.keymap.set("n", "<leader>w", ":w!<cr>")
vim.keymap.set("n", "<leader>q", ":q<cr>")

-- Turn off arrow keys
vim.keymap.set({ "n", "i", "v" }, "<left>", "<nop>")
vim.keymap.set({ "n", "i", "v" }, "<right>", "<nop>")
vim.keymap.set({ "n", "i", "v" }, "<up>", "<nop>")
vim.keymap.set({ "n", "i", "v" }, "<down>", "<nop>")

-- Pressing j or k in a long wrapped will put cursor down/up one visual line
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- Open directory listing
vim.keymap.set("n", "<leader>e", ":Explore<cr>")

-- [[ Splits ]]

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move focus to the upper window" })


-- [[ Searching ]]

-- Ignore case when searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")



-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Plugins ]]

require("lazy").setup({

	-- "gc" to comment visual regions/lines
	{ "numToStr/Comment.nvim", opts = {} },

	-- Fuzzy Finder (files, lsp, etc)
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						theme = "ivy",
					},
				},
			})

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
			vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
			vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
			vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
			vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
			vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
			vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
		end,
	},

	-- Colorscheme
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
      require("tokyonight").setup({
        style = "storm",
        dim_inactive = true,
      })
			vim.cmd.colorscheme("tokyonight")
		end,
	},

	-- Highlight todo, notes, etc in comments
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},

	-- Highlight, edit, and navigate code
	-- See:
	-- - https://tree-sitter.github.io/tree-sitter/
	-- - https://github.com/nvim-treesitter/nvim-treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "bash", "c", "diff", "html", "lua", "luadoc", "markdown", "vim", "vimdoc", "ruby" },
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "ruby" },
			},
			indent = {
				enable = true,
				disable = { "ruby" },
			},
		},
	},
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
