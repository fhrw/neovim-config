vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        -- or                            , branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" } },
    })
    use("pappasam/papercolor-theme-slim")
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
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")
    use("nvim-lua/plenary.nvim")
    use('mfussenegger/nvim-jdtls')
    use { 'nvim-orgmode/orgmode', config = function()
        require('orgmode').setup {}
    end
    }
    use("dhruvasagar/vim-table-mode")
end)
