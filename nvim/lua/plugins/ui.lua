return {

  -- filename
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guibg = "#89b4fa", guifg = "#1e1e2e" },
            InclineNormalNC = { guifg = "#cba6f7", guibg = "#1e1e2e" },
          },
        },
        window = { margin = { vertical = 0, horizontal = 0 } },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename
          end

          return { filename }
        end,
      })
    end,
  },
  -- start page
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
<leader><leader> :telescope
 ]],
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          },
        },
      },
    },
  },
}
