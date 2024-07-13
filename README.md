# geyser-container

This projects started as a personal journey but evolved to a project that anyone can use to expedite running a Minecraft Geyser Server in a docker container.

There is no supported way to run Spigot in Docker, so I created my own. Following are the requirements:

## Requirements

First of all, you need a Linux server, beefy enough to support Spigot, I would say at least 2 CPUs, 16GB of memory, and at least 50G of available space. You can run in less, but you cannot expect performance to be acceptable. Plus this prjects and instructions will assume that you know how to install/setup Linux and docker. To summurize:

* A supported Linux distribution, this project assumes that you using Ubuntu
* Docker installedm, this project assumes that you are using the version from https://docs.docker.com/engine/install
* **git** installed in the system
* A user on the Linux system with docker access, or part of the docker group. In order to do that, refer to the documentation on how to add groups and users
* Ability to reach the following tcp and udp ports from the internet to the Linux server (refer to the documentation of your router/cloud provider/server to do this):
  * 19132/udp
  * 19132/tcp

You can run this on other platforms, but you will have to modify the scripts for the appropriate platform. This project assumes you are using bash interpreter. Now let get to the fun stuff.

## Clone the geyser-container repository

This section assumes that you have a working directory called **git-repos** in your **HOME** directory. To clone the repository, issue the following command:
```
mkdir ~/git-repos
cd ~/git-repos
git clone https://github.com/globular/geyser-container.git
```

## Building the base docker images

In order to build the base Docker Geyser image, issue the following commands:
```
cd ~/git-repos/geyser-container
./build.sh
```
Should an error occur during this stage, please refer to search engines and documentation to resolve.

If everything goes according to plans, you will have the image built. You can verify that with the following command:
```
docker images
```
you should an output similar to the following:
```
REPOSITORY                         TAG       IMAGE ID       CREATED          SIZE
geyser-run                         latest    f1bbbe57700f   About a minute ago   420MB
```

## Run Geyser

Now it's time to run Geyser as a container. In order to run Geyser, issue the following command:
```
./run.sh
```

## Examine the logs

In order to examine the Geyser logs. Issue the following command:
```
./logs.sh
```

This phase might take a while. All persistenc files are saved to the **workdir** directory. To exit press CTRL-C.

## Stop Geyser

To stop Geyser, issue the following command:
```
./stop.sh
```

## Update geyser

In order to update Geyser run the following commands:
```
./stop.sh
./update.sh
./run.sh
```

## Attach to the Geyser console

In order to attach to the Geyser console, issue the following command:
```
./attach.sh
```

Congratulations, you are now running Geyser in a container. To verify that the container is running. Issue the following command:
```
docker ps
```

Configuring Geyser is beyond the scope of this project, refer to the Geyser website for documentation.

Should you have suggestions or issues to report, you can post issues tp this project. Thank you.