## CVEs

This application is vulnerable to:

- CVE-2022-2489 (`./classRoom.php`)
- CVE-2022-2490 (`./search.php`)

## Notice

MySQL host, username and password are hard-coded. Modify them in `./vcs/config/config.php`.

## Usage

``` bash
docker-compose up -d
```

Then visit `127.0.0.1:8080/vcs`.