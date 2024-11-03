return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup {
        defaults = {},
      }

      -- Set up keybindings
      local opts = { noremap = true, silent = true }
      vim.api.nvim_set_keymap("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", opts)
    end,
  },
}
