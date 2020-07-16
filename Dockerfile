FROM golang:1.13.1-alpine3.10 as builder
LABEL maintainer "Felipe Ribeiro de Andrade <phelipperibeiro@hotmail.com>"

WORKDIR $GOPATH/src/desafio-ci-go/
COPY ./src/sum .

RUN GOOS=linux go build -ldflags="-w -s" -o /go/bin/desafio-ci-go

FROM scratch

COPY --from=builder /go/bin/desafio-ci-go /go/bin/desafio-ci-go

CMD ["/go/bin/desafio-ci-go"]


