FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y apache2 cron
COPY crontab /etc/cron.d/crontab
RUN chmod 0644 /etc/cron.d/crontab
RUN touch /var/log/cron.log
#COPY my_first_process my_first_process
#COPY my_second_process my_second_process
COPY entrypoint.sh entrypoint.sh
RUN chmod 775 entrypoint.sh
CMD ./entrypoint.sh

