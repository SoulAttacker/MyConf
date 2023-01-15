local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local setup = {
  plugins = {
    marks = false, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = false, -- bindings for folds, spelling and others prefixed with z
      g = false, -- bindings for prefixed with g
    },
  },
  key_labels = {
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = "<c-d>", -- binding to scroll down inside the popup
    scroll_up = "<c-u>", -- binding to scroll up inside the popup
  },
  window = {
    border = "rounded", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  triggers_blacklist = {
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<Space>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  ["r"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },

  ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
  ["C"] = { "<cmd>%bd|e#<CR>", "Close Other Buffers" },
  ["f"] = {
    "<cmd>lua require('telescope.builtin').find_files()<cr>",
    "Find files",
  },
  ["F"] = { "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args(require('telescope.themes').get_ivy())<cr>", "Find Text" },
  ["s"] = {
    "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>",
    "Find Document Symbols",
  },
  ["S"] = {
    "<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<cr>",
    "Find Symobls",
  },
  ["T"] = {
    "<cmd>SymbolsOutline<cr>",
    "Outline"
  },

  b = {
    name = "Buffer",
    a = {"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>", "AllBuffer"},
    n = {"<cmd>bn<cr>", "NextBuffer"},
    p = {"<cmd>bp<cr>", "PreviousBuffer"},
    c = {"<cmd>bdelete%<cr>", "CloseCurrentBuffer"}
  },

  c = {
    name = "CMake",
    g = {"<cmd>CMake configure<CR>", "Configure"},
    t = {"<cmd>CMake select_target<CR>", "SelectTarget"},
    T = {"<cmd>CMake select_build_type<CR>", "SelectBuildType"},
    b = {"<cmd>CMake build<CR>", "BuildTarget"},
    a = {"<cmd>CMake build_all<CR>", "BuildAll"},
    r = {"<cmd>CMake build_and_run<CR>", "Run"},
    d = {"<cmd>CMake build_and_debug<CR>", "DebugTarget"},
    c = {"<cmd>CMake cancel<CR>", "Cancel"},
    C = {"<cmd>CMake create_project<CR>", "New Project"},
    s = {"<cmd>CMake set_target_args<CR>", "SetArg"},
  },

  d = {
    name = "Debug",
    R = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run to Cursor" },
    E = { "<cmd>lua require'dapui'.eval(vim.fn.input '[Expression] > ')<cr>", "Evaluate Input" },
    X = { "<cmd>lua require'dap'.terminate()<cr>", "Terminate" },
    T = { "<cmd>lua require'dapui'.toggle('sidebar')<cr>", "Toggle Sidebar" },
    p = { "<cmd>lua require'dap'.pause()<cr>", "Pause" },
    r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
    q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },

  },

  h = {
    name = "Help",
    c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
    h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
    M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    R = { "<cmd>Telescope registers<cr>", "Registers" },
    k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    C = { "<cmd>Telescope commands<cr>", "Commands" },
  },

  t = {
    name = "Terminal",
    t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
    p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
    f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
    h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
    v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
  },


}

which_key.setup(setup)
which_key.register(mappings, opts)
