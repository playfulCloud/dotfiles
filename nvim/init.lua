local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


vim.g.mapleader = " "






local opts = {}

require("lazy").setup("plugins")
local builtin = require("telescope.builtin")
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

local configs = require("nvim-treesitter.configs")

configs.setup({
	ensure_installed = {"lua","javascript"},
	highlight = { enable = true},
	indent = { enable = true }
})

-- VISUALS
vim.o.number = true



-- ##############
-- KEYMAPS
vim.keymap.set('n','<C-n>', builtin.find_files,{})
vim.keymap.set('n','<C-f>', builtin.live_grep,{})
_G.neo_tree_reveal_state = _G.neo_tree_reveal_state or false


vim.keymap.set('n', '<leader>f', ':Neotree filesystem reveal left <CR>' , {})
vim.keymap.set('n', '<leader>d', ':Neotree close <CR>' , {})
   
-- ##############












