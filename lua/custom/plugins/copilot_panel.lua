return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    prompts = {
       FixGrammar = {
         prompt = 'Fix all the grammar and spelling mistakes on the code',
         system_prompt = 'You are a grammar and spelling correction assistant',
         mapping = '<leader>cg',
         description = 'Fix grammar and spelling mistakes',
       }
    },
    keys = {
      {
        "<leader>cc",
        function() require("CopilotChat").toggle() end,
        desc = "Toggle Copilot Chat",
      },
    }
  },
}
