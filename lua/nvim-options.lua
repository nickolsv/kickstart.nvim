-- Vim settings 

vim.cmd('colorscheme ' .. Theme)

vim.o.hlsearch = true -- Set highlight on search
vim.wo.number = true -- Make line numbers default
vim.wo.relativenumber = true -- Enable Relative line numbers
vim.opt.cursorline = true -- Highlight number where cursor is on
-- vim.opt.cursorlineopt="number"
vim.o.mouse = 'a' -- Enable mouse mode
vim.o.clipboard = 'unnamedplus' -- Use system clipboard
vim.o.breakindent = true -- Enable break indent
vim.o.undofile = true -- Save undo history
vim.o.ignorecase = true -- Case-insensitive searching UNLESS \C or capital in search
vim.o.smartcase = true -- Smart case
vim.wo.signcolumn = 'yes' -- Keep signcolumn on by default
vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience
vim.o.termguicolors = true -- terminal colors


-- Treat JSON files as JSONc (allow comments)
vim.api.nvim_command([[
  augroup JsonFileType
    autocmd FileType json set filetype=jsonc
  augroup END
]])
