return {
  -- Other plugins
  {
    "echasnovski/mini.completion",
    version = false, -- Use latest version
    config = function()
      require("mini.completion").setup()
    end,
  },
}
