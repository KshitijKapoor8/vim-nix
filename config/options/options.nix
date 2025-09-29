{ self, ... }:
{
  waylandSupport = true;
  globalOpts = {
    # line number opts
    number = true;
    relativenumber = true;

    # better colors
    termguicolors = true;

    # better completion options
    completeopt = [
      "menuone"
      "noselect"
      "noinsert"
    ];

    signcolumn = "yes:3";

    mouse = "a";

    # search opts
    ignorecase = true;
    smartcase = true;

    # splits will default open how
    splitright = true;
    splitbelow = true;

    # set tab preferences
    expandtab = true;
    tabstop = 4;
    softtabstop = 4;
    shiftwidth = 4;

    # set system clipboard
    clipboard = {
      providers.wl-copy.enable = true;
      register = "wl-copy";
    };

    encoding = "utf-8";
    fileencoding = "utf-8";

    undofile = true;
    swapfile = true;
    backup = false;
    autoread = true;

    # highlight cursor line
    cursorline = true;

    # show line and column while searching
    ruler = true;

  };

  diagnostics = {
    update_in_insert = true;
    severity_sort = true;
    float = {
      border = "rounded";
    };
    jump = {
      severity.__raw = "vim.diagnostic.severity.WARN";
    };
  };

  # set leader
  globals.mapleader = " ";

}
