package com.dz.scanner;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.google.firebase.FirebaseApp;
import java.util.ArrayList;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes73.dex */
public class StutussActivity extends AppCompatActivity {
    private Timer _timer = new Timer();
    private Intent inte = new Intent();
    private LinearLayout linear2;
    private LinearLayout linear3;
    private LinearLayout linear4;
    private LinearLayout linear5;
    private TextView nm;
    private TextView pese;
    private RelativeLayout relative1;
    private TextView simpleamount;
    private TextView textview1;
    private TextView textview2;
    private TextView textview3;
    private TimerTask timer;
    private TextView upi;
    private TextView username;
    private WebView webview1;

    private void initialize(Bundle bundle) {
        this.relative1 = (RelativeLayout) findViewById(R.id.relative1);
        WebView webView = (WebView) findViewById(R.id.webview1);
        this.webview1 = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.webview1.getSettings().setSupportZoom(true);
        this.linear2 = (LinearLayout) findViewById(R.id.linear2);
        this.linear3 = (LinearLayout) findViewById(R.id.linear3);
        this.textview1 = (TextView) findViewById(R.id.textview1);
        this.username = (TextView) findViewById(R.id.username);
        this.upi = (TextView) findViewById(R.id.upi);
        this.linear5 = (LinearLayout) findViewById(R.id.linear5);
        this.simpleamount = (TextView) findViewById(R.id.simpleamount);
        this.nm = (TextView) findViewById(R.id.nm);
        this.linear4 = (LinearLayout) findViewById(R.id.linear4);
        this.textview3 = (TextView) findViewById(R.id.textview3);
        this.textview2 = (TextView) findViewById(R.id.textview2);
        this.pese = (TextView) findViewById(R.id.pese);
        this.webview1.setWebViewClient(new WebViewClient(this) { // from class: com.dz.scanner.StutussActivity.1
            final StutussActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                super.onPageFinished(webView2, str);
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView2, String str, Bitmap bitmap) {
                super.onPageStarted(webView2, str, bitmap);
            }
        });
    }

    private void initializeLogic() {
        getWindow().setFlags(1024, 1024);
        this.webview1.getSettings().setJavaScriptEnabled(true);
        this.webview1.setBackgroundColor(-1);
        this.webview1.getSettings().setLoadWithOverviewMode(true);
        this.webview1.getSettings().setUseWideViewPort(true);
        this.webview1.loadDataWithBaseURL(null, "<html><body style='margin:0;padding:0;overflow:hidden;background:#FFFFFF;'><video id='bgvideo' autoplay muted loop playsinline preload='auto' poster='' style='width:100%;height:100%;object-fit:cover;opacity:0;'><source src='file:/android_asset/bg.mp4' type='video/mp4'></video><script>var v=document.getElementById('bgvideo');v.addEventListener('playing',function(){v.style.opacity='1';});</script></body></html>", "text/html", "UTF-8", null);
        this.linear2.bringToFront();
        this.pese.setText(getIntent().getStringExtra("amount"));
        this.upi.setText("UPI ID: ".concat(getIntent().getStringExtra("upi")));
        this.username.setText(getIntent().getStringExtra("name"));
        this.nm.setText(getIntent().getStringExtra("nm"));
        this.simpleamount.setText(getIntent().getStringExtra("spn"));
        this.textview3.setVisibility(8);
        this.linear5.setVisibility(8);
        TimerTask timerTask = new TimerTask(this) { // from class: com.dz.scanner.StutussActivity.2
            final StutussActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                this.this$0.runOnUiThread(new Runnable(this) { // from class: com.dz.scanner.StutussActivity.2.1
                    final AnonymousClass2 this$1;

                    {
                        this.this$1 = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.this$1.this$0.textview1.setVisibility(8);
                        this.this$1.this$0.textview3.setVisibility(0);
                        this.this$1.this$0.upi.setVisibility(8);
                        this.this$1.this$0.username.setVisibility(8);
                        this.this$1.this$0.nm.setVisibility(8);
                        this.this$1.this$0.simpleamount.setVisibility(8);
                        this.this$1.this$0.pese.setTextColor(-1);
                        this.this$1.this$0.linear5.setVisibility(0);
                        this.this$1.this$0.textview2.setTextColor(-1);
                    }
                });
            }
        };
        this.timer = timerTask;
        this._timer.schedule(timerTask, 4000L);
        TimerTask timerTask2 = new TimerTask(this) { // from class: com.dz.scanner.StutussActivity.3
            final StutussActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                this.this$0.runOnUiThread(new Runnable(this) { // from class: com.dz.scanner.StutussActivity.3.1
                    final AnonymousClass3 this$1;

                    {
                        this.this$1 = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.this$1.this$0.inte.setClass(this.this$1.this$0.getApplicationContext(), FistActivity.class);
                        this.this$1.this$0.inte.putExtra("amount", this.this$1.this$0.pese.getText().toString());
                        this.this$1.this$0.inte.putExtra("upi", this.this$1.this$0.upi.getText().toString());
                        this.this$1.this$0.inte.putExtra("name", this.this$1.this$0.username.getText().toString());
                        this.this$1.this$0.inte.putExtra("nm", this.this$1.this$0.nm.getText().toString());
                        this.this$1.this$0.inte.putExtra("spn", this.this$1.this$0.simpleamount.getText().toString());
                        this.this$1.this$0.startActivity(this.this$1.this$0.inte);
                    }
                });
            }
        };
        this.timer = timerTask2;
        this._timer.schedule(timerTask2, 6000L);
    }

    @Deprecated
    public ArrayList<Double> getCheckedItemPositionsToArray(ListView listView) {
        ArrayList<Double> arrayList = new ArrayList<>();
        SparseBooleanArray checkedItemPositions = listView.getCheckedItemPositions();
        for (int i = 0; i < checkedItemPositions.size(); i++) {
            if (checkedItemPositions.valueAt(i)) {
                arrayList.add(Double.valueOf(checkedItemPositions.keyAt(i)));
            }
        }
        return arrayList;
    }

    @Deprecated
    public float getDip(int i) {
        return TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    @Deprecated
    public int getDisplayHeightPixels() {
        return getResources().getDisplayMetrics().heightPixels;
    }

    @Deprecated
    public int getDisplayWidthPixels() {
        return getResources().getDisplayMetrics().widthPixels;
    }

    @Deprecated
    public int getLocationX(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return iArr[0];
    }

    @Deprecated
    public int getLocationY(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return iArr[1];
    }

    @Deprecated
    public int getRandom(int i, int i2) {
        return new Random().nextInt((i2 - i) + 1) + i;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.stutuss);
        initialize(bundle);
        FirebaseApp.initializeApp(this);
        initializeLogic();
    }

    @Deprecated
    public void showMessage(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }
}
