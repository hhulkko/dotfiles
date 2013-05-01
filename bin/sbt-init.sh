#!/bin/sh

curl https://raw.github.com/paulp/sbt-extras/master/sbt > ./sbt
chmod 755 sbt

mkdir -p src/main/scala
mkdir -p src/test/scala

cat > build.properties<<EOF
sbt.version=0.12.+
EOF

cat > build.sbt<<EOF
// Example settings http://www.scala-sbt.org/release/docs/Examples/Quick-Configuration-Examples
name := "My Project"

version := "1.0"

organization := "hhulkko"

scalaVersion := "2.10.1"

//libraryDependencies += "org.scala-tools.testing" %% "scalacheck" % "1.8" % "test"
//libraryDependencies += "joda-time" % "joda-time" % "2.1"

// append several options to the list of options passed to the Java compiler
javacOptions ++= Seq("-source", "1.6", "-target", "1.6")

// append -deprecation to the options passed to the Scala compiler
scalacOptions += "-deprecation"

// set the initial commands when entering 'console' or 'console-quick', but not 'console-project'
// initialCommands in console := "import hhulkko._"

// disable using the Scala version in output paths and artifacts
crossPaths := false

// fork a new JVM for 'test:run', but not 'run'
// fork in Test := true

// add a JVM option to use when forking a JVM for 'run'
// javaOptions += "-Xmx2G"
EOF

./sbt
