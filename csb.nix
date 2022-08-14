with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "node";
    buildInputs = [
        nodejs
        htop
    ];
    shellHook = ''
        export PATH="$PWD/node_modules/.bin/:$PATH"
    '';
}

environment.systemPackages = [
    pkgs.rustup
    pkgs.rustc
    pkgs.cargo
    pkgs.vscode-extensions.matklad.rust-analyzer 
];
