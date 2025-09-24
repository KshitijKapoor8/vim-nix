{
  plugins.nvim-cmp = {
    enable = true;

    # [] means “no special filetypes”; set e.g. [ "lua" "rust" ] if desired
    autoBrackets = [ ];

    completion.completeopt = "menu,menuone,noinsert";
    # auto_select = true → preselect item
    preselect = "Item"; # or "None"

    # keymaps
    mapping = {
      "<C-b>" = {
        __raw = "cmp.mapping.scroll_docs(-4)";
      };
      "<C-f>" = {
        __raw = "cmp.mapping.scroll_docs(4)";
      };
      "<C-n>" = {
        __raw = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert })";
      };
      "<C-p>" = {
        __raw = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })";
      };
      "<C-Space>" = {
        __raw = "cmp.mapping.complete()";
      };

      # LazyVim helpers — keep if you use LazyVim; otherwise use cmp.mapping.confirm
      "<CR>" = {
        __raw = "LazyVim.cmp.confirm({ select = true })";
      };
      "<C-y>" = {
        __raw = "LazyVim.cmp.confirm({ select = true })";
      };
      "<S-CR>" = {
        __raw = "LazyVim.cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace })";
      };
      "<C-CR>" = {
        __raw = "function(fallback) cmp.abort(); fallback(); end";
      };
      "<Tab>" = {
        __raw = "function(fallback) return LazyVim.cmp.map({ 'snippet_forward', 'ai_accept' }, fallback)() end";
      };
    };

    sources = [
      { name = "lazydev"; }
      { name = "nvim_lsp"; }
      { name = "path"; }
      # second group
      { name = "buffer"; }
    ];

    # formatting with icon + width clamping
    formatting = {
      format = {
        __raw = ''
          function(entry, item)
            local icons = LazyVim and LazyVim.config.icons.kinds or {}
            if icons[item.kind] then
              item.kind = icons[item.kind] .. item.kind
            end

            local widths = {
              abbr = (vim.g.cmp_widths and vim.g.cmp_widths.abbr) or 40,
              menu = (vim.g.cmp_widths and vim.g.cmp_widths.menu) or 30,
            }
            for key, width in pairs(widths) do
              if item[key] and vim.fn.strdisplaywidth(item[key]) > width then
                item[key] = vim.fn.strcharpart(item[key], 0, width - 1) .. "…"
              end
            end
            return item
          end
        '';
      };
    };

    experimental = {
      ghost_text = {
        __raw = "vim.g.ai_cmp and { hl_group = 'CmpGhostText' } or false";
      };
    };

    # use cmp defaults sorting
    sorting = {
      __raw = "require('cmp.config.default')().sorting";
    };
  };
}
