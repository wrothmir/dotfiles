{ pkgs, ... }:
{  
  hardware = {
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
      ];
    };
    pulseaudio.enable = true;
  };
  hardware.enableRedistributableFirmware = true;
}
