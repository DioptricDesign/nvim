local status, packer = pcall(require, 'packer')
if (not status) then
    print("packer is not installed...")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    -- Package Manager --
    use 'wbthomason/packer.nvim'
    -- lualine --
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- Language Parsing Colors --
    use 'nvim-treesitter/nvim-treesitter'
    -- Color Scheme --
    use {
        'gruvbox-community/gruvbox',
    }
    -- Auto Pairs --
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use 'windwp/nvim-ts-autotag'
    --Fuzzy Finder --
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Icons --
    use 'nvim-tree/nvim-web-devicons' 
    -- Tabs --
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}
    -- LSP --
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
    -- Dashboard --
        use {
        "goolord/alpha-nvim",

        requires = {"nvim-tree/nvim-web-devicons"},

    }
end)

