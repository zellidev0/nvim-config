local wk = require("which-key")

wk.register({
  ["<leader>f"] = { name = "telescope" },
  ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
  ["<leader>fg"] = { "<cmd>Telescope git_files<cr>", "Find Git File" },
  ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  ["<leader>fl"] = { "<cmd>Telescope live_grep<cr>", "Find live grep" },
  ["<leader>fb"] = { "<cmd>Telescope buffers<cr>", "Find buffers" },
})

wk.register({
  ["<leader>u"] = { name = "undotree" },
  ["<leader>ut"] = { "<cmd>UndotreeToggle<cr>", "Toggle undotree" },
})

wk.register({
  ["<leader>t"] = { name = "nvimtree" },
  ["<leader>tt"] = { "<cmd>NvimTreeToggle<cr>", "Toggle nvimtree" },
  ["<leader>tf"] = { "<cmd>NvimTreeFocus<cr>", "Focus nvimtree" },
})

wk.register({
  ["<leader>e"] = { name = "trouble" },
  ["<leader>et"] = {"<cmd>TroubleToggle<cr>", "Toggle trouble" },
})

wk.register({
  ["<leader>g"] = { name = "git" },
  ["<leader>gg"] = { "<cmd>Git<cr>", "Git status" },
})
