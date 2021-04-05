# ansible-semaphore

Installation of instances with `docker-compose`

1. Modify password on `config.json` and `docker-compose.yml`

2. Modify playbook directory on `config.json` (line with `"tmp_path": "/tmp/semaphore"` )

3. Start all services

``` bash
docker-compose up -d
```
