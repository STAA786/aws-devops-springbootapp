FROM public.ecr.aws/lambda/java:17

# Copy Spring Boot jar to Lambda task root
COPY target/*.jar ${LAMBDA_TASK_ROOT}/application.jar

# Set Lambda handler for Spring Cloud Function
CMD [ "org.springframework.cloud.function.adapter.aws.FunctionInvoker::handleRequest" ]
