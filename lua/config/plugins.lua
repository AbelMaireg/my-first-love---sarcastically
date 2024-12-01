lvim.plugins = {
    { "jiaoshijie/undotree", dependencies = "nvim-lua/plenary.nvim", config = true, keys = { { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" }, }, },
    { "christoomey/vim-tmux-navigator" },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "folke/todo-comments.nvim" },
    { "sindrets/diffview.nvim" },
    { "AckslD/nvim-neoclip.lua" },
    { "kylechui/nvim-surround", version = "*", event = "VeryLazy", config = function() require("nvim-surround").setup({}) end },
    { "sbdchd/neoformat" },
    { 'rmagatti/auto-session', },
}

-- local nvim_lsp = require('lspconfig')

-- nvim_lsp.denols.setup {
--     on_attach = on_attach,
--     root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
-- }

-- nvim_lsp.tsserver.setup {
--     on_attach = on_attach,
--     root_dir = nvim_lsp.util.root_pattern("package.json"),
--     single_file_support = false
-- }
