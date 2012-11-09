package com.devoxx.disabler.aj;

import android.util.Log;

/**
 * Play with methods in given package
 */
// TODO remove abstract
abstract public aspect Delayer {

	String TAG = Delayer.class.getSimpleName();
	Integer SLEEP = 10000;

	pointcut methodCalls(): 
		execution(String[] *(*));

	Object around() : methodCalls() {
		StringBuffer buf = new StringBuffer();
		buf.append("Delay \"" + thisJoinPointStaticPart.getSignature().getName() + "\"");
		Log.i(TAG,  buf.toString());
		try {
			Thread.sleep(SLEEP);
		} catch (InterruptedException e) {
		} finally {
			Log.i(TAG, "For ms: " + SLEEP);
		}
		return proceed();
	}
}
