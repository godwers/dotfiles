-- There is no way that i discovered this NOW
vim.keymap.set('n','<C-h>','<C-w>h', { desc = "Go to the left window" })
vim.keymap.set('n','<C-j>','<C-w>j', { desc = "Go to the down window" })
vim.keymap.set('n','<C-k>','<C-w>k', { desc = "Go to the up window" })
vim.keymap.set('n','<C-l>','<C-w>l', { desc = "Go to the right window" })
-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n','<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n','<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n','<leader>fb', builtin.buffers,  { desc = 'Telescope buffers' })
vim.keymap.set('n','<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' }) 

-- Language Server Protocol
