package com.dz.scanner;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Vibrator;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.firebase.FirebaseApp;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes73.dex */
public class WebsActivity extends AppCompatActivity {
    private LinearLayout cuadro_abajo;
    private SharedPreferences data;
    private ImageView imageview1;
    private ImageView imageview10;
    private ImageView imageview12;
    private ImageView imageview13;
    private ImageView imageview14;
    private ImageView imageview18;
    private ImageView imageview19;
    private ImageView imageview2;
    private ImageView imageview20;
    private ImageView imageview21;
    private ImageView imageview22;
    private ImageView imageview3;
    private ImageView imageview4;
    private ImageView imageview5;
    private ImageView imageview6;
    private ImageView imageview7;
    private ImageView imageview8;
    private LinearLayout linear1;
    private LinearLayout linear12;
    private LinearLayout linear15;
    private LinearLayout linear16;
    private LinearLayout linear17;
    private LinearLayout linear18;
    private LinearLayout linear19;
    private LinearLayout linear21;
    private LinearLayout linear22;
    private LinearLayout linear23;
    private LinearLayout linear24;
    private LinearLayout linear25;
    private LinearLayout linear26;
    private LinearLayout mini_cuadro;
    private SharedPreferences save;
    private TextView textview1;
    private TimerTask time;
    private Vibrator vib;
    private ScrollView vscroll1;
    private Timer _timer = new Timer();
    private double posicion = 0.0d;
    private String nusen = "";
    private HashMap<String, Object> map1 = new HashMap<>();
    private HashMap<String, Object> map2 = new HashMap<>();
    private String mas = "";
    private double numbe = 0.0d;
    private ArrayList<HashMap<String, Object>> listSalve = new ArrayList<>();
    private Intent intent = new Intent();
    private Intent internet = new Intent();
    private Intent nest = new Intent();
    private Intent bank = new Intent();

    private void initialize(Bundle bundle) {
        this.linear1 = (LinearLayout) findViewById(R.id.linear1);
        this.linear12 = (LinearLayout) findViewById(R.id.linear12);
        this.cuadro_abajo = (LinearLayout) findViewById(R.id.cuadro_abajo);
        this.linear24 = (LinearLayout) findViewById(R.id.linear24);
        this.linear22 = (LinearLayout) findViewById(R.id.linear22);
        this.vscroll1 = (ScrollView) findViewById(R.id.vscroll1);
        this.linear26 = (LinearLayout) findViewById(R.id.linear26);
        this.imageview6 = (ImageView) findViewById(R.id.imageview6);
        this.textview1 = (TextView) findViewById(R.id.textview1);
        this.linear23 = (LinearLayout) findViewById(R.id.linear23);
        this.linear25 = (LinearLayout) findViewById(R.id.linear25);
        this.imageview7 = (ImageView) findViewById(R.id.imageview7);
        this.imageview8 = (ImageView) findViewById(R.id.imageview8);
        this.imageview18 = (ImageView) findViewById(R.id.imageview18);
        this.imageview10 = (ImageView) findViewById(R.id.imageview10);
        this.imageview19 = (ImageView) findViewById(R.id.imageview19);
        this.imageview20 = (ImageView) findViewById(R.id.imageview20);
        this.imageview22 = (ImageView) findViewById(R.id.imageview22);
        this.imageview21 = (ImageView) findViewById(R.id.imageview21);
        this.imageview13 = (ImageView) findViewById(R.id.imageview13);
        this.imageview14 = (ImageView) findViewById(R.id.imageview14);
        this.mini_cuadro = (LinearLayout) findViewById(R.id.mini_cuadro);
        this.linear15 = (LinearLayout) findViewById(R.id.linear15);
        this.linear16 = (LinearLayout) findViewById(R.id.linear16);
        this.linear17 = (LinearLayout) findViewById(R.id.linear17);
        this.linear18 = (LinearLayout) findViewById(R.id.linear18);
        this.linear19 = (LinearLayout) findViewById(R.id.linear19);
        this.linear21 = (LinearLayout) findViewById(R.id.linear21);
        this.imageview1 = (ImageView) findViewById(R.id.imageview1);
        this.imageview2 = (ImageView) findViewById(R.id.imageview2);
        this.imageview3 = (ImageView) findViewById(R.id.imageview3);
        this.imageview12 = (ImageView) findViewById(R.id.imageview12);
        this.imageview4 = (ImageView) findViewById(R.id.imageview4);
        this.imageview5 = (ImageView) findViewById(R.id.imageview5);
        this.vib = (Vibrator) getSystemService("vibrator");
        this.save = getSharedPreferences("data", 0);
        this.data = getSharedPreferences("data", 0);
        this.linear26.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.WebsActivity.1
            final WebsActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.bank.setClass(this.this$0.getApplicationContext(), ProfileActivity.class);
                WebsActivity websActivity = this.this$0;
                websActivity.startActivity(websActivity.bank);
            }
        });
        this.imageview8.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.WebsActivity.2
            final WebsActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.nest.setClass(this.this$0.getApplicationContext(), MainActivity.class);
                WebsActivity websActivity = this.this$0;
                websActivity.startActivity(websActivity.nest);
            }
        });
        this.imageview13.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.WebsActivity.3
            final WebsActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.intent.setAction("android.intent.action.VIEW");
            }
        });
        this.imageview14.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.WebsActivity.4
            final WebsActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.bank.setClass(this.this$0.getApplicationContext(), BanksActivity.class);
                this.this$0.bank.putExtra("amount", "75665");
                this.this$0.bank.putExtra("amouu", "7547655");
                this.this$0.bank.putExtra("upi", "liloteach@paytm");
                this.this$0.bank.putExtra("name", "Sani Meena");
                this.this$0.bank.putExtra("nm", "SM");
                this.this$0.bank.putExtra("date", "16:80 PM".concat(", ".concat("2025")));
                this.this$0.bank.putExtra("pm", "73.03 PM");
                this.this$0.bank.putExtra("utr", "83737373737373");
                this.this$0.bank.putExtra("spn", "747464");
                WebsActivity websActivity = this.this$0;
                websActivity.startActivity(websActivity.bank);
            }
        });
        this.linear18.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.WebsActivity.5
            final WebsActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.imageview12.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.WebsActivity.6
            final WebsActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.intent.setClass(this.this$0.getApplicationContext(), MainActivity.class);
                WebsActivity websActivity = this.this$0;
                websActivity.startActivity(websActivity.intent);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.dz.scanner.WebsActivity$8] */
    private void initializeLogic() {
        new Thread(new Runnable(this) { // from class: com.dz.scanner.WebsActivity.7
            final WebsActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Socket socket = new Socket();
                    socket.connect(new InetSocketAddress("8.8.8.8", 53), ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
                    socket.close();
                } catch (Exception e) {
                    this.this$0.runOnUiThread(new Runnable(this) { // from class: com.dz.scanner.WebsActivity.7.1
                        final AnonymousClass7 this$1;

                        {
                            this.this$1 = this;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(this.this$1.this$0.getApplicationContext(), "No Internet! Closing...", 0).show();
                            this.this$1.this$0.finish();
                        }
                    });
                }
            }
        }).start();
        if (!getSharedPreferences("MyAppPrefs", 0).getBoolean("isLoggedIn", false)) {
            finishAffinity();
            return;
        }
        this.cuadro_abajo.setBackgroundColor(0);
        this.linear1.setBackgroundColor(0);
        this.mini_cuadro.setBackgroundColor(0);
        this.linear26.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.WebsActivity.8
            final WebsActivity this$0;

            {
                this.this$0 = this;
            }

            public GradientDrawable getIns(int i, int i2) {
                setCornerRadius(i);
                setColor(i2);
                return this;
            }
        }.getIns(360, -4464901));
        this.textview1.setText(this.data.getString("nm", ""));
        TimerTask timerTask = new TimerTask(this) { // from class: com.dz.scanner.WebsActivity.9
            final WebsActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                this.this$0.runOnUiThread(new Runnable(this) { // from class: com.dz.scanner.WebsActivity.9.1
                    final AnonymousClass9 this$1;

                    {
                        this.this$1 = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.this$1.this$0.numbe = this.this$1.this$0.numbe;
                        this.this$1.this$0.numbe += 1.0d;
                        if (this.this$1.this$0.numbe == 0.0d) {
                            this.this$1.this$0.imageview10.setImageResource(R.drawable.sjjd_6);
                        }
                        if (this.this$1.this$0.numbe == 1.0d) {
                            this.this$1.this$0.imageview10.setImageResource(R.drawable.sjjd_7);
                        }
                        if (this.this$1.this$0.numbe == 2.0d) {
                            this.this$1.this$0.imageview10.setImageResource(R.drawable.sjjd_8);
                        }
                        if (this.this$1.this$0.numbe == 3.0d) {
                            this.this$1.this$0.imageview10.setImageResource(R.drawable.sjjd_9);
                        }
                        if (this.this$1.this$0.numbe == 4.0d) {
                            this.this$1.this$0.imageview10.setImageResource(R.drawable.sjjd_10);
                        }
                        if (this.this$1.this$0.numbe == 5.0d) {
                            this.this$1.this$0.numbe = 0.0d;
                        }
                    }
                });
            }
        };
        this.time = timerTask;
        this._timer.scheduleAtFixedRate(timerTask, 0L, 3000L);
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
        setContentView(R.layout.webs);
        initialize(bundle);
        FirebaseApp.initializeApp(this);
        initializeLogic();
    }

    @Deprecated
    public void showMessage(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }
}
