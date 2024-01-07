vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

vim.keymap.set('n', '<leader>n', function() require('neo-tree.command').execute({ toggle = true }) end, { desc = "Toggle Neotree" })

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  -- keys = {
  --   {"<leader>n", function() require('neo-tree.command').execute({toggle= true}) end, desc = "Toggle Neotree"},
  -- },
  config = function ()
    require('neo-tree').setup {}
  end,
}
