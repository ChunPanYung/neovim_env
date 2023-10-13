-- [[User Commands]]
vim.api.nvim_create_user_command('Trimblank', function()
  vim.cmd([[
    " Replace multiple blank lines with a single blank line
    silent! %s/\(\n\n\)\n\+/\1/
    " Trim final newline
    silent! v/\_s*\S/d
    " Clear all highlight
    nohlsearch
  ]])
end, {})

vim.api.nvim_create_user_command('Trimspace', function()
  vim.cmd([[
    " Remove trailing white spaces
    %s/\s\+$//e
  ]])
end, {})

vim.api.nvim_create_user_command('Bufonly', function()
  vim.cmd([[
    " Close all buffers but current one
    %bd | e#
  ]])
end, {})

-- [[Auto Commands]]
-- Create group to assign commands, "clear = true" must be set to prevent loading an
-- auto-command repeatedly every time a file is resourced
local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.py" },
  desc = "Auto-format Python files after saving",
  callback = function()
      local fileName = vim.api.nvim_buf_get_name(0)
      vim.cmd(":silent !black " .. fileName)
  end,
  group = autocmd_group,
})
