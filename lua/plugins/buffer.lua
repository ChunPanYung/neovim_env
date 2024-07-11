return {
  { -- bufferline.nvim
    'akinsho/bufferline.nvim',
    version = "*",
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
      {"<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete Other Buffers"},
    },
  }
}
