return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      on_highlights = function(hl, c)
        hl.CursorLineNr = { fg = c.white }
        hl.LineNrAbove = { fg = "#928374" }
        hl.LineNrBelow = { fg = "#928374" }
      end,
    },
  },
}
