local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end
local status3, mason_null_ls = pcall(require, "mason-null-ls")
if (not status3) then return end




mason.setup()

lspconfig.setup {
  automatic_installation = true,
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "sumneko_lua"
  }
}

mason_null_ls.setup {
  ensure_installed = {
    "prettier",
    "stylua",
    "eslint_d",
  }
}
