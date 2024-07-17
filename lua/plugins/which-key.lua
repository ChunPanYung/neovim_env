return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "<leader>?",
        function()
          require("which-keys").show({global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      }
    }
  },
}
