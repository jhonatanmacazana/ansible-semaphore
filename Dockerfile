FROM ansiblesemaphore/semaphore:v2.7.1

ENV MYSQL_DATABASE=semaphore
ENV MYSQL_HOSTNAME=localhost
ENV MYSQL_USERNAME=root
ENV MYSQL_PASSWORD=my-secret-pw
ENV MYSQL_PORT=3306
ENV PLAYBOOK_PATH=/tmp/semaphore
ENV WEB_ROOT=
ENV OUTPUT_DIR=
ENV ADMIN_USERNAME=admin
ENV ADMIN_EMAIL=contact@jmacazana.com
ENV ADMIN_DESC="Jhonatan Macazana"
ENV ADMIN_PASSWORD=admin

WORKDIR /home/semaphore 

COPY --chown=semaphore:root ./scripts ./scripts

ENTRYPOINT [ "./scripts/entrypoint.sh" ]