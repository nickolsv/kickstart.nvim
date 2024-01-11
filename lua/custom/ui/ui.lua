local opts = {
  options = {
    icons_enabled = true,
    theme = Theme,
  },
}


if Theme == "catppuccin" then
  opts.options.component_separators = { left = '', right = '' }
  opts.options.section_separators = { left = '', right = '' }
elseif Theme == "onedark" then
  opts.options.component_separators = { left = '', right = '' }
  opts.options.section_separators = { left = '', right = '' }
end

return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = opts
}
