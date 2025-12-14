return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      -- your picker configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  keys = {
    -- { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
    { "<leader>fd", function() Snacks.picker.files() end, desc = "Smart Find Files" },
    { "<leader>fs", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "Help Pages" },
    { "<leader>fe", function() Snacks.explorer() end, desc = "Help Pages" },
  }
}
