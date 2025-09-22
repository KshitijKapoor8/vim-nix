# nixvim-config/flake.nix
{
  description = "Nixvim config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url  = "github:nix-community/nixvim";
  };

  outputs = { self, nixpkgs, nixvim, ... }: {
    # Export a Home-Manager module
    homeManagerModules.default = { lib, pkgs, ... }: {
      imports = [ nixvim.homeManagerModules.nixvim ];

      programs.nixvim = {
        enable = true;

        # --- your config starts here ---
        globals.mapleader = " ";
        opts = {
          number = true;
          relativenumber = true;
          shiftwidth = 2;
          tabstop = 2;
        };

        extraPackages = with pkgs; [ ripgrep fd lazygit ];  # handy CLIs

        colorschemes.tokyonight.enable = true;

        plugins = {
          treesitter.enable = true;
          telescope.enable = true;
          which-key.enable = true;

          lsp = {
            enable = true;
            servers = {
              rust_analyzer.enable = true;
              lua_ls.enable = true;
              clangd.enable = true;
            };
          };

          cmp = {
            enable = true;
            sources = [ "nvim_lsp" "buffer" "path" ];
          };
        };

        keymaps = [
          { mode = "n"; key = "<leader>ff"; action = "<cmd>Telescope find_files<CR>"; options.silent = true; }
          { mode = "n"; key = "<leader>fg"; action = "<cmd>Telescope live_grep<CR>";  options.silent = true; }
        ];
        # --- your config ends here ---
      };
    };
  };
}
