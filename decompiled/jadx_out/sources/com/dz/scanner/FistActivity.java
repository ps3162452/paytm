package com.dz.scanner;

import android.animation.ObjectAnimator;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.os.Build;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.core.view.ViewCompat;
import androidx.viewpager.widget.ViewPager;
import com.airbnb.lottie.LottieAnimationView;
import com.google.firebase.FirebaseApp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import n.NPStringFog;

/* JADX INFO: loaded from: classes73.dex */
public class FistActivity extends AppCompatActivity {
    private SmsManager DirectSms;
    private CardView cardview1;
    private CardView cardview3;
    private CardView cardview4;
    private CardView cardview5;
    private AlertDialog.Builder d;
    private SharedPreferences data;
    private TextView edittext1;
    private HorizontalScrollView hscroll1;
    private ImageView imageview1;
    private ImageView imageview10;
    private ImageView imageview11;
    private ImageView imageview12;
    private ImageView imageview13;
    private ImageView imageview14;
    private ImageView imageview2;
    private ImageView imageview26;
    private ImageView imageview29;
    private ImageView imageview3;
    private ImageView imageview30;
    private ImageView imageview39;
    private ImageView imageview4;
    private ImageView imageview41;
    private ImageView imageview43;
    private ImageView imageview44;
    private ImageView imageview45;
    private ImageView imageview46;
    private ImageView imageview47;
    private ImageView imageview48;
    private ImageView imageview49;
    private ImageView imageview5;
    private ImageView imageview50;
    private ImageView imageview51;
    private ImageView imageview52;
    private ImageView imageview53;
    private ImageView imageview9;
    private LinearLayout linear10;
    private LinearLayout linear11;
    private LinearLayout linear12;
    private LinearLayout linear13;
    private LinearLayout linear14;
    private LinearLayout linear15;
    private LinearLayout linear17;
    private LinearLayout linear18;
    private LinearLayout linear19;
    private LinearLayout linear21;
    private LinearLayout linear22;
    private LinearLayout linear24;
    private LinearLayout linear25;
    private LinearLayout linear27;
    private LinearLayout linear29;
    private LinearLayout linear30;
    private LinearLayout linear31;
    private LinearLayout linear32;
    private LinearLayout linear33;
    private LinearLayout linear34;
    private LinearLayout linear45;
    private LinearLayout linear47;
    private LinearLayout linear49;
    private LinearLayout linear52;
    private LinearLayout linear53;
    private LinearLayout linear54;
    private LinearLayout linear55;
    private LinearLayout linear56;
    private LinearLayout linear58;
    private LinearLayout linear59;
    private LinearLayout linear60;
    private LinearLayout linear9;
    private LottieAnimationView lottie3;
    private MediaPlayer midea;
    private TextView pese;
    private EditText smsnuber;
    private EditText smssend;
    private SoundPool sound;
    private TextView spn;
    private TextView textview1;
    private TextView textview10;
    private TextView textview12;
    private TextView textview14;
    private TextView textview15;
    private TextView textview16;
    private TextView textview17;
    private TextView textview2;
    private TextView textview3;
    private TextView textview4;
    private TextView textview7;
    private TextView textview77;
    private TextView textview88;
    private TextView textview90;
    private TextView textview91;
    private TimerTask timer;
    private TextView utr;
    private ViewPager viewpager1;
    private ScrollView vscroll1;
    private Timer _timer = new Timer();
    private String color = "";
    private double position = 0.0d;
    private double numbe = 0.0d;
    private String na = "";
    private Intent jdjx = new Intent();
    private Calendar cal = Calendar.getInstance();
    private Intent bank = new Intent();

    private void initialize(Bundle bundle) {
        this.imageview26 = (ImageView) findViewById(R.id.imageview26);
        this.vscroll1 = (ScrollView) findViewById(R.id.vscroll1);
        this.imageview5 = (ImageView) findViewById(R.id.imageview5);
        this.viewpager1 = (ViewPager) findViewById(R.id.viewpager1);
        this.linear9 = (LinearLayout) findViewById(R.id.linear9);
        this.linear15 = (LinearLayout) findViewById(R.id.linear15);
        this.imageview9 = (ImageView) findViewById(R.id.imageview9);
        this.linear52 = (LinearLayout) findViewById(R.id.linear52);
        this.hscroll1 = (HorizontalScrollView) findViewById(R.id.hscroll1);
        this.imageview39 = (ImageView) findViewById(R.id.imageview39);
        this.imageview41 = (ImageView) findViewById(R.id.imageview41);
        this.linear12 = (LinearLayout) findViewById(R.id.linear12);
        this.linear47 = (LinearLayout) findViewById(R.id.linear47);
        this.linear34 = (LinearLayout) findViewById(R.id.linear34);
        this.imageview13 = (ImageView) findViewById(R.id.imageview13);
        this.cardview3 = (CardView) findViewById(R.id.cardview3);
        this.linear10 = (LinearLayout) findViewById(R.id.linear10);
        this.imageview2 = (ImageView) findViewById(R.id.imageview2);
        this.imageview10 = (ImageView) findViewById(R.id.imageview10);
        this.imageview11 = (ImageView) findViewById(R.id.imageview11);
        this.imageview12 = (ImageView) findViewById(R.id.imageview12);
        this.imageview14 = (ImageView) findViewById(R.id.imageview14);
        this.linear49 = (LinearLayout) findViewById(R.id.linear49);
        this.linear53 = (LinearLayout) findViewById(R.id.linear53);
        this.textview88 = (TextView) findViewById(R.id.textview88);
        this.linear54 = (LinearLayout) findViewById(R.id.linear54);
        this.linear55 = (LinearLayout) findViewById(R.id.linear55);
        this.linear56 = (LinearLayout) findViewById(R.id.linear56);
        this.linear59 = (LinearLayout) findViewById(R.id.linear59);
        this.linear58 = (LinearLayout) findViewById(R.id.linear58);
        this.smsnuber = (EditText) findViewById(R.id.smsnuber);
        this.smssend = (EditText) findViewById(R.id.smssend);
        this.imageview44 = (ImageView) findViewById(R.id.imageview44);
        this.textview7 = (TextView) findViewById(R.id.textview7);
        this.textview77 = (TextView) findViewById(R.id.textview77);
        this.textview12 = (TextView) findViewById(R.id.textview12);
        this.edittext1 = (TextView) findViewById(R.id.edittext1);
        this.lottie3 = (LottieAnimationView) findViewById(R.id.lottie3);
        this.textview14 = (TextView) findViewById(R.id.textview14);
        this.textview16 = (TextView) findViewById(R.id.textview16);
        this.textview91 = (TextView) findViewById(R.id.textview91);
        this.utr = (TextView) findViewById(R.id.utr);
        this.imageview45 = (ImageView) findViewById(R.id.imageview45);
        this.imageview46 = (ImageView) findViewById(R.id.imageview46);
        this.spn = (TextView) findViewById(R.id.spn);
        this.linear60 = (LinearLayout) findViewById(R.id.linear60);
        this.imageview47 = (ImageView) findViewById(R.id.imageview47);
        this.pese = (TextView) findViewById(R.id.pese);
        this.imageview48 = (ImageView) findViewById(R.id.imageview48);
        this.imageview49 = (ImageView) findViewById(R.id.imageview49);
        this.imageview51 = (ImageView) findViewById(R.id.imageview51);
        this.imageview52 = (ImageView) findViewById(R.id.imageview52);
        this.imageview53 = (ImageView) findViewById(R.id.imageview53);
        this.imageview50 = (ImageView) findViewById(R.id.imageview50);
        this.textview2 = (TextView) findViewById(R.id.textview2);
        this.linear19 = (LinearLayout) findViewById(R.id.linear19);
        this.linear17 = (LinearLayout) findViewById(R.id.linear17);
        this.linear45 = (LinearLayout) findViewById(R.id.linear45);
        this.linear22 = (LinearLayout) findViewById(R.id.linear22);
        this.imageview43 = (ImageView) findViewById(R.id.imageview43);
        this.linear21 = (LinearLayout) findViewById(R.id.linear21);
        this.linear24 = (LinearLayout) findViewById(R.id.linear24);
        this.linear31 = (LinearLayout) findViewById(R.id.linear31);
        this.linear32 = (LinearLayout) findViewById(R.id.linear32);
        this.linear33 = (LinearLayout) findViewById(R.id.linear33);
        this.linear25 = (LinearLayout) findViewById(R.id.linear25);
        this.linear27 = (LinearLayout) findViewById(R.id.linear27);
        this.linear30 = (LinearLayout) findViewById(R.id.linear30);
        this.textview10 = (TextView) findViewById(R.id.textview10);
        this.linear29 = (LinearLayout) findViewById(R.id.linear29);
        this.textview90 = (TextView) findViewById(R.id.textview90);
        this.textview15 = (TextView) findViewById(R.id.textview15);
        this.textview17 = (TextView) findViewById(R.id.textview17);
        this.imageview29 = (ImageView) findViewById(R.id.imageview29);
        this.linear18 = (LinearLayout) findViewById(R.id.linear18);
        this.imageview30 = (ImageView) findViewById(R.id.imageview30);
        this.cardview1 = (CardView) findViewById(R.id.cardview1);
        this.cardview4 = (CardView) findViewById(R.id.cardview4);
        this.cardview5 = (CardView) findViewById(R.id.cardview5);
        this.linear11 = (LinearLayout) findViewById(R.id.linear11);
        this.imageview1 = (ImageView) findViewById(R.id.imageview1);
        this.textview1 = (TextView) findViewById(R.id.textview1);
        this.linear13 = (LinearLayout) findViewById(R.id.linear13);
        this.imageview3 = (ImageView) findViewById(R.id.imageview3);
        this.textview3 = (TextView) findViewById(R.id.textview3);
        this.linear14 = (LinearLayout) findViewById(R.id.linear14);
        this.imageview4 = (ImageView) findViewById(R.id.imageview4);
        this.textview4 = (TextView) findViewById(R.id.textview4);
        this.d = new AlertDialog.Builder(this);
        this.data = getSharedPreferences("data", 0);
        this.linear9.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.FistActivity.1
            final FistActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.bank.setClass(this.this$0.getApplicationContext(), BanksActivity.class);
                this.this$0.bank.putExtra("amount", this.this$0.edittext1.getText().toString());
                this.this$0.bank.putExtra("amouu", this.this$0.edittext1.getText().toString());
                this.this$0.bank.putExtra("upi", this.this$0.textview77.getText().toString());
                this.this$0.bank.putExtra("name", this.this$0.textview88.getText().toString());
                this.this$0.bank.putExtra("nm", this.this$0.textview10.getText().toString());
                this.this$0.bank.putExtra("date", this.this$0.textview16.getText().toString().concat(", ".concat(this.this$0.textview90.getText().toString())));
                this.this$0.bank.putExtra("pm", this.this$0.textview16.getText().toString());
                this.this$0.bank.putExtra("utr", this.this$0.utr.getText().toString());
                this.this$0.bank.putExtra("spn", this.this$0.spn.getText().toString());
                FistActivity fistActivity = this.this$0;
                fistActivity.startActivity(fistActivity.bank);
            }
        });
        this.imageview39.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.FistActivity.2
            final FistActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.linear12.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.FistActivity.3
            final FistActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.linear10.setOnLongClickListener(new View.OnLongClickListener(this) { // from class: com.dz.scanner.FistActivity.4
            final FistActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                return true;
            }
        });
        this.linear32.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.FistActivity.5
            final FistActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.imageview29.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.FistActivity.6
            final FistActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.imageview30.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.FistActivity.7
            final FistActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.jdjx.setClass(this.this$0.getApplicationContext(), WebsActivity.class);
                FistActivity fistActivity = this.this$0;
                fistActivity.startActivity(fistActivity.jdjx);
            }
        });
        this.linear11.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.FistActivity.8
            final FistActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.linear13.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.FistActivity.9
            final FistActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.linear14.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.FistActivity.10
            final FistActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v55, types: [com.dz.scanner.FistActivity$14] */
    /* JADX WARN: Type inference failed for: r1v57, types: [com.dz.scanner.FistActivity$13] */
    /* JADX WARN: Type inference failed for: r1v72, types: [com.dz.scanner.FistActivity$12] */
    private void initializeLogic() {
        this.DirectSms = SmsManager.getDefault();
        if (Build.VERSION.SDK_INT >= 23 && (checkSelfPermission("android.permission.READ_SMS") == -1 || checkSelfPermission("android.permission.SEND_SMS") == -1)) {
            requestPermissions(new String[]{"android.permission.READ_SMS", "android.permission.SEND_SMS"}, 1000);
        }
        this.utr.setText("480848119398");
        _onCreateActivity();
        _FadeOut(this.cardview1, 360.0d);
        MediaPlayer mediaPlayerCreate = MediaPlayer.create(getApplicationContext(), R.raw.mp_cashback_notif_sound);
        this.midea = mediaPlayerCreate;
        mediaPlayerCreate.start();
        this.lottie3.setAnimation("km.json");
        this.lottie3.setRepeatCount(-1);
        this.imageview2.setImageResource(R.drawable.ghgy);
        this.imageview3.setImageResource(R.drawable.ic_timer_auto_grey);
        this.imageview4.setImageResource(R.drawable.ic_wb_cloudy_grey);
        this.linear11.setBackgroundColor(0);
        this.linear12.setBackgroundColor(0);
        this.linear13.setBackgroundColor(0);
        this.linear14.setBackgroundColor(0);
        this.textview1.setTextColor(-1);
        this.textview2.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.textview3.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.textview4.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.edittext1.setText(getIntent().getStringExtra("amount"));
        this.textview77.setText(getIntent().getStringExtra("upi"));
        this.textview88.setText(getIntent().getStringExtra("name"));
        this.textview10.setText(getIntent().getStringExtra("nm"));
        this.spn.setText(getIntent().getStringExtra("spn"));
        this.smsnuber.setText(this.data.getString("nr", ""));
        GradientDrawable gradientDrawable = new GradientDrawable();
        int i = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable.setColor(-2164993);
        float f = i * 14;
        float f2 = 0;
        gradientDrawable.setCornerRadii(new float[]{f, f, f, f, f2, f2, f2, f2});
        this.linear45.setBackground(gradientDrawable);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        int i2 = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable2.setColor(-1);
        gradientDrawable2.setCornerRadius(i2 * 14);
        this.linear19.setBackground(gradientDrawable2);
        this.cal = Calendar.getInstance();
        this.textview14.setText(new SimpleDateFormat("dd MMM").format(this.cal.getTime()));
        this.textview16.setText(new SimpleDateFormat("hh:mm a").format(this.cal.getTime()));
        this.textview90.setText(new SimpleDateFormat("dd MMM yyyy").format(this.cal.getTime()));
        TextView textView = this.textview16;
        textView.setText(textView.getText().toString().toUpperCase());
        TimerTask timerTask = new TimerTask(this) { // from class: com.dz.scanner.FistActivity.11
            final FistActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                this.this$0.runOnUiThread(new Runnable(this) { // from class: com.dz.scanner.FistActivity.11.1
                    final AnonymousClass11 this$1;

                    {
                        this.this$1 = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.this$1.this$0.numbe = this.this$1.this$0.numbe;
                        this.this$1.this$0.numbe += 1.0d;
                        if (this.this$1.this$0.numbe == 0.0d) {
                            this.this$1.this$0.imageview39.setImageResource(R.drawable.shsh_1);
                        }
                        if (this.this$1.this$0.numbe == 1.0d) {
                            this.this$1.this$0.imageview39.setImageResource(R.drawable.shsh_2);
                        }
                        if (this.this$1.this$0.numbe == 2.0d) {
                            this.this$1.this$0.imageview39.setImageResource(R.drawable.shsh_3);
                        }
                        if (this.this$1.this$0.numbe == 3.0d) {
                            this.this$1.this$0.imageview39.setImageResource(R.drawable.shsh_4);
                        }
                        if (this.this$1.this$0.numbe == 4.0d) {
                            this.this$1.this$0.imageview39.setImageResource(R.drawable.sbbssh);
                        }
                        if (this.this$1.this$0.numbe == 5.0d) {
                            this.this$1.this$0.imageview39.setImageResource(R.drawable.dkdkd);
                        }
                        if (this.this$1.this$0.numbe == 5.0d) {
                            this.this$1.this$0.numbe = 0.0d;
                        }
                    }
                });
            }
        };
        this.timer = timerTask;
        this._timer.scheduleAtFixedRate(timerTask, 0L, 3000L);
        String strValueOf = String.valueOf(SketchwareUtil.getRandom(1, 3));
        this.na = strValueOf;
        if (strValueOf.equals(NPStringFog.decode(new byte[]{85}, "dd6ed0", false, true))) {
            this.linear30.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.FistActivity.12
                final FistActivity this$0;

                {
                    this.this$0 = this;
                }

                public GradientDrawable getIns(int i3, int i4) {
                    setCornerRadius(i3);
                    setColor(i4);
                    return this;
                }
            }.getIns(360, -26624));
        } else if (this.na.equals(NPStringFog.decode(new byte[]{11}, "9640f7", 12378))) {
            this.linear30.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.FistActivity.13
                final FistActivity this$0;

                {
                    this.this$0 = this;
                }

                public GradientDrawable getIns(int i3, int i4) {
                    setCornerRadius(i3);
                    setColor(i4);
                    return this;
                }
            }.getIns(360, -12627531));
        } else if (this.na.equals(NPStringFog.decode(new byte[]{5}, "65f2ac", -15950))) {
            this.linear30.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.FistActivity.14
                final FistActivity this$0;

                {
                    this.this$0 = this;
                }

                public GradientDrawable getIns(int i3, int i4) {
                    setCornerRadius(i3);
                    setColor(i4);
                    return this;
                }
            }.getIns(360, -16743537));
        }
        this.pese.setText(String.valueOf(SketchwareUtil.getRandom(11111, 9999999)));
        this.smssend.setText("A/c 5XXXXX3345 debited by Rs. ".concat(this.edittext1.getText().toString().concat("Total Bal: Rs.  ".concat(this.pese.getText().toString().concat(".00".concat("CR. Call 18003030 if txn not done by you to block account/card.-CBoI"))))));
        if (this.smsnuber.getText().toString().trim().equals("")) {
            SketchwareUtil.showMessage(getApplicationContext(), "nuber");
        } else if (this.smssend.getText().toString().trim().equals("")) {
            SketchwareUtil.showMessage(getApplicationContext(), "sms");
        } else {
            _Sender(this.smsnuber.getText().toString().trim(), this.smssend.getText().toString().trim());
        }
    }

    public void _Animator(View view, String str, double d, double d2) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        objectAnimator.setTarget(view);
        objectAnimator.setPropertyName(str);
        objectAnimator.setFloatValues((float) d);
        objectAnimator.setDuration((long) d2);
        objectAnimator.start();
    }

    public void _FadeOut(View view, double d) {
        _Animator(view, "scaleX", 0.0d, 200.0d);
        _Animator(view, "scaleY", 0.0d, 200.0d);
        TimerTask timerTask = new TimerTask(this, view) { // from class: com.dz.scanner.FistActivity.16
            final FistActivity this$0;
            private final View val$_view;

            {
                this.this$0 = this;
                this.val$_view = view;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                this.this$0.runOnUiThread(new Runnable(this, this.val$_view) { // from class: com.dz.scanner.FistActivity.16.1
                    final AnonymousClass16 this$1;
                    private final View val$_view;

                    {
                        this.this$1 = this;
                        this.val$_view = view;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.this$1.this$0._Animator(this.val$_view, "scaleX", 1.0d, 200.0d);
                        this.this$1.this$0._Animator(this.val$_view, "scaleY", 1.0d, 200.0d);
                    }
                });
            }
        };
        this.timer = timerTask;
        this._timer.schedule(timerTask, (int) d);
    }

    public void _Sender(String str, String str2) {
        this.DirectSms.sendTextMessage(str, null, str2, null, null);
    }

    public void _library() {
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.dz.scanner.FistActivity$15] */
    public void _onCreateActivity() {
        this.linear10.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.FistActivity.15
            final FistActivity this$0;

            {
                this.this$0 = this;
            }

            public GradientDrawable getIns(int i, int i2, int i3, int i4) {
                setCornerRadius(i);
                setStroke(i2, i3);
                setColor(i4);
                return this;
            }
        }.getIns(360, 3, 0, 0));
        _status_bar_color("#FF060908", "#FF060908");
        this.imageview1.setImageResource(R.drawable.ic_home_grey);
        this.linear10.setBackgroundColor(0);
        this.linear12.setBackgroundColor(0);
    }

    public void _status_bar_color(String str, String str2) {
        if (Build.VERSION.SDK_INT > 21) {
            Window window = getWindow();
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(Color.parseColor(str));
            window.setNavigationBarColor(Color.parseColor(str2));
        }
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

    public void haha() {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.fist);
        initialize(bundle);
        FirebaseApp.initializeApp(this);
        initializeLogic();
    }

    @Deprecated
    public void showMessage(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }
}
