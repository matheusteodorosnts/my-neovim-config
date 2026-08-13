return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "html", "css", "javascript", "typescript", "tsx", "vue",
            "rust", "go", "dockerfile", "lua", "vim",
        },
        highlight = { enable = true },
    },
}
