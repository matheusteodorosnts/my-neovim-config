return {
  {
    "goolord/alpha-nvim",

    config = function()
      local dashboard = require("alpha.themes.dashboard")

      local logo = [[
███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄
███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄
███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███
███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███
███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███
███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███
███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███
 ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀
]]

      dashboard.section.header.val = vim.split(logo, "\n")

      require("alpha").setup(dashboard.opts)
    end,
  },
}
