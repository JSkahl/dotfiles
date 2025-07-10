return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local cmp_nvim_lsp = require("cmp_nvim_lsp")
			local lspconfig = require("lspconfig")
			local util = require("lspconfig.util")

			-- Mix NeoVim built-in LSP capabilities with nvim-cmp's for autocomplete
			local capabilities = vim.tbl_deep_extend(
				"force",
				{},
				vim.lsp.protocol.make_client_capabilities(),
				cmp_nvim_lsp.default_capabilities()
			)

			-- Configure general LSP's
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.jsonls.setup({ capabilities = capabilities })
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.ast_grep.setup({ capabilities = capabilities })
			lspconfig.eslint.setup({ capabilities = capabilities })

            -- Configuration for better experience with Vue and relationed

            -- Configure vue_ls
            lspconfig.vue_ls.setup({ capabilities = capabilities })

            -- Defines root of dir to find Vue LS
            local root = util.root_pattern("jsconfig.json", "package.json", ".git")(vim.fn.getcwd())

            -- Configure ts_ls to work in Vue
            if root and vim.fn.filereadable(root .. "/package.json") == 1 then
                local vue_path = root .. "/node_modules/@vue/typescript-plugin"
                local ts_path = root .. "/node_modules/typescript/lib"

                if vim.fn.isdirectory(vue_path) == 1 then
                    lspconfig.ts_ls.setup({
                        capabilities = capabilities,
                        root_dir = root,
                        -- Tells ts_ls what to load
                        init_options = {

                            -- Loads vue plugin based on the path provided
                            plugins = {
                                {
                                    name = "@vue/typescript-plugin",
                                    location = vue_path,
                                    languages = { "vue" },
                                },
                            },
                            ts_ls = {
                                tsdk = ts_path,
                            },
                        },
                        filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
                        cmd = { "typescript-language-server", "--stdio" },
                    })
                end
            end

            -- Keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
			vim.keymap.set("n", "<leader>md", vim.lsp.buf.rename, {})
		end,
	},
}
