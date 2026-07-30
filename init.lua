require("config.options")
require("config.keybinds")
require("config.lazy")

vim.lsp.enable({
    "rust_analyzer",
    "gopls",
    "ts_ls",
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {
    noremap = true,
    silent = true,
})
