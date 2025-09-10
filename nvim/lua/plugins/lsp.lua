return {
  {
    "neovim/nvim-lspconfig",

    opts = {
      servers = {
        html = {
          filetype = { "html", "php" },
        },
        cssls = {},
        jsonls = {},
        emmet_ls = {
          filetypes = { "html", "css", "php" },
        },
        tailwindcss = {
          filetypes = { "html", "css", "javascript", "typescriptreact", "php" },
        },
        phpactor = {},
        jdtls = {},
        clangd = {},
        dockerls = {},
        yamlls = {},
      },
    },
  },
}
