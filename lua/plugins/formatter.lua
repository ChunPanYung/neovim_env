return {
  {
    'mhartington/formatter.nvim',
    -- enabled = false,
    config = function()
      require('formatter').setup {
        filetype = {
          lua = {
            require("formatter.filetypes.lua").stylua,
          },
          python = {
            require("formatter.filetypes.python").black
          }
        }
      }
    end,
    keys = {
      {"<F3>", ":Format<CR>", desc = "Format files"},
    },
  },
}
