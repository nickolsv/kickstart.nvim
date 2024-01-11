return {
  'folke/tokyonight.nvim',
  priority = 1000,
  opts = {
    highlights = {
      ['CursorLineNr'] = { fg = '#fff' },
    },
    transparent = false
  },
  config = function(_, opts)
    require("onedark").setup(opts)
    -- vim.cmd.colorscheme 'tokyonight'
  end,
}
