## Usage

``` bash
docker-compose up -d
```

You may need to wait a few seconds after the container started, because WordPress needs to copy itself. Once it is ready, visit `127.0.0.1:8080`.

You can login with user `test`, password `tsinghuauniv`.

To install plugins, attach to the container `wordpress_app`, and run the following commands:

``` bash
chmod +x /install-plugins.sh
/install-plugins.sh
```