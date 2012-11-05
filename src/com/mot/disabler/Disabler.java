package com.mot.disabler;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;

public class Disabler extends Activity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_disabler);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_disabler, menu);
        return true;
    }
}
