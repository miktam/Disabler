package com.devoxx.disabler.aj;

import java.util.Arrays;

import org.aspectj.lang.Signature;

import android.util.Log;

/**
 * Trace all methods for given class
 * To see more: thisJoinPointStaticPart
 * http://www.eclipse.org/aspectj/doc/next/progguide/language-thisJoinPoint.html
 * 
 */
// TODO logger
abstract public aspect Logger {

	String TAG = Logger.class.getSimpleName();

	pointcut enterMethod(): 
		execution(String[] *());
			before() : enterMethod() {
				// thisJoinPoint has state available at a join point and static information about it
				// more info on available methods in thisJoinPoint
				// http://www.eclipse.org/aspectj/doc/released/runtime-api/org/aspectj/lang/JoinPoint.html
				Object[] params = thisJoinPoint.getArgs(); 
				Signature sig = thisJoinPoint.getSignature();	
				Log.i(TAG, "Enter " + sig.getName() + " with params: " + Arrays.asList(params));				
	}				
			after() : enterMethod() {				
				Signature sig = thisJoinPoint.getSignature();	
				Log.i(TAG, "Exit " + sig.getName());				
	}	


}
