local tmux_group = vim.api.nvim_create_augroup('TmuxStatus', { clear = true })
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    vim.fn.system {
      'tmux',
      'set',
      'status',
      'off'
    }
  end,
  group = tmux_group,
  pattern = '*',
})

vim.api.nvim_create_autocmd('VimLeave', {
  callback = function()
    vim.fn.system {
      'tmux',
      'set',
      'status',
      'on'
    }
  end,
  group = tmux_group,
  pattern = '*',
})

vim.api.nvim_create_autocmd('VimResume', {
  callback = function()
    vim.fn.system {
      'tmux',
      'set',
      'status',
      'off'
    }
  end,
  group = tmux_group,
  pattern = '*',
})

vim.api.nvim_create_autocmd('VimSuspend', {
  callback = function()
    vim.fn.system {
      'tmux',
      'set',
      'status',
      'on'
    }
  end,
  group = tmux_group,
  pattern = '*',
})
