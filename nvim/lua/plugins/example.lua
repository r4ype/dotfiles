return {

  -- Core LSP configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        clangd = {},
        rust_analyzer = {},
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

  -- Rust-specific tools
  {
    "simrat39/rust-tools.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("rust-tools").setup({
        server = {
          on_attach = function(_, bufnr)
            local opts = { noremap = true, silent = true, buffer = bufnr }
            vim.keymap.set("n", "<leader>ca", require("rust-tools").hover_actions.hover_actions, opts)
            vim.keymap.set("n", "<leader>cc", require("rust-tools").code_action_group.code_action_group, opts)
          end,
        },
      })
    end,
  },

  -- Treesitter for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "python",
        "c",
        "cpp",
        "rust",
        "javascript",
        "typescript",
        "lua",
        "html",
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
        "pyright",
        "flake8",
        "clangd",
        "rust-analyzer",
        "codelldb",
        "lua-language-server",
        "typescript-language-server",
      },
    },
  },

  -- Telescope with FZF for faster searching
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
