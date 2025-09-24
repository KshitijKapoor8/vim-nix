{
  plugins.mini = {
    enable = true;
    modules = {
      files = {
        enable = true;
      };
    };
  };

  keymaps = [
    {
      key = "-";
      mode = [ "n" ];
      action = "<cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0), false)<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Open up mini.files";
      };
    }
  ];
}
