{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";
  
    hypr-contrib.url = "github:hyprwm/contrib";
    hyprpicker.url = "github:hyprwm/hyprpicker";
  
    alejandra.url = "github:kamadorueda/alejandra/3.0.0";
  
    nix-gaming.url = "github:fufexan/nix-gaming";
  
    hyprland = {
      type = "git";
      url = "https://github.com/hyprwm/Hyprland";
      submodules = true;
    };
  
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    spicetify-nix = {
      url = "github:gerg-l/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };  
  };

  outputs = { self, nixpkgs, home-manager, hyprland, ... }@inputs: 
  let
    username = "ophiuchxs";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
  in
  {
    nixosConfigurations = {
      machine = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ (import ./hosts/machine) ];
        specialArgs = { host="desktop"; inherit self inputs username ; };
      };
      pyros = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ (import ./hosts/pyros) ];
        specialArgs = { host="laptop"; inherit self inputs username ; };
      };
    };
  };  
}
