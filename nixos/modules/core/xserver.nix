{ pkgs, username, ... }: 
{
  services = {
    xserver = {
      xkb = {
        layout = "us";
        variant = "dvorak";
      };
      enable = true;
      videoDrivers = ["nvidia"];
      displayManager.gdm = {
        enable = true;
        wayland = true;
      };
      desktopManager.gnome.enable = true;
    };

    displayManager.autoLogin = {
      enable = true;
      user = "${username}";
    # sddm = {
    # enable = true;
    # wayland.enable = true;
    # };
    };

    libinput = {
      enable = true;
      # mouse = {
      #   accelProfile = "flat";
      # };
    };
  };
  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
