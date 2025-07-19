return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  --config = function()
  --  require("bufferline").setup({})
  --end,
  opts = {
    options = {
      mode = "tabs",
      separator_style = "slant",
    },
  }
}
