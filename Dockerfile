FROM gradle:7.3.1-jdk17 as build

WORKDIR /home/gradle/project

COPY . .

RUN chmod +x ./gradlew

RUN ./gradlew build -x test

FROM eclipse-temurin:17-jre

WORKDIR /opt/techcampus

COPY --from=build /home/gradle/project/build/libs/kakao1-0.0.1-SNAPSHOT.jar .

USER nobody

EXPOSE 8080

CMD ["java", "-jar", "kakao1-0.0.1-SNAPSHOT.jar"]