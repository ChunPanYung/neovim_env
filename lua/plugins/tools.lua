return {
  {
    "vhyrro/luarocks.nvim",
    enabled = false,
    priority = 1000,
    config = true,
    opts = {
      rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" }
    }
  },
  {
    "rest-nvim/rest.nvim",
    enabled = false,
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup()
    end,
    keys = {
      { "<LocalLeader>rr", "<cmd>Rest run<cr>", desc = "Run request under the cursor" },
      { "<LocalLeader>rl", "<cmd>Rest run last<cr>", desc = "Re-run latest request" }
    }
  }
}
