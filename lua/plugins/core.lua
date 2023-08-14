return {
  { -- Auto-pair
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  },
  { -- Git Conflict Tool
    'akinsho/git-conflict.nvim',
    version = "*",
    config = true
  },
  { -- bufferline.nvim
    'akinsho/bufferline.nvim',
    version = "v3.*",
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      "echasnovski/mini.bufremove",
    },
    init = function()
      vim.opt.termguicolors = true
      require("bufferline").setup{}
    end,
    keys = {
      {"<S-l>", ":BufferLineCycleNext<CR>", desc = "Next Buffer"},
      {"<S-h>", ":BufferLineCyclePrev<CR>", desc = "Prev Buffer"}
    },
    opts = {
      options = {
        close_command = function(n) require("mini.bufremove").delete(n, false) end,
        right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end
      }
    }
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
        width = 30
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
      { "<Leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble.nvim" }
    }
  },
  { -- color theme
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { -- buffer remove
    "echasnovski/mini.bufremove",
    -- stylua: ignore
    keys = {
      { "<leader>bd", function() require("mini.bufremove").delete(0, false) end, desc = "Delete Buffer" },
      { "<leader>q", function() require("mini.bufremove").delete(0, false) end, desc = "Delete Buffer" },
      { "<leader>bD", function() require("mini.bufremove").delete(0, true) end, desc = "Delete Buffer (Force)" },
    },
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
      { "<Leader>g", "<cmd>LazyGit<CR>", desc = "Open LazyGit" }
    }
  },
} -- End plugins manager
