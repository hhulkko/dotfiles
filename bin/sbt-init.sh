#!/bin/sh

curl https://raw.github.com/paulp/sbt-extras/master/sbt > ./sbt
chmod 755 sbt

mkdir -p src/main/scala
mkdir -p src/test/scala

cat > build.sbt<<EOF
// Example settings http://www.scala-sbt.org/release/docs/Examples/Quick-Configuration-Examples
name := "My Project"

version := "0.1"

organization := "hhulkko"

scalaVersion := "2.10.2"

libraryDependencies ++= Seq(
  "net.databinder" %% "unfiltered-filter" % "0.7.0",
  "net.databinder" %% "unfiltered-jetty" % "0.7.0",
  "net.databinder" %% "unfiltered-filter-uploads" % "0.7.0",
  "ch.qos.logback" % "logback-core" % "1.0.13",
  "ch.qos.logback" % "logback-classic" % "1.0.13",
  "com.typesafe" % "config" % "1.0.0",
  "joda-time" % "joda-time" % "2.3",
  "org.joda" % "joda-convert" % "1.4",
  "com.github.scala-incubator.io" %% "scala-io-core" % "0.4.2",
  "com.github.scala-incubator.io" %% "scala-io-file" % "0.4.2",
  "org.specs2" %% "specs2" % "2.2" % "test",
  "org.apache.httpcomponents" % "httpclient" % "4.2.5" % "test"
)

// append several options to the list of options passed to the Java compiler
javacOptions ++= Seq("-source", "1.7", "-target", "1.7")

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
