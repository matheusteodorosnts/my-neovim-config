return {
    {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
	    local toggleterm = require("toggleterm").setup()

	    vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>")
	    vim.keymap.set({ "t", "n" }, "<leader>tc", "<cmd>ToggleTermToggleAll<CR>")
	end,
    }
}
