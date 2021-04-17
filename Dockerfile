FROM rust:1.51.0-alpine3.13

ENV ACTIXWEB_HOME=/app

RUN mkdir -p $ACTIXWEB_HOME

WORKDIR $ACTIXWEB_HOME

COPY . $ACTIXWEB_HOME

RUN apk add --no-cache gcc musl-dev

RUN cargo build --release

EXPOSE 8080

ENTRYPOINT ["./docker-entrypoint.sh"]