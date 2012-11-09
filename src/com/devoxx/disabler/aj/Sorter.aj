package com.devoxx.disabler.aj;

import java.util.Arrays;
import java.util.Comparator;

import android.util.Log;

/**
 * Sort data
 */
//TODO remove abstract
abstract public aspect Sorter {

	String TAG = Sorter.class.getSimpleName();

	pointcut methodCalls(): 
		execution(String[] *(*));

	Object around() : methodCalls() {
		StringBuffer buf = new StringBuffer();
		buf.append("Original result of \"" + thisJoinPointStaticPart.getSignature().getName() + "\"");
		try {
			Object result = proceed();
			Object[] res = (Object[]) result;
			String[] stringArray = Arrays.copyOf(res, res.length, String[].class);
			buf.append(Arrays.asList(stringArray).toString());

			// TODO sort it
			Arrays.sort(stringArray, new Comparator<String>() {
				@Override
				public int compare(String lhs, String rhs) {
					return -(lhs.length() - rhs.length());
				}
			});

			buf.append("\nSorted: " + Arrays.asList(stringArray).toString());
			return stringArray;
		} finally {
			Log.i(TAG, buf.toString());
		}
	}
}
