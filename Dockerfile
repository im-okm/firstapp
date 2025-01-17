# 基礎カリキュラムlesson7
FROM gradle:8.8-jdk21 AS build
WORKDIR /app
COPY . .
RUN gradle clean build -x test

FROM eclipse-temurin:21-alpine
COPY --from=build /app/build/libs/firstapp-0.0.1-SNAPSHOT.jar firstapp.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "firstapp.jar", "--spring.profiles.active=prod", "--debug"]








# 基礎カリキュラムlesson6
# 使用する基本イメージとして OpenJDK を指定
# FROM openjdk:21-jdk-slim

# 作業ディレクトリを作成
# WORKDIR /app

# プロジェクト全体をコピーする
# COPY . . 

# Gradle を使用してアプリをビルド
# RUN chmod +x gradlew && ./gradlew build -x test

# JARファイルを指定してアプリを実行
# CMD ["java", "-jar", "build/libs/firstapp-0.0.1-SNAPSHOT.jar"]