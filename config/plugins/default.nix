{
  imports = [
    ./blink.nix
    ./bufferline.nix
    ./colorscheme.nix
    ./comment.nix
    ./conform.nix
    ./alpha.nix
    ./lsp.nix
    ./mini.nix
    ./noice.nix
    ./snacks
    ./trouble.nix
    ./gitsigns.nix
  ];

  plugins = {
    lualine.enable = true;
    lazygit.enable = true;
    persistence.enable = true;
    notify.enable = true;
    "auto-session".enable = true;
    treesitter.enable = true;
  };
}
