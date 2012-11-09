package com.devoxx.disabler;

import java.util.Arrays;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;

/**
 * Simple activity with the list of Android versions
 */
public class DisablerActivity extends Activity {

	private int howManyVersionsToPick = 9;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_disabler);

		ListView listView = (ListView) findViewById(R.id.list);
		listView.setAdapter(new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, android.R.id.text1, getData(howManyVersionsToPick)));
	}

	/**
	 * Data source
	 * @param howMany - how many latest versions to pick
	 * @return array of Android versions
	 */
	private String[] getData(int howMany) {
		String[] androidVersions = new String[] { "Cupcake", "Donut", "Eclair", "Froyo", "Gingerbread", "Honeycomb", "Ice Cream Sandwich", "Jelly Bean",
				"Key Lime Pie" };
		if (howMany > androidVersions.length)
			return androidVersions;
		else {
			Object[] res = Arrays.asList(androidVersions).subList(androidVersions.length - howMany, androidVersions.length).toArray();
			String[] str = Arrays.copyOf(res, res.length, String[].class);
			return str;
		}
	}
}
