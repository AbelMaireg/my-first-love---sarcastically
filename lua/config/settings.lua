local options = {
    tabstop = 8,
    shiftwidth = 4,
    softtabstop = 4,
    autoindent = true,
    smartindent = true,
    breakindent = true,
    smartcase = true,
    ignorecase = true,
    wrap = true,
    linebreak = true,
    showbreak = "↪ ",
    number = true,
    relativenumber = true,
    list = true,
    listchars = { tab = '» ', trail = '·', nbsp = '␣' },
    hlsearch = false,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd('set clipboard=unnamed')
