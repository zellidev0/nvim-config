require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "javascript", "typescript", "kotlin", "dart", "rust", "lua", "vim", "vimdoc", "query", "go" },
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    incremental_selection = {
        enable = tnue,
        keymaps = {
            init_selection = "gnn", -- set to `false` to disable one of the mappings
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    }
}