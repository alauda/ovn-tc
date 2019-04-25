FROM alpine:3.9
RUN apk add --no-cache iproute2
ENV DNS_PORT=53
ENV NET_OVERLAY_IF=ovn0
ADD . .
ENTRYPOINT ./ovn-tc.sh
