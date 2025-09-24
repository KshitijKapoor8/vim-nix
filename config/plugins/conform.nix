{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    shfmt
  ];
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;

      format_on_save = {
        lsp_fallback = true;
        timeout_ms = 1000;
        stop_after_first = true;
      };

      formatters_by_ft = {
        rust = {
          __unkeyed-1 = "rustfmt";
          timeout_ms = 2000;
          stop_after_first = true;
        };
        # html = [
        #   [
        #     "prettierd"
        #     "prettier"
        #   ]
        # ];
        # css = [
        #   [
        #     "prettierd"
        #     "prettier"
        #   ]
        # ];
        # javascript = [
        #   [
        #     "prettierd"
        #     "prettier"
        #   ]
        # ];
        # javascriptreact = [
        #   [
        #     "prettierd"
        #     "prettier"
        #   ]
        # ];
        # typescript = [
        #   [
        #     "prettierd"
        #     "prettier"
        #   ]
        # ];
        # typescriptreact = [
        #   [
        #     "prettierd"
        #     "prettier"
        #   ]
        # ];
        # python = [ "black" ];
        # lua = [ "stylua" ];
        nix = {
          __unkeyed-1 = "alejandra";
          timeout_ms = 2000;
          stop_after_first = true;
        };
        # markdown = [
        #   [
        #     "prettierd"
        #     "prettier"
        #   ]
        # ];
        # yaml = [
        #   "yamllint"
        #   "yamlfmt"
        # ];
        # terragrunt = [ "hcl" ];
        # bash = [ "shfmt" ];
        # sh = [ "shfmt" ];
      };
    };
  };
}
