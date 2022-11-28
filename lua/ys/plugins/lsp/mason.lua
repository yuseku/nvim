-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
  print("mason not loaded!")
  return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  print("mason-lspconfig not loaded!")
  return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "sumneko_lua",
    "emmet_ls",
    "lemminx",
    "sqlls",
    "intelephense",
  }
})
