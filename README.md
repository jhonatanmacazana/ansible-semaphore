# ansible-semaphore

Installation of instances with `docker-compose`

1. Make an `.env` file from the `.env.example` file

2. Modify your credentials as needed.

``` bash
# This variable points to the playbook path from the HOST machine
PLAYBOOK_PATH=123

# This variable defines the port where the web will be seen from.
WEB_PORT=
```

3. Build and start the services

``` bash
docker-compose up -d
```
