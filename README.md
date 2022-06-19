
# Repro for a bug in nix eval

I'm using Nix 2.8.0. To reproduce:

``` shell
# Run the following command and it works the first time
> nix eval --raw .#test
--path1 /nix/store/3jla9hg3dx5igw4x7xka3dp86b1afknj-htop-3.2.0 --path2 /nix/store/mzifyzgkfqrwhk8ih5qfa4dm19k4n7v1-tree-1.8.0

# Run it again
> nix eval --raw .#test
error: path '/nix/store/gvaxap80am19m28ds5iy9bwr4xlv4p2b-htop-3.2.0.drv !out!/nix/store/wrlxhz69ch4050rry1adglil7lry4d7w-tree-1.8.0.drv' is not in the Nix store
```
