{
  keymaps = [

    {
      key = "<leader>h";
      mode = [ "n" ];
      action = "<cmd>vsplit<CR>";
      options = {
        silent = true;
        noremap = true;
      };
    }

    {
      key = "<leader>v";
      mode = [ "n" ];
      action = "<cmd>split<CR>";
      options = {
        silent = true;
        noremap = true;
      };
    }

    {
      key = "<leader>q";
      mode = [ "n" ];
      action = "<cmd>qall!<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Quit everything and discard changes";
      };
    }

    # pane switching bindings
    {
      key = "<C-h>";
      mode = [ "n" ];
      action = "<C-w>h";
      options = {
        silent = true;
        noremap = true;
        desc = "Move focus left";
      };
    }
    {
      key = "<C-j>";
      mode = [ "n" ];
      action = "<C-w>j";
      options = {
        silent = true;
        noremap = true;
        desc = "Move focus down";
      };
    }
    {
      key = "<C-k>";
      mode = [ "n" ];
      action = "<C-w>k";
      options = {
        silent = true;
        noremap = true;
        desc = "Move focus up";
      };
    }
    {
      key = "<C-l>";
      mode = [ "n" ];
      action = "<C-w>l";
      options = {
        silent = true;
        noremap = true;
        desc = "Move focus right";
      };
    }
    {
      key = "<C-r>";
      mode = [ "n" ];
      action = "<C-w>r";
      options = {
        silent = true;
        noremap = true;
        desc = "Switch open pannels";
      };
    }
  ];
}
