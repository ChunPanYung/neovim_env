return {
  {
    "ckipp01/nvim-jenkinsfile-linter",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
        local linter = require("jenkinsfile_linter")
      vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
        pattern = { "*Jenkinsfile*" },
        desc = "Auto-lint Jenkinsfile after saving",
        callback = function()
          linter.validate()
        end,
      })
    end
  }
}
