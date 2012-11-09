package com.devoxx.disabler.aj;

import java.util.Arrays;
import android.util.Log;

/**
 * Play with methods in given package
 */
// TODO remove abstract
abstract public aspect Disabler {

	String TAG = Disabler.class.getSimpleName();

	pointcut methodCalls(): 
		execution(String[] *(*));

		Object around() : methodCalls() {
			StringBuffer buf = new StringBuffer();
			buf.append("Removed result of \"" + thisJoinPointStaticPart.getSignature().getName() + "\"");
			try {
				Object result = proceed();
				Object[] res = (Object[]) result;
				Object[] stringArray = Arrays.copyOf(res, res.length, String[].class);
				buf.append(Arrays.asList(stringArray).toString());
				// remove empty list instead
				return new String[0];
			} finally {
				Log.i(TAG, buf.toString());
			}
		}
}
