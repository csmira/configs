local ELLIPSIS_CHAR = "…"
local MAX_LABEL_WIDTH = 30

local get_ws = function(max, len)
  return (" "):rep(max - len)
end

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp-signature-help",
  },
  opts = function(_, opts)
    local cmp_compare = require("cmp.config.compare")

    table.insert(opts.sources, { name = "nvim_lsp_signature_help" })

    opts.sorting = {
      comparators = {
        cmp_compare.offset,
        cmp_compare.exact,
        cmp_compare.score,
        cmp_compare.recently_used,
        cmp_compare.kind,
      },
    }
    opts.formatting = {

      format = function(_, item)
        local icons = require("lazyvim.config").icons.kinds
        local content = item.abbr
        if #content > MAX_LABEL_WIDTH then
          item.abbr = vim.fn.strcharpart(content, 0, MAX_LABEL_WIDTH) .. ELLIPSIS_CHAR
        else
          item.abbr = content .. get_ws(MAX_LABEL_WIDTH, #content)
        end
        if icons[item.kind] then
          item.kind = icons[item.kind] .. item.kind
        end
        if item.menu then
          item.abbr = item.abbr:gsub("%s+", "")
          item.menu = vim.fn.strcharpart(item.menu, 0, 15) .. ELLIPSIS_CHAR
        end

        return item
      end,
    }
  end,
}
--return {}
