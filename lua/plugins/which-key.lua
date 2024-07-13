return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")
      wk.register({
        mode = { "n", "v" },
        ["g"] = { name= "+goto" },
        [","] = {
          i = { name = "insert single character before cursor." },
          a = { name = "insert single character after cursor." }
        },
        ["z"] = { name = "+fold" },
        ["<Leader>"] = {
          name="+leader",
          zz = { name = "Write and delete buffer." },
          bd = { name = "Delete buffer." },
          q = { name = "Delete buffer." },
        }

      })

    end
  },
}
