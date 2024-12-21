return {
  "nvim-neotest/neotest",
  lazy = true,
  dependencies = {
    "olimorris/neotest-rspec",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local neotest = require("neotest")
    neotest.setup({
      adapters = {
        require("neotest-rspec")
      },
    })

  end,

}
