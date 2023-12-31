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
  {
    "folke/neoconf.nvim",
    cmd = "Neoconf",
  },
  { 'kosayoda/nvim-lightbulb' },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  { "leoluz/nvim-dap-go" },
  { "theHamsta/nvim-dap-virtual-text" },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true,
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
  },
  "folke/neodev.nvim",
  "github/copilot.vim",
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
        api_key_cmd = "op read op://private/OpenAI-API-Key/credential --no-newline"
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },
  {
    {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.2",
      dependencies = { "nvim-lua/plenary.nvim" },
    },
    "nvim-telescope/telescope-project.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',   -- optional for vim.ui.select
    },
    config = true,
  },
  "cohama/lexima.vim",
  { 'nvim-tree/nvim-web-devicons',     opt = true },
  { "marko-cerovac/material.nvim" },
  { "romgrk/fzy-lua-native" },
  { "ThePrimeagen/vim-be-good" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "mbbill/undotree" },
  { "tpope/vim-fugitive" },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "gelguy/wilder.nvim",
    requires = {
      'nvim-tree/nvim-web-devicons',
      'romgrk/fzy-lua-native',
      opt = true
    }
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  },
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  { "lewis6991/gitsigns.nvim" },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  }
})

-- Maybe later
-- https://github.com/folke/noice.nvim
-- https://github.com/jubnzv/virtual-types.nvim
-- https://github.com/simrat39/symbols-outline.nvim
-- https://github.com/stevearc/dressing.nvim
-- https://github.com/rockerBOO/awesome-neovim
