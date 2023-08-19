FROM gcc:bookworm as build

COPY . .
RUN make

FROM debian:12-slim

COPY --from=build wrk /usr/local/bin/