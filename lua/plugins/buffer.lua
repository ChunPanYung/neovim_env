return {
  { -- bufferline.nvim
    'akinsho/bufferline.nvim',
    version = "*",
    enabled = true,
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
      {"<S-h>", ":BufferLineCyclePrev<CR>", desc = "Prev Buffer"},
      {"<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete Other Buffers"}
    },
    opts = {
      options = {
        close_command = function(n) require("mini.bufremove").delete(n, false) end,
        right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end
      }
    }
  },
  { -- buffer remove
    "echasnovski/mini.bufremove",
    enabled = true,
    -- stylua: ignore
    keys = {
      {
        "<leader>bd",
        function()
          require("mini.bufremove").delete(0, false)
        end,
        desc = "Delete Buffer"
      },
      {
        "<leader>bD",
        function()
          require("mini.bufremove").delete(0, true)
        end,
        desc = "Delete Buffer (Force)"
      },
      {
        "<leader>bz",
        ":w<CR><leader>q",
        desc = "Save the quit current buffer.",
        remap = true
      }
    },  -- end keys
  },  -- end buffer remove
}
