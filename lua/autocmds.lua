--[[ User Created Commands ]]
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
