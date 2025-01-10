return {

  -- Core LSP configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {},
        tsserver = {},
        lua_ls = {
          settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              diagnostics = { globals = { "vim" } },
              workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
              },
              telemetry = { enable = false },
            },
          },
        },
      },
    },
  },

  -- Treesitter for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "regex",
        "html",
        "c",
        "cpp",
        "rust",
        "javascript",
        "typescript",
        "lua",
        "python",
        "css",
        "json",
        "yaml",
      },
    },
  },

  -- Mason for managing LSP tools
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "codelldb",
        "lua-language-server",
        "typescript-language-server",
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },

  -- Telescope with FZF for faster searching
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fa",
        function()   require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
     end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },

    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
