{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/fa36ef2f25b1357feb17d7e702c6be4397647ee2";
  };
  outputs = { self, nixpkgs }: 
  let 
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
    mkClangShell = pkgs.mkShell.override { stdenv = pkgs.clangStdenv; };
    in with pkgs; {
      devShells.x86_64-linux.default = mkClangShell {
        buildInputs = [ 
          lld 
          wabt 
          nodejs-18_x 
          nodePackages.pnpm
        ];
      };
    };
}
    
