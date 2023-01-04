FROM golang:1.19

ENV GO111MODULE on
WORKDIR /var/www/src

RUN go install github.com/go-delve/delve/cmd/dlv@latest && \
  go install golang.org/x/lint/golint@latest && \
  go install golang.org/x/tools/gopls@latest && \
  go install honnef.co/go/tools/cmd/staticcheck@latest && \
  go install github.com/cosmtrek/air@latest
