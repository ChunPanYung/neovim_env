return {
  { -- Auto-pair
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup{} end
  },
  { -- Git Conflict Tool
    'akinsho/git-conflict.nvim',
    version = "*",
    config = true
  },
  { -- File explorer
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
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
  {
    'akinsho/toggleterm.nvim',
    opts = {
      open_mapping = [[<Leader>t]],
      direction = 'float'
    },
    keys = {
      { "<Leader>t", "<Cmd>ToggleTerm<CR>", desc = "Terminal Toggle" }
    },
  },
  { -- Comment Lines
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")
      wk.register({
        mode = { "n", "v" },
        ["g"] = { name= "+goto" },
        ["<Leader>"] = {
          name = "+leader",
          i = { name = "insert single character before cursor." },
          a = { name = "insert single character after cursor." }
        },
        ["z"] = { name = "+fold" }
      })

    end
  },
  { -- Showing diagnostics, references, telescope results, quickfix etc.
    "folke/trouble.nvim",
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {
      { "<Leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble.nvim" },
      { "gR", "<cmd>TroubleToggle lsp_references<cr>", desc = "Toggle references" }
    }
  },
  { -- color theme
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    },
    config = function ()
      require("telescope").load_extension("lazygit")
    end,
    keys = {
      { "<Leader>gg", "<cmd>LazyGit<CR>", desc = "Open LazyGit" }
    }
  },
  {
    "folke/neodev.nvim",
    opts = {}
  }
} -- End plugins manager
