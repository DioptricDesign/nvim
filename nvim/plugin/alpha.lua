require"alpha".setup(require"alpha.themes.dashboard".config)

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
-- Header --
dashboard.section.header.val = {[[Neovim]],}
-- Menu --
dashboard.section.buttons.val = {
    dashboard.button("fn", "   New File","<cmd>ene<cr>"),
    dashboard.button("fr", "   Recent Files", "<cmd>Telescope oldfiles<cr>"),
    dashboard.button("ff", "   Find Files","<cmd>Telescope find_files hidden=true no_ignore=true<cr>"),
    dashboard.button("up", "   Update Packages", "<cmd>PackerUpdate<cr>"),
    dashboard.button("sy", "   Sync Packages", "<cmd>PackerSync<cr>"),
    dashboard.button("ls", "   Language Servers", "<cmd>Mason<cr>"),
    dashboard.button("sh", "   Shell", "<cmd>split term://$SHELL<cr>"),
    dashboard.button("cf", "   Config", "<cmd>e $MYVIMRC | :cd %:p:h<cr>"),
    dashboard.button("hl", "!   Help", "<cmd>Telescope help_tags<cr>"),
    dashboard.button("qq", "   Quit", "<cmd>qa!<cr>")
}

alpha.setup(dashboard.opts)
