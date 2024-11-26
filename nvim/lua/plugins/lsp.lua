return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim", -- Mason extension for LSP config
    {
      "neovim/nvim-lspconfig", -- Native LSP client configuration
      -- load plugin when opening a new buffer or
      -- a new buffer for a file that does not exist.
      event = { "BufReadPre", "BufNewFile" },
      -- dependency enables autocompletion from lsp in cmp
      dependencies = { "hrsh7th/cmp-nvim-lsp" },
    },
  },

  lazy = false,

  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        -- "clangd",
        "cmake",
        "markdown_oxide",
      },
      automatic_installation = true,
    })

    -- Setup LSP servers with nvim-lspconfig
    local lspconfig = require("lspconfig")

    -- Setup cmp_nvim_lsp for autocompletion from lsp
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local opts = { noremap = true, silent = true }

    local on_attach = function(client, bufnr)
      opts.buffer = bufnr

      -- show definition, references
      vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

      -- go to declarations
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

      -- show lsp definitions
      vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

      -- show lsp implementations
      vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

      -- show lsp type definitions
      vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

      -- see available code actions, in visual mode will apply to selection
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

      -- smart rename
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

      -- show  diagnostics for file
      vim.keymap.set(
        "n",
        "<leader>D",
        "<cmd>Telescope diagnostics bufnr=0<CR>",
        opts
      )

      -- show diagnostics for line
      vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

      -- jump to previous diagnostic in buffer
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

      -- jump to next diagnostic in buffer
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

      -- show documentation for what is under cursor
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

      -- mapping to restart lsp if necessary
      vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
    end

    -- enable autocompletion from lsp
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Configure lua_ls
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
            disable = { "trailing-space" },
          },
        },
      },
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- Configure rust_analyzer
    lspconfig.rust_analyzer.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- Configure clangd
    lspconfig.clangd.setup({
      cmd = { "/usr/bin/clangd" },
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- Configure cmake
    lspconfig.cmake.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })
  end, --function
}
