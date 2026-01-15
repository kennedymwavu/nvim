return {
  {
    "stevearc/conform.nvim",
    opts = {
      -- Formatters per filetype
      formatters_by_ft = {
        r = { "air" },

        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        markdown = { "prettier" },

        c = { "clang_format" },
        cpp = { "clang_format" },
        -- headers will typically be detected as "c"
        -- but if you use a plugin that sets them as "cpp", this covers both.

        lua = { "stylua" },

        rust = { "rustfmt" },

        go = { "goimports" },
      },
    },
  },
}
