-- in lua/plugins/lsp.lua
-- return {
--     {
--         "mason-org/mason.nvim",
--         opts = {
--             ensure_installed = {
--                 "prettier",
--             },
--         },
--     },
-- }
return {
    "mason-org/mason.nvim",
    opts = {
        ensure_installed = {
            "prettier",
        },
    },

    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
}
