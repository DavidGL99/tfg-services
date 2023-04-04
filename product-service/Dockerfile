FROM --platform=linux/amd64 maven:3.8.5-openjdk-11 as build
ADD target/*.jar app.jar
CMD /wait &&  java -jar app.jar