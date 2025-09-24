{
    plugins.bufferline = {
        enable = true;

        settings = {
            options = {
                diagnostics = "nvim_lsp";
                mode = "buffers";

                always_show_bufferline = false;

                close_icon = " ";
                buffer_close_icon = "󰱝 ";
                modified_icon = "󰔯 ";
                close_command = ''
                    function (n)
                        Snacks.bufdelete(n)
                    end
                '';

                right_mouse_command = ''
                    function (n)
                        Snacks.bufdelete(n)
                    end
                '';
            };
        };
    };

    keymaps = [

        {
            key = "<leader>bp";
            mode = [ "n" ];
            action = "<cmd>BufferLineTogglePin<CR>";
            options = {
                desc = "Pin/unpin current buffer";
            };
        }

        { 
            key = "<leader>br"; 
            mode = [ "n" ];
            action = "<cmd>BufferLineGroupCloseRight<CR>";
            options = {
                desc = "Close buffers to the right";
            };
        }

        { 
            key = "<leader>bl"; 
            mode = [ "n" ];
            action = "<cmd>BufferLineGroupCloseLeft<CR>";
            options = {
                desc = "Close buffers to the left";
            };
        }

        { 
            key = "<leader>bd"; 
            mode = [ "n" ];
            action = "<cmd>bdelete<CR>";
            options = {
                desc = "Close current buffer";
            };
        }

        {
          mode = "n";
          key = "<S-l>";
          action = "<cmd>BufferLineCycleNext<cr>";
          options = {
            desc = "Cycle to next buffer";
          };
        }

        {
          mode = "n";
          key = "<S-h>";
          action = "<cmd>BufferLineCyclePrev<cr>";
          options = {
            desc = "Cycle to previous buffer";
          };
        }

    ];
}
