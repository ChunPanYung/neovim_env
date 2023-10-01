return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    cmd = "Telescope",
    version = false,
    keys = {
      { "<Leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files"},
      { "<Leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Search file contents"},
      { "<Leader>fl", "<cmd>lua require('telescope.builtin').treesitter()<cr>", desc = "List functions and variables from treesitter"}
    }
  },
}
