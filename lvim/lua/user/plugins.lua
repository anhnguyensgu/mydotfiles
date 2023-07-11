lvim.plugins = {
  -- { "ziglang/zig.vim" },
  { "lunarvim/colorschemes" },
  { "fatih/vim-go" },
  { "simrat39/rust-tools.nvim" },
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
