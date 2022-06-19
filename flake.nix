{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/8b3c33e3202f6649774f7d3f94d092b5897d2155";

  outputs = { self, nixpkgs }: let
    pkgs = import nixpkgs { system = "x86_64-linux"; };
  in {
    packages.x86_64-linux.test = ''--path1 ${pkgs.htop} --path2 ${pkgs.tree}'';
    defaultPackage.x86_64-linux = self.packages.x86_64-linux.test;
  };
}
