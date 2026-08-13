return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require("blink.cmp").get_lsp_capabilities()

        lspconfig.rust_analyzer.setup({
            capabilities = capabilities,
            settings = {
                ["rust-analyzer"] = {
                    checkOnSave = { command = "clippy" },
                },
            },
        })

        lspconfig.gopls.setup({
            capabilities = capabilities,
            settings = {
                gopls = {
                    analyses = { unusedparams = true },
                    staticcheck = true,
                },
            },
        })

        lspconfig.ts_ls.setup({
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

        lspconfig.volar.setup({
            capabilities = capabilities,
        })

        lspconfig.cssls.setup({
            capabilities = capabilities,
        })

        lspconfig.html.setup({
            capabilities = capabilities,
        })
    end,
}
