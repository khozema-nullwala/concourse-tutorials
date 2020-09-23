#!/bin/sh
set +ex
output_dir=workspace
mvn -Dmaven.repo.local=$(pwd)/simple-java-app/cache -DskipTests -f $(pwd)/simple-java-app/pom.xml package
mv $(pwd)/simple-java-app/cache "${output_dir}/"
cp $(pwd)/concourse-tutorials/lab-5.1/docker/CacheDockerfile "${output_dir}/Dockerfile"
