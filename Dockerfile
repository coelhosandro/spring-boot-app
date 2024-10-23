FROM eclipse-temurin:17-jre-alpine
ENV PORT 8080
ENV CLASSPATH /opt/lib
EXPOSE 8080

COPY */target/demo*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-Xms512m","-Xmx512m", "-jar", "app.jar"]
