return {
    'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        suppressed_dirs = { "~/", "~/Downloads", "/"},
      }
    end
}
