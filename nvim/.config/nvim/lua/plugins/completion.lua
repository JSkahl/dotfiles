return {
    {
        "hrsh7th/cmp-path", -- Completion for filesystem path
    },
    {
        "hrsh7th/cmp-nvim-lsp", -- Integration with LSP
    },
    {
        "L3MON4D3/LuaSnip", -- Great snippets thank you TJ

        dependencies = {
            "saadparwaiz1/cmp_luasnip", -- Allow nvim-cmp to use LuaSnip
            "rafamadriz/friendly-snippets", -- 	Community-curated snippets: js, ts, html and more
        },
    },
    {
        "hrsh7th/nvim-cmp", -- Autocompletion engine
        version = false,

        config = function()
            local cmp = require("cmp")

            -- Load snippets from friendly-snippets
            require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },

                -- Keymaps
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),

                -- Snippets order
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "path" },
                    { name = "buffer" },
                }),
            })
        end,
    },
}
