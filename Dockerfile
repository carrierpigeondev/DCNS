FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y rsync

COPY dcns.sh /usr/local/bin/dcns.sh
RUN chmod +x /usr/local/bin/dcns.sh
CMD ["/usr/local/bin/dcns.sh"]