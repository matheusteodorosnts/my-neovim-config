return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
	require("nvim-treesitter").install {
	    "html", "css", "javascript", "typescript", "tsx", "jsx", "rust", "go", "dockerfile", "terraform", "lua", "vim",
	}
    end,
}
