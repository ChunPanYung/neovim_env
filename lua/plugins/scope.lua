return {
  { -- scope.nvim
    'tiagovla/scope.nvim',
    enabled = false,
    dependencies = {
      { 'nvim-telescope/telescope.nvim' }
    },
    init = function()
      vim.opt.sessionoptions = {
        "buffers",
        "tabpages",
        "globals"
      }
      require("telescope").load_extension("scope")
      require("scope").setup{}
    end,
  }
}
