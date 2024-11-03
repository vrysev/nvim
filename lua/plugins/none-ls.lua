-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    -- opts variable is the default configuration table for the setup function call

    -- Only insert new sources, do not replace the existing ones
    -- Use `opts.sources = {}` if you want to replace the existing sources.
    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Set Prettier as a formatter
      require("null-ls").builtins.formatting.prettier.with {
        extra_args = {
          "--single-quote",
          "--trailing-comma=es5",
          "--arrow-parens=always",
          "--print-width=80",
          "--tab-width=2",
        },
      },
    })
  end,
}
