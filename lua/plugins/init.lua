return {
    {
        "nyoom-engineering/oxocarbon.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("oxocarbon")
        end,
    },

    {
        "mason-org/mason.nvim",
        opts = {}
    },

    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            local nvimTree = require("nvim-tree")
            nvimTree.setup({
                filters = {
                    dotfiles = false,
                },
                view = {
                    width = 45,
                },
            })
        end
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "ts_ls", "biome" }
        },
        dependencies = {
            "neovim/nvim-lspconfig",
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                ensure_installed = { "lua", "typescript", "tsx" },
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },

    --  {
    --      "hrsh7th/nvim-cmp",
    --      dependencies = {
    --              "hrsh7th/cmp-nvim-lsp",
    --        "hrsh7th/cmp-buffer",
    --        "hrsh7th/cmp-path",
    --        },
    --      opts = function (_, opts)
    --          local cmp = require("cmp")
    --        return {
    --            mapping = cmp.mapping.preset.insert({
    --                ["<C-Space>"] = cmp.mapping.complete(),
    --            }),
    --            sources = cmp.config.sources({{ name = "nvim_lsp" }}, {{ name = "buffer" }})
    --        }
    --      end,
    --  },

    {
        "saghen/blink.cmp",
        version = "1.*",
        opts = {
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },
            completion = {
                documentation = {
                    auto_show = true,
                },
            },
            fuzzy = {
                --implementation = "lua",
            },
        },
        opts_extend = { "sources.default" }
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        end
    },

    {
        "j-hui/fidget.nvim",
        opts = {},
    },

    {
        "MeanderingProgrammer/render-markdown.nvim",
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {},
    },
}

