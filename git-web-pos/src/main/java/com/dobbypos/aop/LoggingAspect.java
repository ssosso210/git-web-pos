package com.dobbypos.aop;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component("loggingAspect")
public class LoggingAspect {
	@Pointcut("within(*..*Controller) || within(*..*Dao)")
	public void controllerOrDaoPointcut(){
		
	}
	
	

}
