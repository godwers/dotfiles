return {
	"G00380316/live-server.nvim",
	lazy = false,
	config = function()
		require("live_server").setup({
		  browser_sync_port = 3000,
		  live_server_port = 8080,
		  files_to_watch = '"*.html, *.css, *.js"',
		  auto_open_browser = false,
		})
	end,
	keys = {
		{
			"<leader>sl",
			function() require("live_server.core").toggle_live_server() end,
			desc = "Toggle Live Server",
		},
	},
}
