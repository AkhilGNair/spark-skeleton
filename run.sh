#!/bin/bash

# From https://github.com/zouzias/spark-hello-world/blob/master/submit-spark-hello-world.sh

echo "Compiling and assembling application..."
sbt compile
sbt package

# JAR containing a simple hello world
JARFILE=`pwd`/target/scala-2.11/helloworld_2.11-1.0.jar

# Run it locally
${SPARK_HOME}/bin/spark-submit --class HelloWorld --master local $JARFILE
