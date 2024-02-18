vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
        -- Packer can manage itself
        use("wbthomason/packer.nvim")
        use {
                "mcchrish/zenbones.nvim",
                -- Optionally install Lush. Allows for more configuration or extending the colorscheme
                -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
                -- In Vim, compat mode is turned on as Lush only works in Neovim.
                requires = "rktjmp/lush.nvim"
        }
        use({
                "nvim-telescope/telescope.nvim",
                tag = "0.1.1",
                -- or                            , branch = '0.1.x',
                requires = { { "nvim-lua/plenary.nvim" } },
        })
        use("pappasam/papercolor-theme-slim")
        use("jeffkreeftmeijer/vim-dim")
        use("chriskempson/base16-vim")
        use("yorickpeterse/vim-paper")
        use({
                "svrana/neosolarized.nvim",
                requires = { "tjdevries/colorbuddy.nvim" },
        })
        use({
                "neanias/everforest-nvim",
                -- Optional; default configuration will be used if setup isn't called.
                config = function()
                        require("everforest").setup({
                                background = "medium"
                        })
                end,
        })
        use("rebelot/kanagawa.nvim")
        use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
        use("mbbill/undotree")
        use({
                "VonHeikemen/lsp-zero.nvim",
                branch = "v2.x",
                requires = {
                        -- LSP Support
                        { "neovim/nvim-lspconfig" }, -- Required
                        {                            -- Optional
                                "williamboman/mason.nvim",
                                run = function()
                                        pcall(vim.cmd, "MasonUpdate")
                                end,
                        },
                        { "williamboman/mason-lspconfig.nvim" }, -- Optional

                        -- Autocompletion
                        { "hrsh7th/nvim-cmp" },     -- Required
                        { "hrsh7th/cmp-nvim-lsp" }, -- Required
                        { "L3MON4D3/LuaSnip" },     -- Required
                },
        })
        use {
                "ray-x/lsp_signature.nvim",
        }
        use("windwp/nvim-autopairs")
        use("windwp/nvim-ts-autotag")
        use("nvim-lua/plenary.nvim")
        use('mfussenegger/nvim-jdtls')
        use { 'nvim-orgmode/orgmode', config = function()
                require('orgmode').setup {}
        end
        }
        use("dhruvasagar/vim-table-mode")
        use({
                'echasnovski/mini.trailspace',
                branch = 'stable',
        })
        use("christoomey/vim-tmux-navigator")
        use("tpope/vim-commentary")
        use("tpope/vim-surround")
end)
