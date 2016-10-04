# Wiremock Docker

Docker container with the Wiremock HTPP.

[![](https://images.microbadger.com/badges/version/sigrist/wiremock.svg)](https://microbadger.com/images/sigrist/wiremock "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sigrist/wiremock.svg)](https://microbadger.com/images/sigrist/wiremock "Get your own image badge on microbadger.com")

Pull the image:
```
docker pull sigrist/wiremock
```

Running:

Put your wiremock configuration files in any folder and export it as `/data` to the docker container. Any parameter to wiremock must be provided after the image name. If you want to access wiremock outside the container, remember to export the ports:

```
docker run -it -p 9999:9999 -v /my/host/configuration/folder:/data sigrist/wiremock --port 9999
```
