return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'cpea2506/one_monokai.nvim'

    use {
	'alvarosevilla95/luatab.nvim', 
	requires ='kyazdani42/nvim-web-devicons' 
    }

    use {
  	'nvim-lualine/lualine.nvim',
  	requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use 'nvim-treesitter/playground'
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use {
        'nvim-tree/nvim-tree.lua',
  	requires = {
            'nvim-tree/nvim-web-devicons', 
  	},
    }
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    use 'Pocco81/auto-save.nvim'

    use {
	"windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use 'xiyaowong/nvim-transparent'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    use "lukas-reineke/indent-blankline.nvim"

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
end)
