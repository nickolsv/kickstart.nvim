return {
  "karb94/neoscroll.nvim",
  version = "*",
  config = function()
    local neoscroll = require('neoscroll')
    neoscroll.setup({
      performance_mode = false,
      post_hook = function(info)
        if info ~= "flag" then vim.cmd("normal! zz") end
      end
    })
    local keymap = {
      -- Use the "sine" easing function
      -- ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 0, easing = 'none', info = "flag" }) end,
      -- ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 0, easing = 'none', info = "flag" }) end,
      -- Use the "circular" easing function
      ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 450, easing = 'circular' }) end,
      ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 450, easing = 'circular' }) end,
      -- When no value is passed the `easing` option supplied in `setup()` is used
      ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor = false, duration = 100, info = "flag" }) end,
      ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor = false, duration = 100, info = "flag" }) end,
    }
    local modes = { 'n', 'v', 'x' }
    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func)
    end

    -- local t    = {}
    --
    -- t['<C-u>'] = function() neoscroll.ctrl_u({ duration = 200 }) end
    -- t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', 200, "sine", '120' } }
    -- t['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '240' } }
    -- t['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '240' } }
    -- t['<C-y>'] = { 'scroll', { '-0.10', 'false', '100' } }
    -- t['<C-e>'] = { 'scroll', { '0.10', 'false', '100' } }
    -- t['zt']    = { 'zt', { '250' } }
    -- t['zz']    = { 'zz', { '250' } }
    -- t['zb']    = { 'zb', { '250' } }
    --
    -- require('neoscroll.config').set_mappings(t)
  end,
}

-- return {
--   { "karb94/neoscroll.nvim", enabled = false }
-- }
