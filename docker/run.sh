#!/bin/bash
version="$PAN_INDEX_VERSION"
if [ "$version" = "" ]
then
    version=`curl --silent "https://api.github.com/repos/libsgh/PanIndex/releases/latest" \
        | grep '"tag_name":' \
        | sed -E 's/.*"([^"]+)".*/\1/'`
fi
echo $version
curl -sOL "https://github.com/libsgh/PanIndex/releases/download/${version}/PanIndex-linux-amd64.tar.gz"
md5sum "PanIndex-"${version}"-linux-amd64.tar.gz"
tar -zxvf "PanIndex-"${version}"-linux-amd64.tar.gz"
rm -rf README.md LICENSE
mv "PanIndex-"${version}"-linux-amd64" PanIndex
chmod +x PanIndex
/app/PanIndex
