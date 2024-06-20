local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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


local plugins = {
    -- 主题
    "folke/tokyonight.nvim",

    -- 状态栏
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },

    -- markdown 实时渲染
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    -- 文档树
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },

    -- 用ctl-hjkl来定位窗口 
    "christoomey/vim-tmux-navigator",

    -- masion 管理 lsp linter formatter
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim", -- 这个相当于mason.nvim和lspconfig的桥梁
        "neovim/nvim-lspconfig"
    },


    -- 自动补全
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",

    -- 自动补全括号，引号
    "windwp/nvim-autopairs", 

    -- 语法高亮
    "nvim-treesitter/nvim-treesitter",

    -- 配合treesitter，不同括号颜色区分
    "p00f/nvim-ts-rainbow",

    -- tab 标签页
    "akinsho/bufferline.nvim"


--    "lewis6991/gitsigns.nvim", -- 左则git提示
}

local opts = {}

require("lazy").setup(plugins, opts)
