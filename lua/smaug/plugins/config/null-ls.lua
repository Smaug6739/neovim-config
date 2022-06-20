local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return vim.notify("Cannot find the module 'null-ls'. Unable to load it.")
end

local lsp_formatting = function(bufnr)
    vim.lsp.buf.format({ bufnr = bufnr })
end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- add to your shared on_attach callback
local on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
                lsp_formatting(bufnr)
            end,
        })
    end
end

null_ls.setup {
  on_attach = on_attach,
  debug = true,
  sources = {
    -- Diagnostics
    null_ls.builtins.diagnostics.eslint,

    -- Code actions
    null_ls.builtins.code_actions.eslint,

    -- Formatting
    null_ls.builtins.formatting.prettier.with({ extra_args = { "--write" } }),
    null_ls.builtins.formatting.gofmt, -- Golang
    --null_ls.builtins.formatting.eslint,
  },
}
