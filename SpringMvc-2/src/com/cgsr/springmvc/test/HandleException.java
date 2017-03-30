package com.cgsr.springmvc.test;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class HandleException {
	
//	@ExceptionHandler({RuntimeException.class})
//	public ModelAndView handelExceptionRuntimeException(Exception ex){
//		System.out.println("出异常了:------->"+ex);
//		ModelAndView mv=new ModelAndView("error");
//		mv.addObject("exception",ex);
//		return mv;
//	}
}
