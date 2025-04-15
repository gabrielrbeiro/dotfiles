return {
	{
		'neovim/nvim-lspconfig',
		event = 'VeryLazy',
		dependencies = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'Snikimonkd/cmp-go-pkgs',
			'David-Kunz/cmp-npm',
			'j-hui/fidget.nvim',
            { 'L3MON4D3/LuaSnip', build = ':!make install_jsregexp' },
			'saadparwaiz1/cmp_luasnip'
		},

		config = function()
			local cmp_lsp = require('cmp_nvim_lsp')
			local capabilities = vim.tbl_deep_extend(
				'force',
				{},
				vim.lsp.protocol.make_client_capabilities(),
				cmp_lsp.default_capabilities()
			)

			require('fidget').setup({})
			require('mason').setup()
			require('mason-lspconfig').setup({
				ensure_installed = { 'lua_ls', 'gopls', 'terraformls', 'ts_ls' },
			})

			local lspconfig = require('lspconfig')
            local lspconfig_util = require('lspconfig/util')
            local on_attach = function (_, bufnr)
                local opts = { noremap=true, silent=true, buffer=bufnr }
                vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', opts)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
                vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', opts)
            end

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    Lua = {
                        runtime = { version = 'Lua 5.1' },
                        diagnostics = {
                            globals = { 'bit', 'vim', 'it', 'describe', 'before_each', 'after_each' },
                        },
                    },
                },
            })

            lspconfig.terraformls.setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            lspconfig.gopls.setup({
                capabilities = capabilities,
                on_attach = on_attach,
                cmd = { 'gopls' },
                filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
                root_dir = lspconfig_util.root_pattern('go.work', 'go.mod', '.git'),
                settings = {
                    gopls = {
                        completeUnimported = true,
                        usePlaceholders = true,
                        analyses = {
                            unusedparams = true
                        },
                    },
                },
            })

            lspconfig.ts_ls.setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

			local cmp = require('cmp')
			local cmp_select = { behavior = cmp.SelectBehavior.Select }
			cmp.setup({
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
				mapping = {
					['<Up>'] = cmp.mapping.select_prev_item(cmp_select),
					['<Down>'] = cmp.mapping.select_next_item(cmp_select),
					['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
					['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
					['<C-Space>'] = cmp.mapping.complete(),
					['<CR>'] = cmp.mapping.confirm({ select = true }),
				},
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' },
				}, {
					{ name = 'buffer' },
					{ name = 'path' }
				})
			})
		end,
	}
}
