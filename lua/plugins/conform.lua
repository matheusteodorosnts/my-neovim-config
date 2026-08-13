return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                javascript = { "prettier" },
                javascriptreact = { "prettier" },
                typescript = { "prettier" },
                typescriptreact = { "prettier" },
                vue = { "prettier" },
                rust = { "rustfmt" },
                go = { "gofmt" },
            },
        },
        keys = {
            {
                "<leader>f",
                function()
                    require("conform").format({ async = true, lsp_format = "fallback" }, function()
                        vim.cmd("write")
                    end)
                end,
                desc = "Format and save buffer",
            },
        },
    },
}
