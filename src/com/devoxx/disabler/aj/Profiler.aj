package com.devoxx.disabler.aj;

import android.util.Log;

/**
 * Profile method in given package
 */
//TODO remove abstract
abstract public aspect Profiler {

	String TAG = Profiler.class.getSimpleName();

	pointcut methodCalls(): 
		execution(* com..*(..));

		Object around() : methodCalls() {
			StringBuffer buf = new StringBuffer();
			buf.append("Thread \"" + Thread.currentThread().getName() + "\" executed " + thisJoinPointStaticPart.getSignature().getName());
			long start = System.currentTimeMillis();
			try {
				return proceed();
			} finally {
				long end = System.currentTimeMillis();
				buf.append(" in " + (end - start) + " ms");
				Log.v(TAG, buf.toString());
			}
		}
}
