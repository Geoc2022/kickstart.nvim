return {
	-- "github/copilot.vim",
	-- init = function()
	-- 	vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
	-- 	  expr = true,
	-- 	  replace_keycodes = false
	-- 	})
	-- 	vim.g.copilot_no_tab_map = true
	-- 	vim.b.copilot_enabled = false
	-- end
	--
	-- "zbirenbaum/copilot-cmp",
	-- cmd = "Copilot",
	-- event = "InsertEnter",
	-- config = function()
	--   require("copilot").setup({})
	-- end,
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
	require("copilot").setup({
		suggestion = {
			enabled = true,
			auto_trigger = true,
			hide_during_completion = false,
			debounce = 75,
			trigger_on_accept = true,
			keymap = {
			  accept = "<C-J>",
			  accept_word = false,
			  accept_line = false,
			  next = "<M-]>",
			  prev = "<M-[>",
			  dismiss = "<C-]>",
			},
		},
		filetypes = {
			markdown = true
		},
	})
	end,
}
