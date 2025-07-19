return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      -- ensure these language parsers are installed
      ensure_installed = {
        "lua",
        "html",
        "css",
        "javascript",
        "json",
        "markdown",
        "markdown_inline",
        "gitignore",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<Tab>",
          node_incremental = "<Tab>",
          scope_incremental = false,
          node_decremental = "<S-Tab>",
        },
      },
    })
  end,
}
