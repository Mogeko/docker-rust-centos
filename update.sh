#！ /bin/bash

cd docker-rust-centos

OLD_VERSION=`cat Dockerfile | grep "ENV RUST_VERSION" | cut -d  " " -f 3`
NEW_VERSION=`curl https://www.rust-lang.org | grep "Version" | cut -d "<" -f 2 | cut -d " " -f 3`

if [ "$OLD_VERSION" == "$NEW_VERSION" ]; then
    exit 0
else
    echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
    sed -i "s#^\s*ENV RUST_VERSION.*#ENV RUST_VERSION $NEW_VERSION#g" Dockerfile
    docker pull centos:7
    docker build -t mogeko/rust-centos:$NEW_VERSION .
    docker push "$DOCKER_USERNAME"/rust-centos
    git commit -am "Update rust version to $NEW_VERSION" || exit 0
    git push "https://${GH_TOKEN}@${GH_REF}" master:master
fi
