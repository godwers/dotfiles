return {
	"saghen/blink.cmp",
	dependencies = { 'rafamadriz/friendly-snippets' },
	version = '1.*',

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = 'default',

			['<C-k>'] = { 'select_prev', 'fallback_to_mappings' },
			['<C-j>'] = { 'select_next', 'fallback_to_mappings' },
		},
		fuzzy = { implementation = "lua" },
		completion = { documentation = { auto_show = true }, },


	},
	opts_extend = { "sources.default" },
}

