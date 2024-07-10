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
    opts = {},
    cmd = "Trouble",
    keys = {
      {
        "<Leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "diagnostics (Trouble)"
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    }
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
  },
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
      'hrsh7th/nvim-cmp',
    },
    opts = {
      lsp = {
        -- override markdown rendering so taht **cmp** and other plugins use
        -- **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
      }
    }
  }
} -- End plugins manager
