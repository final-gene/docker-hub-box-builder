# Box Builder
[![CircleCI](https://circleci.com/gh/final-gene/docker-hub-box-builder/tree/master.svg?style=svg)](https://circleci.com/gh/final-gene/docker-hub-box-builder/tree/master) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/98beb357e84742e1b297de42b3bd6d57)](https://www.codacy.com/app/final-gene/docker-hub-box-builder?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=final-gene/docker-hub-box-builder&amp;utm_campaign=Badge_Grade)

This is a image to run [box-builder (box2)](https://github.com/box-project/box2).

## Supported tags and respective Dockerfile links
* `2.7`, `latest` [(2.7/Dockerfile)](https://github.com/finalgene/docker-hub-box-builder/blob/master/2.7/Dockerfile)

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

For further information take a look at the [box2 example application](https://github.com/box-project/box2-example).

## Quick reference
* **Where to get help:**
[the Docker Community Forums](https://forums.docker.com), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

* **Where to file issues:**
https://github.com/finalgene/docker-hub-box-builder/issues

* **Maintained by:**
[The final gene Team](https://github.com/finalgene)

* **Source of this description:**
[Repository README.md](https://github.com/finalgene/docker-hub-box-builder/blob/master/README.md)
