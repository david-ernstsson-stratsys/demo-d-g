FROM golang:1.13.5-alpine3.10 as builder
COPY . /build/
WORKDIR /build
RUN CGO_ENABLED=0 go build -o go-sample

FROM scratch
COPY --from=builder /build/go-sample /go-sample

ENTRYPOINT ["/go-sample"]
