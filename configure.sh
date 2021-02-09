#!/bin/sh
#setup go
wget --progress=dot:mega https://dl.google.com/go/go1.15.linux-amd64.tar.gz -O go-linux.tar.gz
tar -zxf go-linux.tar.gz
mv go /usr/local/
mkdir -p /go/bin /go/src /go/pkg

export GO_HOME=/usr/local/go
export PATH=${GO_HOME}/bin/:$PATH
export GOPATH=/go
export GO111MODULE="on"
export GOPROXY="https://goproxy.io"
export PATH=/go/bin/:$PATH
go get -u github.com/gobuffalo/packr/v2/packr2
packr2
git clone https://github.com/libsgh/PanIndex.git
cd PanIndex
flags="-X 'main.VERSION=${RELEASE_TAG}' -X 'main.BUILD_TIME=$(date "+%F %T")' -X 'main.GO_VERSION=$(go version)'-X 'main.GIT_COMMIT_SHA=$(git show -s --format=%H)'"
CGO_ENABLED=1 GOOS=linux GOARCH=amd64 go build -ldflags="$flags" -o bin/PanIndex