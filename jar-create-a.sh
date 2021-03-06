#!/bin/bash
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.9.0_ea+181.jdk/Contents/Home
JAR=${JAVA_HOME}/bin/jar
JMODS=${JAVA_HOME}/jmods

mkdir -p target
$JAR \
  --verbose \
  --create \
  --file target/result-2.jar \
  --module-version 1.0-SNAPHSHOT \
  --module-path $JMODS:target/classes \
  -C target/classes/ .
