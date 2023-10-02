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
  ["<leader>d"] = { name = "debugger" },
  ["<leader>dt"] = { "<cmd>lua require('dapui').toggle()<cr>", "Toggle DapUi" },
  ["<leader>db"] = { "<cmd>DapToggleBreakpoint<cr>", "Toggle Breakpoint" },
  ["<leader>dc"] = { "<cmd>DapContinue<cr>", "Debugger continue" },
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
  ["<leader>et"] = { "<cmd>TroubleToggle<cr>", "Toggle trouble" },
  ["<leader>ew"] = { "<cmd>Trouble workspace_diagnostics<cr>", "Toggle workspace diagnostics" },
  ["<leader>ed"] = { "<cmd>Trouble document_diagnostics<cr>", "Toggle document diagnostics" },
  ["<leader>eq"] = { "<cmd>Trouble quickfix<cr>", "Toggle quickfix" },
})

wk.register({
  ["<leader>c"] = { name = "gitsigns" },
  ["<leader>cp"] = { "<cmd>Gitsigns preview_hunk<cr>", "Preview Hunk" },
  ["<leader>cs"] = { "<cmd>Gitsigns stage_hunk<cr>", "Stage Hunk" },
  ["<leader>cu"] = { "<cmd>Gitsigns undo_stage_hunk<cr>", "Undo stage Hunk" },
  ["<leader>cr"] = { "<cmd>Gitsigns reset_hunk<cr>", "Reset Hunk" },
  ["<leader>cb"] = { "<cmd>Gitsigns blame_line<cr>", "Blame" },
  ["<leader>cd"] = { "<cmd>Gitsigns diffthis<cr>", "Diff Hunk" },
})
wk.register({
  ["<leader>g"] = { name = "git" },
  ["<leader>gg"] = { "<cmd>Git<cr>", "Git status" },
  ["<leader>gl"] = { "<cmd>lua _lazygit_toggle()<cr>", "Lazy Git" },
})


wk.register({
  ["<leader>cg"] = { "<cmd>ChatGPT<cr>", "Open ChatGPT" },
  ["<leader>cga"] = { "<cmd>ChatGPTActAs<cr>", "Open ChatGPT Act as" },
  ["<leader>cgi"] = { "<cmd>ChatGPTEditWithInstructions<cr>", "Open ChatGPT Interactive" },
})
