-- Plugin loading

require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope (fuzzy finder) 
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Treesitter (code parsing library)
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/playground'
    --use("romgrk/nvim-treesitter-context")
    -- for commenting and uncommenting lines of code
    use 'terrortylor/nvim-comment'
    use 'tpope/vim-surround'

    -- Language server protocol configuration
    -- Most things happen in /after/plugin/init.lua
    use 'neovim/nvim-lspconfig'

    -- Game to get better at Vim
    use 'ThePrimeagen/vim-be-good'

    -- Themes
    use 'navarasu/onedark.nvim'
    use 'folke/tokyonight.nvim'
    use 'theprimeagen/harpoon'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
end)

require('nvim_comment').setup()
require('tokyonight').load()

