{ pkgs, ... }: 
{
  programs.micro = {
    enable = true;
    
    settings = {
      "colorscheme" = "gruvbox";
      "*.nix" = {"tabsize" = 2;};
      "*.ml"  = {"tabsize" = 2;};
      "*.sh"  = {"tabsize" = 2;};
      "makefile" = {"tabstospaces" = false;};
      "tabstospaces" = true;
      "tabsize" = 4;
      "mkparents" = true;
    };
  };

  xdg.configFile."micro/bindings.json".text = ''
    {
      "Ctrl-Up": "CursorUp,CursorUp,CursorUp,CursorUp,CursorUp",
      "Ctrl-Down": "CursorDown,CursorDown,CursorDown,CursorDown,CursorDown",
      "Ctrl-Backspace": "DeleteWordLeft",
      "Ctrl-Delete": "DeleteWordRight",
      "CtrlShiftUp": "ScrollUp,ScrollUp,ScrollUp,ScrollUp,ScrollUp",
      "CtrlShiftDown": "ScrollDown,ScrollDown,ScrollDown,ScrollDown,ScrollDown"
    }
  '';

  xdg.configFile."micro/colorschemes/gruvbox.micro".text = ''
    color-link default "#ebdbb2,#1d2021"
    color-link comment "#928374,#1d2021"
    color-link symbol "#d79921,#1d2021"
    color-link constant "#d3869b,#1d2021"
    color-link constant.string "#b8bb26,#1d2021"
    color-link constant.string.char "#b8bb26,#1d2021"
    color-link identifier "#8ec07c,#1d2021"
    color-link statement "#fb4934,#1d2021"
    color-link preproc "#fb4934,235"
    color-link type "#fb4934,#1d2021"
    color-link special "#d79921,#1d2021"
    color-link underlined "underline #1d2021"
    color-link error "#9d0006,#1d2021"
    color-link hlsearch "#1d2021,#fabd2f"
    color-link diff-added "#00AF00"
    color-link diff-modified "#FFAF00"
    color-link diff-deleted "#D70000"
    color-link gutter-error "#fb4934,#1d2021"
    color-link gutter-warning "#d79921,#1d2021"
    color-link line-number "#665c54"
    color-link current-line-number "#8ec07c,#1d2021"
    color-link cursor-line "#3c3836"
    color-link color-column "#665c54"
    color-link statusline "#8ec07c"
    color-link tabbar "#ebdbb2,#665c54"
    color-link type "#fe8019,#1d2021"
    color-link todo "#ffcc00,#1d2021"
  '';
}
