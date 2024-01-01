lvim.plugins = {
  -- { "ziglang/zig.vim" },
  { "ellisonleao/gruvbox.nvim", priority = 1000,   config = true },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},

  },
  { "lunarvim/colorschemes" },
  { "fatih/vim-go" },
  { "simrat39/rust-tools.nvim" },
  { 'rose-pine/neovim',         name = 'rose-pine' },
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }
    end,
  },
}
