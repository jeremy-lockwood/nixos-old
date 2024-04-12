{ config, pkgs, ... }:

{
  home.username = "jeremy";
  home.homeDirectory = "/home/jeremy";

  home.packages = with pkgs; [
    # gui applications
    _1password-gui
    discord
    element-desktop
    firefox
    obsidian
    whatsapp-for-linux
    
    # terminal applications
    neofetch
    nnn
    
    # gnome extensions
    gnomeExtensions.appindicator
    gnomeExtensions.pano
  ];

  # basic configuration of git
  programs.git = {
    enable = true;
    userName = "jeremy-lockwood";
    userEmail = "33503380+jeremy-lockwood@users.noreply.github.com";
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    #bashrcExtra = ''
    #  export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    #'';
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#my-nixos-laptop";
      nixdir = "cd /etc/nixos && ls";
    };
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
