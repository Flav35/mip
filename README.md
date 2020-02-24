# MIP - MyIP

[![Docker Repository on Quay](https://quay.io/repository/fydrah/mip/status "Docker Repository on Quay")](https://quay.io/repository/fydrah/mip)

Simple Dockerfile and python script:

* Ask http://ip-api.com for external IP and location
* Use [asciiworld](https://www.uninformativ.de/git/asciiworld.git) to render location

Usage:

  ```
  alias mip="docker run --rm -it quay.io/fydrah/mip:latest"
  mip
  ```

Build your own image:

  ```
  docker build . -t mip:latest
  docker run --rm -it mip:latest
  ```
