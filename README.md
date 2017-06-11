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
