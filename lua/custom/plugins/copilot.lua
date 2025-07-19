return
-- {
	-- "github/copilot.vim",
	-- init = function()
	-- 	vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
	-- 		expr = true,
	-- 		replace_keycodes = false
	-- 	})
	-- 	vim.g.copilot_no_tab_map = true
	-- 	vim.b.copilot_enabled = false
	-- end
-- }

{
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			panel = {
				enabled = false,
				auto_refresh = false,
				keymap = {
					jump_prev = "[[",
					jump_next = "]]",
					accept = "<CR>",
					refresh = "gr",
					open = "<M-CR>",
				},
				layout = {
					position = "bottom",
					ratio = 0.4,
				},
			},
			suggestion = {
				enabled = true,
				auto_trigger = false,
				hide_during_completion = false,
				debounce = 75,
				trigger_on_accept = true,
				keymap = {
					accept = "<C-J>",
					accept_word = "<C-L>",
					accept_line = false,
					next = "<C-K>",
				},
			},
			-- filetypes = {
			-- 	markdown = true,
			-- 	latex = true,
			-- 	lean = true,
			-- 	yaml = true,
			-- 	toml = true,
			-- 	["*"] = false
			-- },
		})
	end,
}
