-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").air.setup({
  -- on_attach = function(_, bufnr)
  --   vim.api.nvim_create_autocmd("BufWritePre", {
  --     buffer = bufnr,
  --     callback = function()
  --       vim.lsp.buf.format()
  --     end,
  --   })
  -- end,
})

require("lspconfig").r_language_server.setup({
  on_attach = function(client, _)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
})

require("gitsigns").setup({
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 300,
    virt_text_pos = "eol",
  },
})

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "eslint_d", "prettier" },
    css = { "prettier" },
  },
})
