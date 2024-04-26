return {
  { -- File explorer
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    enabled = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    opts = {
      close_if_last_window = true,
      window = {
        width = 28
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          never_show = {
            ".git"
          }
        }
      }
    },
    keys = {
      { "<Leader>e", "<cmd>Neotree toggle<cr>", desc = "Neotree" }
    }
  },
  { -- Mini.files
    'echasnovski/mini.files',
    enabled = true,
    version = false,
    config = function()
      require('mini.files').setup()
    end,
    keys = {
      { "<Leader>e", "<cmd>lua MiniFiles.open()<cr>", desc = "Open Mini.files navigation." }
    }
  },
  {
    'stevearc/oil.nvim',
    enabled = false,
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function(_, opts)
      require('oil').setup(opts)
    end,
    keys = {
      {
        "<Leader>e", "<cmd>Oil --float<cr>",
        desc = "Open oil browser in a floating window, or close it if open."
      }
    }
  }
}
