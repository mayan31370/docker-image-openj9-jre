FROM ibm-semeru-runtimes:open-17-jre

EXPOSE 8080

ENTRYPOINT ["sh","-c","java $JVM_OPT -noverify -XX:TieredStopAtLevel=1 -Djava.awt.headless=true -XX:+ExitOnOutOfMemoryError -Xshareclasses -Xquickstart -Dspring.config.location=classpath:/ -Dserver.port=8080 -Dspring.backgroundpreinitializer.ignore=true -jar /app.jar"]
