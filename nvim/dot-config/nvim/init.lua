require("config.keymap")
require("config.lazy")

vim.cmd.colorscheme("catppuccin-mocha")

require("mason-lspconfig").setup{
	automatic_enable = true,
}

local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings)

    -- custom mappings
    vim.keymap.set("n","<leader>e", api.tree.toggle, opts("Open explorer"))
end
require("nvim-tree").setup({
	on_attach = my_on_attach(),
})
