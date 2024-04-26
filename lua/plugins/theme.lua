return {
  { -- Statusline
    'nvim-lualine/lualine.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = "VeryLazy",
    opts = {
      options = {
        theme = 'tokyonight',
        component_separators = '|',
        section_separators = '',
      }
    }
  },
  { -- color theme
    "folke/tokyonight.nvim",
    lazy = false,
    enabled = false,
    priority = 1000,
    opts = {},
    config = function ()
      vim.cmd.colorscheme('tokyonight')
    end
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    dependencies = 'nvim-lualine/lualine.nvim',
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Recommended - see "Configuring" below for more config options
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
        terminal_colors = true,
      })
      vim.cmd.colorscheme('cyberdream')

      -- Setup lualine color theme
      local cyberdream = require("lualine.themes.cyberdream")
      require("lualine").setup({
          -- ... other config
          options = {
              theme = "cyberdream",
          },
      })

    end,
  }
}
