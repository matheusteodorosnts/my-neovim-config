return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("blink.cmp").get_lsp_capabilities()

        vim.lsp.config("rust_analyzer", {
            capabilities = capabilities,
            settings = {
                ["rust-analyzer"] = {
                    checkOnSave = { command = "clippy" },
                },
            },
        })

        vim.lsp.config("gopls", {
            capabilities = capabilities,
            settings = {
                gopls = {
                    analyses = { unusedparams = true },
                    staticcheck = true,
                },
            },
        })

        vim.lsp.config("ts_ls", {
            capabilities = capabilities,
            init_options = {
                plugins = {
                    {
                        name = "@vue/typescript-plugin",
                        location = vim.fn.exepath("vue-language-server"):gsub("/bin/vue%-language%-server", "/lib/node_modules/@vue/language-server"),
                        languages = { "vue" },
                    },
                },
            },
            filetypes = {
                "typescript",
                "javascript",
                "javascriptreact",
                "typescriptreact",
                "vue",
            },
        })

        vim.lsp.config("volar", {
            capabilities = capabilities,
        })

        vim.lsp.config("cssls", {
            capabilities = capabilities,
        })

        vim.lsp.config("html", {
            capabilities = capabilities,
        })

        vim.lsp.enable({
            "rust_analyzer",
            "gopls",
            "ts_ls",
            "volar",
            "cssls",
            "html",
        })
    end,
}
