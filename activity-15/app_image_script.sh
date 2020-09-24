#!/bin/sh
set +ex
output_dir=workspace
mvn -Dmaven.repo.local=/app/cache -f $(pwd)/simple-java-app/pom.xml test
mvn -Dmaven.repo.local=/app/cache -f $(pwd)/simple-java-app/pom.xml jar:jar
mv $(pwd)/simple-java-app/target/*.jar "${output_dir}/"
cp $(pwd)/concourse-tutorials/activity-15/docker/AppDockerfile "${output_dir}/Dockerfile"
cp $(pwd)/version/number "${output_dir}/number"