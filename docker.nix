let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  baseImage = pkgs.dockerTools.pullImage {
    imageName = "centos";
    imageDigest = "sha256:dbbacecc49b088458781c16f3775f2a2ec7521079034a7ba499c8b0bb7f86875";
    finalImageTag = "centos8.3.2011";
    sha256 = "1xx60cp2qb7vjyr0im1bkwlx539siipmnrvn9pn5axisi4df5qwl";
  };
in
  pkgs.dockerTools.buildImage {
    name = "vroad/docker-base-image-test";
    tag = "latest";
    fromImage = baseImage;
    contents = with pkgs; [
      aws-vault
    ];
  }
