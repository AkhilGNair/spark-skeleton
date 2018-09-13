#!/bin/bash

echo "Compiling and assembling application..."
sbt compile

# JAR containing a simple hello world
JARFILE=`pwd`/target/scala-2.12/HelloWorld-assembly-1.0.jar

# Run it locally
${SPARK_HOME}/bin/spark-submit --class HelloWorld --master local $JARFILE
