local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim",    cmd = "Neoconf" },
  "folke/neodev.nvim",
  { "numToStr/Comment.nvim", commit = "97a188a98b5a3a6f9b1b850799ac078faa17ab67" },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {                            -- Optional
        'williamboman/mason.nvim',
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      {
        'hrsh7th/nvim-cmp',
        tag = "v0.0.1"
      },                          -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  },
  {
    'rose-pine/neovim',
    as = 'rose-pine',
    -- config = function()
    --     vim.cmd('colorscheme rose-pine')
    -- end
  },
  { "windwp/nvim-autopairs",   commit = "4fc96c8f3df89b6d23e5092d31c866c53a346347" },
  {
    'nvim-treesitter/nvim-treesitter',
    tag = "v0.9.1"
  },
  { 'ziglang/zig.vim' },
  { 'Mofiqul/dracula.nvim' },
  { 'simrat39/rust-tools.nvim' },
 -- { 'fatih/vim-go' }, -
  {'ray-x/go.nvim'},
  { 'ray-x/guihua.lua' },
  { 'akinsho/bufferline.nvim', dependencies = 'nvim-tree/nvim-web-devicons' },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  }
})
