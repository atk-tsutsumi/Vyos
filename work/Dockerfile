FROM eveatk/vyos

ARG CONTAINER_ID=1
RUN mkdir cfg
COPY vyos${CONTAINER_ID}.sh /cfg/config.sh
RUN find /cfg -type f -exec chmod +x {} +
