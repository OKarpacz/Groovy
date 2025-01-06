package com.example.EcomShop.Aspects;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class ErrorHandlingAspect {

    private static final Logger logger = LoggerFactory.getLogger(ErrorHandlingAspect.class);

    @AfterThrowing(pointcut = "execution(* com.example.EcomShop.Controllers..*(..))", throwing = "ex")
    public void logControllerErrors(JoinPoint joinPoint, Exception ex) {
        String className = joinPoint.getSignature().getDeclaringTypeName();
        String methodName = joinPoint.getSignature().getName();

        logger.error("Exception occurred in Controller: {}.{} - Message: {}", className, methodName, ex.getMessage(), ex);
    }
}
