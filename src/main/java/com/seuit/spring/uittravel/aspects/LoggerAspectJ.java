package com.seuit.spring.uittravel.aspects;

import java.util.logging.Logger;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class LoggerAspectJ {
	private Logger logger = Logger.getLogger(this.getClass().getName());

	@Before("execution(* com.seuit.spring.uittravel.rest.*.*(..))")
	public void logBeforeRest(JoinPoint joinPoint) {
		logger.info("=========================");
		logger.info("=====> Before method: " + joinPoint.getSignature().getName());
		logger.info("=========================");
	}

	@After("execution(* com.seuit.spring.uittravel.rest.*.*(..))")
	public void logAfterRest(JoinPoint joinPoint) {
		logger.info("=========================");
		logger.info("=====> After method: " + joinPoint.getSignature().getName());
		logger.info("=========================");
	}

	@AfterThrowing(pointcut = "execution(* com.seuit.spring.uittravel.rest.*.*(..))", throwing = "error")
	public void logThrowRest(JoinPoint joinPoint, Throwable error) {
		logger.info("=========================");
		logger.info("=====> Error method: " + joinPoint.getSignature().getName());
		logger.info("Exception is: " + error);
		logger.info("=========================");
	}
}
