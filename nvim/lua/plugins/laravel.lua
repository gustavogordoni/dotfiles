return {
  {
    "adalessa/laravel.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "tpope/vim-dotenv",
    },
    cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
    keys = {
      { "<leader>la", ":Artisan<cr>", desc = "Artisan" },
      { "<leader>lr", ":Laravel routes<cr>", desc = "Routes" },
      { "<leader>lm", ":Laravel models<cr>", desc = "Models" },
    },
    opts = {},
  },
}
