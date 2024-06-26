-- [[ $XDG_CONFIG_HOME/nvim/ ]]
vim.filetype.add {
  filename = {
    ['Jenkinsfile'] ='groovy'
  },
  extension = {
    tf = 'terraform',
    Containerfile = 'dockerfile'
  },
}
-- Setup functions to call depends on filetype
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = false
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "Jenkinsfile", "groovy" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = true
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "md" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.expandtab = true
  end
})
