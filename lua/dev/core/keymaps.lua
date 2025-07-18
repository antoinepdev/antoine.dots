
-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }

local function extend_opts(base, override)
  local merged = {}
  for k, v in pairs(base) do merged[k] = v end
  for k, v in pairs(override) do
    if v ~= nil then
      merged[k] = v
    end
  end
  return merged
end


local function map(mode, key, command, desc)
  vim.keymap.set(mode, key, command, extend_opts(opts, { desc = desc }))
end

-- Basic keymaps
map("n", "<leader>ww", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>Q", ":q!<CR>")
map("i", "jk", "<ESC>", "Exit insert mode with jk")
map("n", "<leader>nh", ":nohl<CR>", "Clear search highlights")

-- Terminal
map("n", "<leader>t", "<cmd>enew<CR><cmd>term<CR>i", "Open new terminal")
map("t", "<Esc>", "<C-\\><C-n>", "Exit terminal mode")
map("t", "jk", "<C-\\><C-n>", "Exit terminal mode with jk")

-- Buffers
map("n", "<leader>bd", ":bd<CR>", "Close current buffer")
map("n", "<leader><Tab>", ":bnext<CR>", "Go next buffer")
map("n", "<leader>º", ":bprevious<CR>", "Go previous buffer")

-- Splits
map("n", "<C-h>", "<C-w>h", "Move to left window")
map("", "<C-l>", "<Nop>")
map("n", "<C-l>", "<C-w>l", "Move to right window")
map("n", "<C-j>", "<C-w>j", "Move to bottom window")
map("n", "<C-k>", "<C-w>k", "Move to top window")

-- Delete, Copy, Paste
map("n", "x", '"_x') -- Delete an charcter without copy
map("n", "da", ":%d<CR>", "Delete all")
map("n", "ya", "ggy<S-g>")

-- Select
map("v", "J", ":m '>+1<CR>gv=gv") -- Move up selected line
map("v", "K", ":m '<-2<CR>gv=gv") -- Move down selected line

-- Replace
map("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]], "Replace current word")

-- Find
map("n", "<leader>fw", "/", "Find word")


