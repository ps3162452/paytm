package com.dz.scanner;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes73.dex */
public class DebugActivity extends Activity {
    private static final Map<String, String> exceptionMap = new HashMap<String, String>() { // from class: com.dz.scanner.DebugActivity.1
        {
            put("StringIndexOutOfBoundsException", "Invalid string operation\n");
            put("IndexOutOfBoundsException", "Invalid list operation\n");
            put("ArithmeticException", "Invalid arithmetical operation\n");
            put("NumberFormatException", "Invalid toNumber block operation\n");
            put("ActivityNotFoundException", "Invalid intent operation\n");
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Intent intent = getIntent();
        String stringExtra = intent != null ? intent.getStringExtra("error") : "";
        if (stringExtra.isEmpty()) {
            spannableStringBuilder.append((CharSequence) "No error message available.");
        } else {
            String[] strArrSplit = stringExtra.split("\n");
            String str = strArrSplit[0];
            Map<String, String> map = exceptionMap;
            String str2 = map.containsKey(str) ? map.get(str) : "";
            if (!str2.isEmpty()) {
                spannableStringBuilder.append((CharSequence) str2);
            }
            for (int i = 1; i < strArrSplit.length; i++) {
                spannableStringBuilder.append((CharSequence) strArrSplit[i]);
                spannableStringBuilder.append((CharSequence) "\n");
            }
        }
        setTitle(((Object) getTitle()) + " Crashed");
        TextView textView = new TextView(this);
        textView.setText(spannableStringBuilder);
        textView.setTextIsSelectable(true);
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(this);
        ScrollView scrollView = new ScrollView(this);
        horizontalScrollView.addView(scrollView);
        scrollView.addView(textView);
        setContentView(horizontalScrollView);
    }
}
