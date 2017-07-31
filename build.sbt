name := "docvitaminas"

version := "1.0-SNAPSHOT"

libraryDependencies ++= Seq(
  javaJdbc,
  javaEbean,
  cache,
  "jpl" % "jpl" % "7.4.0"
)     

play.Project.playJavaSettings
