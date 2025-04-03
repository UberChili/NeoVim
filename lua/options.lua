-- [[ Setting options ]]
-- See `:help vim.opt`

vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- vim: ts=2 sts=2 sw=2 et
--
--
-- indentation?
-- vim.opt.tabstop = 4
-- vim.opt.smartindent = true
-- vim.opt.cindent = true
-- vim.opt.shiftwidth = 4
-- vim.opt.expandtab = false
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.softtabstop = 4
-- vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
-- vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
-- What the fuck is going on
--
--
-- Conceal for links
vim.opt.conceallevel = 1
vim.opt.concealcursor = 'nc'

-- new diagnostics config
vim.diagnostic.config {
  -- Use the default configuration
  virtual_text = true,

  -- Alternatively, customize specific options
  virtual_lines = {
    false,
    -- Only show virtual line diagnostics for the current cursor line
    current_line = false,
  },
}

-- borders on floating windows
vim.o.winborder = 'rounded'
