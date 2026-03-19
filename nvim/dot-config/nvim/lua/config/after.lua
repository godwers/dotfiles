require("mason-lspconfig").setup{
	automatic_enable = true,
}

local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end


    -- custom mappings
    vim.keymap.set("n","<leader>e", api.tree.toggle, opts("Open explorer"))
end

require("nvim-tree").setup({
	on_attach = my_on_attach(),
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend('force', capabilities, require('blink.cmp').get_lsp_capabilities({}, false))
capabilities = vim.tbl_deep_extend('force', capabilities, {
  textDocument = {
    foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true
    }
  }
})
