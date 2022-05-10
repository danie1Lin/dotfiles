require("toggleterm").setup{
  open_mapping = [[<c-\>]],
  direction = 'float',
}

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://.*toggleterm#.* lua set_terminal_keymaps()')

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
local k9s = Terminal:new({ cmd = "k9s", hidden = true })
local htop = Terminal:new({ cmd = "htop", hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end
vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

function _k9s_toggle()
  k9s:toggle()
end
vim.api.nvim_set_keymap("n", "<leader>k", "<cmd>lua _k9s_toggle()<CR>", {noremap = true, silent = true})

function _htop_toggle()
  htop:toggle()
end
vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>lua _htop_toggle()<CR>", {noremap = true, silent = true})


