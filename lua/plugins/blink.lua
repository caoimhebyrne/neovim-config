return {
    "saghen/blink.cmp",
    version = "1.*",
    opts = {
        sources = {
            default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
        },
        completion = {
            documentation = {
                auto_show = true,
            },
        },
    },
    opts_extend = { "sources.default" },
}
