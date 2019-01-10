FROM eveatk/vyos

ARG CONTAINER_ID=1
RUN mkdir cfg
COPY test.sh /cfg/config.sh
RUN find /cfg -type f -exec chmod +x {} +
