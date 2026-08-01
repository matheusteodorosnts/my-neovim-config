return {
    {
        "romgrk/barbar.nvim",
        version = "^1.0.0",

        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },

        init = function()
            vim.g.barbar_auto_setup = false
        end,

        opts = {},

        config = function(_, opts)
            require("barbar").setup(opts)

            local map = vim.keymap.set

            -- Move to previous/next
            map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", { silent = true })
            map("n", "<A-.>", "<Cmd>BufferNext<CR>", { silent = true })

            -- Re-order to previous/next
            map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", { silent = true })
            map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", { silent = true })

            -- Goto buffer in position...
            map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", { silent = true })
            map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", { silent = true })
            map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", { silent = true })
            map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", { silent = true })
            map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", { silent = true })
            map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", { silent = true })
            map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", { silent = true })
            map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", { silent = true })
            map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", { silent = true })
            map("n", "<A-0>", "<Cmd>BufferLast<CR>", { silent = true })

            -- Pin/unpin buffer
            map("n", "<A-p>", "<Cmd>BufferPin<CR>", { silent = true })

            -- Close buffer
            map("n", "<A-c>", "<Cmd>BufferClose<CR>", { silent = true })

            -- Magic buffer-picking mode
            map("n", "<C-p>", "<Cmd>BufferPick<CR>", { silent = true })
            map("n", "<C-S-p>", "<Cmd>BufferPickDelete<CR>", { silent = true })

            -- Sort automatically by...
            map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", { silent = true })
            map("n", "<Space>bn", "<Cmd>BufferOrderByName<CR>", { silent = true })
            map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", { silent = true })
            map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", { silent = true })
            map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", { silent = true })
        end,
    },
}
