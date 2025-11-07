# FROM amazoncorretto:17-alpine3.19
# COPY target/*.jar app.jar
# ENTRYPOINT ["java","-jar","/app.jar"]

FROM public.ecr.aws/lambda/java:17
COPY target/*.jar ${LAMBDA_TASK_ROOT}/app.jar
CMD ["org.springframework.cloud.function.adapter.aws.FunctionInvoker::handleRequest"]

