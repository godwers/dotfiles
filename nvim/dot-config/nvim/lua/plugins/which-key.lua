return {
	"folke/which-key.nvim",
	opts = {
		preset = "helix",
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = true })
			end,
			desc = "Buffer Local Maps",
		},
	},
	requirements = {
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	priority = 10000,
}
