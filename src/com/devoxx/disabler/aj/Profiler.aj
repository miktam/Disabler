package com.devoxx.disabler.aj;

import android.util.Log;

public aspect Profiler {

	String TAG = Profiler.class.getSimpleName();

	pointcut methodCalls(): 
  execution(* com..*(..));

	Object around() : methodCalls() {

		String threadName = Thread.currentThread().getName();

		Log.i(TAG, threadName + "|" + thisJoinPointStaticPart.getSignature().toString());

		long start = System.currentTimeMillis();
		try {
			return proceed();
		} finally {

			long end = System.currentTimeMillis();

			Log.i(TAG, threadName + "|" + thisJoinPointStaticPart.getSignature() + (end - start) + " ms");

		}
	}

}
