return {
    -- Explorer 
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
    
    -- Find 
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
    { "<leader>fp", function() Snacks.picker.lazy() end, desc = "Find installed plugins" },
    { "<leader>fs", function() Snacks.picker.grep() end, desc = "Find String" },

    -- Show 
    { "<leader>si", function() Snacks.picker.icons() end, desc = "Icons" },
    { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps List" },

    -- Buffers
    { "<leader>b", function() Snacks.picker.buffers() end, desc = "Buffers" },

    -- Commands
    { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader>p", function() require("dev.plugins.snacks.cmd-palette").show_commands() end, desc = "Command Palette" },

    -- Notifications
    { "<leader>N",  function() Snacks.notifier.show_history() end, desc = "Notification History" },

    -- Other
    { "<leader>su", function() Snacks.picker.undo() end, desc = "Undo History" },
    { "<leader>R", function() Snacks.rename.rename_file() end, desc = "Rename File" },





    --{ "<leader>z",  function() Snacks.zen() end, desc = "Toggle Zen Mode" },
    --{ "<leader>Z",  function() Snacks.zen.zoom() end, desc = "Toggle Zoom" },
    --{ "<leader>.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
    --{ "<leader>S",  function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },
    --{ "<leader>gB", function() Snacks.gitbrowse() end, desc = "Git Browse", mode = { "n", "v" } },
    --{ "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    --{ "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },

    -- git
    --{ "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
    --{ "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
    --{ "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git Log Line" },
    --{ "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
    --{ "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git Stash" },
    --{ "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git Diff (Hunks)" },
    --{ "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },
    --
    -- search
    --{ "<leader>sC", function() Snacks.picker.commands() end, desc = "Commands" },
    --{ "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
    --{ "<leader>sD", function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },
    --{ "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
    --{ "<leader>sH", function() Snacks.picker.highlights() end, desc = "Highlights" },
    --{ "<leader>sj", function() Snacks.picker.jumps() end, desc = "Jumps" },
    --{ "<leader>sl", function() Snacks.picker.loclist() end, desc = "Location List" },
    --{ "<leader>sm", function() Snacks.picker.marks() end, desc = "Marks" },

    --{ "<leader>sM", function() Snacks.picker.man() end, desc = "Man Pages" },
    --{"<leader>sq", function() Snacks.picker.qflist() end, desc = "Quickfix List" },
    --{ "<leader>sR", function() Snacks.picker.resume() end, desc = "Resume" },
    -- LSP
    --{ "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    --{ "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
    --{ "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    --{ "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    --{ "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
    --{ "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
    --{ "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
  }

