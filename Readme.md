# Trackmania Nations United/Forever Dedicated Server Windows Docker Image

First crack at a Docker image for a Trackmania Nations server.

Slap the [dedicated server files](http://www.tm-forum.com/viewtopic.php?t=14203) in `Game/` and build the image with

```cmd
docker build -t trackmania .
```

When you run the image, it will automatically place server config files and tracks in a volume called `_data`. On Windows, you can usually find this in `%ProgramData%\docker\volumes`.

Recommend running on a transparent network interface and setting a static IP to port forward to. Limiting CPU and memory is also a decent idea just in case something goes haywire.

Example run:

```cmd
docker run --name trackmania --detach --restart always --cpus 1 --memory 2GB --network=statictlan --hostname trackmania --ip 192.168.1.5 trackmania
```

## Config stuff

You need an account for internet servers. For Trackmania Nations United, you can create one here: http://official.trackmania.com/tmf-playerpage/

For Trackmania Nations Forever, just create one in the game and use that.

Slap the username and password in `_data/Config/dedicated_cfg.txt`

## Resources

[This forum post](http://www.tm-forum.com/viewtopic.php?t=14203)