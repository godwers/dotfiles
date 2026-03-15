require("config.lazy")
require("config.keymap")
vim.cmd.colorscheme("catppuccin-mocha")
require("mason-lspconfig").setup{
	automatic_enable = true,
}
