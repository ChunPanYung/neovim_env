return {
  {
    "tiagovla/scope.nvim",
    enabled = false,
    init = function()
      require("scope").setup{}
    end,
  },
  {'romgrk/barbar.nvim',
    enabled = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
  },
}
