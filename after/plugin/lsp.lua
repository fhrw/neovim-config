local lsp = require("lsp-zero")
local lspconfig = require 'lspconfig'
require "lsp_signature".setup()

lsp.preset("recommended")

lsp.ensure_installed({
        "tsserver",
        "eslint",
        "gopls",
        "purescriptls",
        "vls"
})

local cmp = require("cmp")
local cmp_mappings = lsp.defaults.cmp_mappings({
        -- needs work for ergo completion
        ["<CR>"] = cmp.mapping.confirm({
                behavior = cmp.ConfirmBehavior.Replace,
                select = true,
        }),
})

lsp.setup_nvim_cmp({
        mapping = cmp_mappings,
})

lsp.on_attach(function(client, bufnr)
        local opts = { buffer = bufnr, remap = false }

        vim.keymap.set("n", "gd", function()
                vim.lsp.buf.definition()
        end, opts)
        vim.keymap.set("n", "K", function()
                vim.lsp.buf.hover()
        end, opts)
        vim.keymap.set("n", "<leader>vrr", function()
                vim.lsp.buf.references()
        end, opts)
        vim.keymap.set("n", "<leader>vrn", function()
                vim.lsp.buf.rename()
        end, opts)
        vim.keymap.set("i", "<C-h>", function()
                vim.lsp.buf.signature_help()
        end, opts)
        vim.keymap.set("n", "<C-n>", function()
                vim.diagnostic.goto_next()
        end, opts)
        vim.keymap.set("n", "<C-p>", function()
                vim.diagnostic.goto_prev()
        end, opts)
end)

lspconfig.purescriptls.setup {
        on_attach = on_attach,
        settings = {
                purescript = {
                        addSpagoSources = true -- e.g any puresctipt ls config here
                }
        },
        flags = {
                debounce_text_changes = 150,
        }
}

lspconfig.vls.setup {
        on_attach = on_attach
}

lsp.setup()
