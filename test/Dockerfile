FROM eveatk/vyos

RUN mkdir test
COPY test1.sh /test/test1.sh
COPY test2.sh /test/test2.sh
COPY test.sh /test/test.sh
RUN find /test -type f -exec chmod +x {} +
