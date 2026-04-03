package com.dz.scanner;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.dz.scanner.RequestNetwork;
import com.google.firebase.FirebaseApp;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import n.NPStringFog;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes73.dex */
public class PayActivity extends AppCompatActivity {
    private SharedPreferences Status;
    private RequestNetwork.RequestListener _check_status_request_listener;
    private RequestNetwork.RequestListener _loadurl_request_listener;
    private RequestNetwork check_status;
    private RequestNetwork loadurl;
    private TimerTask t;
    private TextView textview1;
    private WebView webview1;
    private Timer _timer = new Timer();
    private HashMap<String, Object> map = new HashMap<>();
    private HashMap<String, Object> sta = new HashMap<>();
    private String order = "";
    private Intent i = new Intent();

    private void initialize(Bundle bundle) {
        this.textview1 = (TextView) findViewById(R.id.textview1);
        WebView webView = (WebView) findViewById(R.id.webview1);
        this.webview1 = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.webview1.getSettings().setSupportZoom(true);
        this.loadurl = new RequestNetwork(this);
        this.check_status = new RequestNetwork(this);
        this.Status = getSharedPreferences("Status", 0);
        this.webview1.setWebViewClient(new WebViewClient(this) { // from class: com.dz.scanner.PayActivity.1
            final PayActivity this$0;

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
        this._loadurl_request_listener = new RequestNetwork.RequestListener(this) { // from class: com.dz.scanner.PayActivity.2
            final PayActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // com.dz.scanner.RequestNetwork.RequestListener
            public void onErrorResponse(String str, String str2) {
            }

            @Override // com.dz.scanner.RequestNetwork.RequestListener
            public void onResponse(String str, String str2, HashMap<String, Object> map) {
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    if (jSONObject.has("status") && jSONObject.getBoolean("status")) {
                        JSONObject jSONObject2 = jSONObject.getJSONObject("result");
                        if (jSONObject2.has("payment_url")) {
                            this.this$0.runOnUiThread(new Runnable(this, jSONObject2.has("orderId") ? jSONObject2.getString("orderId") : null, jSONObject2.getString("payment_url")) { // from class: com.dz.scanner.PayActivity.2.1
                                final AnonymousClass2 this$1;
                                private final String val$orderId;
                                private final String val$paymentUrl;

                                {
                                    this.this$1 = this;
                                    this.val$orderId = str;
                                    this.val$paymentUrl = str;
                                }

                                @Override // java.lang.Runnable
                                public void run() {
                                    String str3;
                                    TextView textView = (TextView) this.this$1.this$0.findViewById(R.id.textview1);
                                    if (textView != null && (str3 = this.val$orderId) != null) {
                                        textView.setText(str3);
                                    }
                                    WebView webView2 = (WebView) this.this$1.this$0.findViewById(R.id.webview1);
                                    if (webView2 != null) {
                                        webView2.getSettings().setJavaScriptEnabled(true);
                                        webView2.loadUrl(this.val$paymentUrl);
                                    }
                                    Toast.makeText(this.this$1.this$0.getApplicationContext(), "✅ Payment page loading...", 0).show();
                                }
                            });
                        } else {
                            this.this$0.runOnUiThread(new Runnable(this) { // from class: com.dz.scanner.PayActivity.2.2
                                final AnonymousClass2 this$1;

                                {
                                    this.this$1 = this;
                                }

                                @Override // java.lang.Runnable
                                public void run() {
                                    Toast.makeText(this.this$1.this$0.getApplicationContext(), "payment_url not found", 0).show();
                                }
                            });
                        }
                    } else {
                        this.this$0.runOnUiThread(new Runnable(this) { // from class: com.dz.scanner.PayActivity.2.3
                            final AnonymousClass2 this$1;

                            {
                                this.this$1 = this;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                Toast.makeText(this.this$1.this$0.getApplicationContext(), "status false", 0).show();
                            }
                        });
                    }
                } catch (Exception e) {
                    this.this$0.runOnUiThread(new Runnable(this, e) { // from class: com.dz.scanner.PayActivity.2.4
                        final AnonymousClass2 this$1;
                        private final Exception val$e;

                        {
                            this.this$1 = this;
                            this.val$e = e;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(this.this$1.this$0.getApplicationContext(), "Parse error: " + this.val$e.toString(), 1).show();
                        }
                    });
                }
                this.this$0.check_status.setParams(this.this$0.sta, 0);
                this.this$0.check_status.startRequestNetwork("GET", "https://techbhai.online/gautam/check.php?order_id=".concat(this.this$0.textview1.getText().toString()), NPStringFog.decode(new byte[]{113}, "040c2c", false), this.this$0._check_status_request_listener);
            }
        };
        this._check_status_request_listener = new RequestNetwork.RequestListener(this) { // from class: com.dz.scanner.PayActivity.3
            final PayActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // com.dz.scanner.RequestNetwork.RequestListener
            public void onErrorResponse(String str, String str2) {
                this.this$0.check_status.setParams(this.this$0.sta, 0);
                this.this$0.check_status.startRequestNetwork("GET", "https://techbhai.online/gautam/check.php?order_id=".concat(this.this$0.textview1.getText().toString()), NPStringFog.decode(new byte[]{119}, "6bfa0a", false), this.this$0._check_status_request_listener);
            }

            @Override // com.dz.scanner.RequestNetwork.RequestListener
            public void onResponse(String str, String str2, HashMap<String, Object> map) {
                this.this$0.sta = (HashMap) new Gson().fromJson(str2, new TypeToken<HashMap<String, Object>>(this) { // from class: com.dz.scanner.PayActivity.3.1
                    final AnonymousClass3 this$1;

                    {
                        this.this$1 = this;
                    }
                }.getType());
                if (this.this$0.sta.containsKey("status")) {
                    if (!this.this$0.sta.get("status").toString().equals("SUCCESS")) {
                        this.this$0.check_status.setParams(this.this$0.sta, 0);
                        this.this$0.check_status.startRequestNetwork("GET", "https://techbhai.online/gautam/check.php?order_id=".concat(this.this$0.textview1.getText().toString()), NPStringFog.decode(new byte[]{113}, "0f1f44", false), this.this$0._check_status_request_listener);
                        return;
                    }
                    this.this$0.Status.edit().putString("Status", "Done").commit();
                    SketchwareUtil.showMessage(this.this$0.getApplicationContext(), "Payment Successfully Enjoy ");
                    this.this$0.i.setClass(this.this$0.getApplicationContext(), YetuuActivity.class);
                    PayActivity payActivity = this.this$0;
                    payActivity.startActivity(payActivity.i);
                    this.this$0.finish();
                }
            }
        };
    }

    private void initializeLogic() {
        this.loadurl.setParams(this.map, 0);
        this.loadurl.startRequestNetwork("GET", "https://techbhai.online/gautam/create.php?amount=".concat(getIntent().getStringExtra("am")), NPStringFog.decode(new byte[]{39}, "f19e6d", false), this._loadurl_request_listener);
        this.textview1.setVisibility(8);
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
        setContentView(R.layout.pay);
        initialize(bundle);
        FirebaseApp.initializeApp(this);
        initializeLogic();
    }

    @Deprecated
    public void showMessage(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }
}
