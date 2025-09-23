{
  imports = [
    ./colorscheme.nix
    ./comment.nix
    ./conform.nix
    ./dashboard.nix
    ./lsp.nix
    ./snacks
  ];

  plugins = {
    lualine.enable = true;
  };
}
