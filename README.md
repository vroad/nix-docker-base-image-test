# Steps to reproduce

```
nix-build docker.nix
docker load -i result
```

Newly created image has nothing except aws-vault in /bin.

```
$ docker run --rm -it vroad/docker-base-image-test:latest ls -lah /bin/
total 15M
dr-xr-xr-x 2 root root 4.0K Jan  1  1980 .
drwxr-xr-x 1 root root 4.0K Jan 24 10:18 ..
-r-xr-xr-x 1 root root  15M Jan  1  1980 aws-vault
```
