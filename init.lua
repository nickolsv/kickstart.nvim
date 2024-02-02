-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set theme (applies to theme and lualine sections)
if os.getenv("TERM") ~= "linux" then
  Theme = 'catppuccin'
else
  Theme = 'koehler'
end

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-nvim'

-- [[ Configure plugins ]]
require 'lazy-nvim-setup'

-- [[ Setting options ]]
require 'nvim-options'

-- [[ Basic Keymaps ]]
require 'nvim-keymaps'

-- [[ Highlight on yank ]]
require 'highlight-on-yank'

-- [[ Hide/Show tmux bar ]]
-- require 'toggle-tmux-bar'

-- [[ Configure Telescope ]]
require 'nvim-telescope'

-- [[ Configure Treesitter ]]
require 'treesitter-nvim'

-- [[ Configure LSP ]]
require 'lsp-config'

-- [[ Configure which-key ]]
require 'nvim-which-key'

-- [[ Configure nvim-cmp ]]
require 'nvim-autocomplete'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
