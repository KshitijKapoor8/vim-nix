{
  imports = [
    ./blink.nix
    ./bufferline.nix
    ./colorscheme.nix
    ./comment.nix
    ./conform.nix
    ./dashboard.nix
    ./lsp.nix
    ./mini.nix
    ./noice.nix
    ./snacks
  ];

  plugins = {
    lualine.enable = true;
    lazygit.enable = true;
    persistence.enable = true;
    notify.enable = true;
    "auto-session".enable = true;
  };
}
