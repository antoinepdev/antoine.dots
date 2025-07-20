return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup({
      options = {
        mode = "tabs",
        --separator_style = "slant",
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
      }
    })
    vim.keymap.set('n', '<leader><Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
    vim.keymap.set('n', '<leader>º', '<Cmd>BufferLineCyclePrev<CR>', {})
  end,
}
