# geth

Repo geth holds the hkjn/geth images, which packages up the Ethereum
Go client inside Docker containers.

# Running

See [`geth.service`](geth.service) for an example systemd service to run the image.

# Attaching

Running a command like the following attaches to the Javascript console:
```
$ docker exec -it geth /geth attach
```

Commands can be piped into the console like:
```
$ echo eth.syncing | docker exec -i geth /geth attach
```

# Image manifests

The image manifests which allows the Docker registry 2.2+ to support multiple
CPU architectures for `hkjn/geth` currently needs to be built and pushed
using the standalone [`manifest-tool`](https://github.com/estesp/manifest-tool):

```
$ manifest-tool push from-args --platforms linux/amd64,linux/arm --template hkjn/geth:ARCH --target hkjn/geth
```
