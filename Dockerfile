FROM openjdk:8u151-jdk-alpine
EXPOSE 8080
WORKDIR /app
COPY docker/kimono-mi-0.1.jar application.jar
COPY docker/app-entrypoint.sh app-entrypoint.sh
RUN chmod +x app-entrypoint.sh
ENTRYPOINT ["/app/app-entrypoint.sh"]
