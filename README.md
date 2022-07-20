# Box Builder
[![Docker build and publish](https://github.com/final-gene/docker-hub-box-builder/actions/workflows/publish.yml/badge.svg)](https://github.com/final-gene/docker-hub-box-builder/actions/workflows/publish.yml)

This is a image to run [box-builder](https://github.com/box-project/box).

## How to use this image
Run the `box-builder` image:

```bash
docker run \
    --rm \
    --interactive \
    --tty \
    --volume "$(pwd)":/app \
    finalgene/box-builder build
```

For further information take a look at the [box documentation](https://github.com/box-project/box).

## Quick reference
* **Where to get help:**
[the Docker Community Forums](https://forums.docker.com), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

* **Where to file issues:**
https://github.com/finalgene/docker-hub-box-builder/issues

* **Maintained by:**
[The final gene Team](https://github.com/finalgene)

* **Source of this description:**
[Repository README.md](https://github.com/finalgene/docker-hub-box-builder/blob/master/README.md)
