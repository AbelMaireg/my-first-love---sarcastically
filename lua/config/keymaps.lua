local function delete_keymap_if_exists(mode, key)
    local keymaps = vim.api.nvim_get_keymap(mode)

    for _, keymap in ipairs(keymaps) do
        if keymap.lhs == key then
            vim.api.nvim_del_keymap(mode, key)
            print("Deleted keymap for: " .. key)
            return
        end
    end
end

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local map_cmd = vim.api.nvim_create_user_command;

delete_keymap_if_exists('n', '<space>f')
delete_keymap_if_exists('n', '<leader>f')

local function set_general_keymaps()
    map('i', 'jk', '<Esc>')
    map('n', '<C-p>', '"+p')
    map('v', '<C-p>', '"+p')

    map('n', '<C-y>', '"+y')
    map('v', '<C-y>', '"+y')
end

local function set_navigation_keymaps()
    map('n', '<S-h>', ':bprev<CR>')
    map('n', '<S-l>', ':bnext<CR>')

    vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
    vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
    vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
    vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
end

local function set_telescope_keymaps()
    map_cmd("Tlg", "Telescope live_grep", {})
    map_cmd("Tbf",  "Telescope buffers", {})
    map_cmd("Tgs", "Telescope git_status", {})
    map_cmd("Tgc", "Telescope git_commits", {})
    map_cmd("Tff", "Telescope find_files", {})
end

local function load_keymaps()
    set_general_keymaps()
    set_navigation_keymaps()
    set_telescope_keymaps()
end

load_keymaps()
