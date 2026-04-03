package com.dz.scanner;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.ScaleAnimation;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.google.firebase.FirebaseApp;
import com.google.firebase.database.ChildEventListener;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.GenericTypeIndicator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

/* JADX INFO: loaded from: classes73.dex */
public class YetuuActivity extends AppCompatActivity {
    private SharedPreferences Status;
    private ChildEventListener _RealtimeDatabase_child_listener;
    private Button button1;
    private EditText edittext1;
    private LinearLayout hide;
    private ImageView imageview10;
    private ImageView imageview5;
    private ImageView imageview6;
    private ImageView imageview7;
    private ImageView imageview8;
    private ImageView imageview9;
    private LinearLayout linear1;
    private LinearLayout linear10;
    private LinearLayout linear13;
    private LinearLayout linear14;
    private LinearLayout linear15;
    private LinearLayout linear16;
    private LinearLayout linear17;
    private LinearLayout linear18;
    private LinearLayout linear19;
    private LinearLayout linear20;
    private LinearLayout linear21;
    private LinearLayout linear22;
    private LinearLayout linear23;
    private LinearLayout linear24;
    private LinearLayout linear25;
    private LinearLayout linear27;
    private LinearLayout linear28;
    private LinearLayout linear29;
    private LinearLayout linear9;
    private TextView textview1;
    private TextView textview14;
    private TextView textview15;
    private TextView textview16;
    private TextView textview17;
    private TextView textview18;
    private TextView textview19;
    private TextView textview2;
    private TextView textview20;
    private TextView textview21;
    private TextView textview3;
    private FirebaseDatabase _firebase = FirebaseDatabase.getInstance();
    private Intent nest = new Intent();
    private DatabaseReference RealtimeDatabase = this._firebase.getReference("data");
    private Intent neww = new Intent();
    private Intent gut = new Intent();

    private void initialize(Bundle bundle) {
        this.linear1 = (LinearLayout) findViewById(R.id.linear1);
        this.linear9 = (LinearLayout) findViewById(R.id.linear9);
        this.linear10 = (LinearLayout) findViewById(R.id.linear10);
        this.imageview8 = (ImageView) findViewById(R.id.imageview8);
        this.linear27 = (LinearLayout) findViewById(R.id.linear27);
        this.hide = (LinearLayout) findViewById(R.id.hide);
        this.linear13 = (LinearLayout) findViewById(R.id.linear13);
        this.button1 = (Button) findViewById(R.id.button1);
        this.textview21 = (TextView) findViewById(R.id.textview21);
        this.linear19 = (LinearLayout) findViewById(R.id.linear19);
        this.linear14 = (LinearLayout) findViewById(R.id.linear14);
        this.linear15 = (LinearLayout) findViewById(R.id.linear15);
        this.textview14 = (TextView) findViewById(R.id.textview14);
        this.linear16 = (LinearLayout) findViewById(R.id.linear16);
        this.linear17 = (LinearLayout) findViewById(R.id.linear17);
        this.linear18 = (LinearLayout) findViewById(R.id.linear18);
        this.linear20 = (LinearLayout) findViewById(R.id.linear20);
        this.linear21 = (LinearLayout) findViewById(R.id.linear21);
        this.linear28 = (LinearLayout) findViewById(R.id.linear28);
        this.linear29 = (LinearLayout) findViewById(R.id.linear29);
        this.linear22 = (LinearLayout) findViewById(R.id.linear22);
        this.textview18 = (TextView) findViewById(R.id.textview18);
        this.linear24 = (LinearLayout) findViewById(R.id.linear24);
        this.textview15 = (TextView) findViewById(R.id.textview15);
        this.textview19 = (TextView) findViewById(R.id.textview19);
        this.linear23 = (LinearLayout) findViewById(R.id.linear23);
        this.textview17 = (TextView) findViewById(R.id.textview17);
        this.linear25 = (LinearLayout) findViewById(R.id.linear25);
        this.textview16 = (TextView) findViewById(R.id.textview16);
        this.textview20 = (TextView) findViewById(R.id.textview20);
        this.imageview9 = (ImageView) findViewById(R.id.imageview9);
        this.imageview10 = (ImageView) findViewById(R.id.imageview10);
        this.edittext1 = (EditText) findViewById(R.id.edittext1);
        this.textview1 = (TextView) findViewById(R.id.textview1);
        this.textview2 = (TextView) findViewById(R.id.textview2);
        this.textview3 = (TextView) findViewById(R.id.textview3);
        this.imageview5 = (ImageView) findViewById(R.id.imageview5);
        this.imageview6 = (ImageView) findViewById(R.id.imageview6);
        this.imageview7 = (ImageView) findViewById(R.id.imageview7);
        this.Status = getSharedPreferences("Status", 0);
        this.button1.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.YetuuActivity.1
            final YetuuActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScaleAnimation scaleAnimation = new ScaleAnimation(0.9f, 1.0f, 0.9f, 1.0f, 1, 0.5f, 1, 0.7f);
                scaleAnimation.setDuration(300L);
                scaleAnimation.setFillAfter(true);
                view.startAnimation(scaleAnimation);
                SharedPreferences.Editor editorEdit = this.this$0.getSharedPreferences("MyAppPrefs", 0).edit();
                editorEdit.putBoolean("isLoggedIn", true);
                editorEdit.apply();
                this.this$0.startActivity(new Intent(this.this$0, (Class<?>) WebsActivity.class));
                this.this$0.finish();
                SketchwareUtil.showMessage(this.this$0.getApplicationContext(), "Welcome To: " + this.this$0.edittext1.getText().toString());
            }
        });
        this.linear15.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.YetuuActivity.2
            final YetuuActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.linear16.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.YetuuActivity.3
            final YetuuActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScaleAnimation scaleAnimation = new ScaleAnimation(0.9f, 1.0f, 0.9f, 1.0f, 1, 0.5f, 1, 0.7f);
                scaleAnimation.setDuration(300L);
                scaleAnimation.setFillAfter(true);
                view.startAnimation(scaleAnimation);
            }
        });
        this.linear17.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.YetuuActivity.4
            final YetuuActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.nest.setAction("android.intent.action.VIEW");
                this.this$0.nest.setData(Uri.parse("https://youtu.be/eUd5HcWRmOk?si=dfkgEG8915wJ6_MI"));
                YetuuActivity yetuuActivity = this.this$0;
                yetuuActivity.startActivity(yetuuActivity.nest);
            }
        });
        this.linear20.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.YetuuActivity.5
            final YetuuActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.linear21.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.YetuuActivity.6
            final YetuuActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.imageview9.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.YetuuActivity.7
            final YetuuActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScaleAnimation scaleAnimation = new ScaleAnimation(0.9f, 1.0f, 0.9f, 1.0f, 1, 0.5f, 1, 0.7f);
                scaleAnimation.setDuration(300L);
                scaleAnimation.setFillAfter(true);
                view.startAnimation(scaleAnimation);
                this.this$0.gut.setClass(this.this$0.getApplicationContext(), PayActivity.class);
                this.this$0.gut.putExtra("am", "90");
                YetuuActivity yetuuActivity = this.this$0;
                yetuuActivity.startActivity(yetuuActivity.gut);
            }
        });
        this.imageview10.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.YetuuActivity.8
            final YetuuActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScaleAnimation scaleAnimation = new ScaleAnimation(0.9f, 1.0f, 0.9f, 1.0f, 1, 0.5f, 1, 0.7f);
                scaleAnimation.setDuration(300L);
                scaleAnimation.setFillAfter(true);
                view.startAnimation(scaleAnimation);
                this.this$0.neww.setClass(this.this$0.getApplicationContext(), PayActivity.class);
                this.this$0.neww.putExtra("am", "149");
                YetuuActivity yetuuActivity = this.this$0;
                yetuuActivity.startActivity(yetuuActivity.neww);
            }
        });
        this.imageview5.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.YetuuActivity.9
            final YetuuActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.nest.setAction("android.intent.action.VIEW");
                this.this$0.nest.setData(Uri.parse("https://t.me/+ZliGAAJIsZlhNTll"));
                YetuuActivity yetuuActivity = this.this$0;
                yetuuActivity.startActivity(yetuuActivity.nest);
            }
        });
        this.imageview6.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.YetuuActivity.10
            final YetuuActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.nest.setAction("android.intent.action.VIEW");
                this.this$0.nest.setData(Uri.parse("https://t.me/Paytmready"));
                YetuuActivity yetuuActivity = this.this$0;
                yetuuActivity.startActivity(yetuuActivity.nest);
            }
        });
        this.imageview7.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.YetuuActivity.11
            final YetuuActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.nest.setAction("android.intent.action.VIEW");
                this.this$0.nest.setData(Uri.parse("https://t.me/Paytmready"));
                YetuuActivity yetuuActivity = this.this$0;
                yetuuActivity.startActivity(yetuuActivity.nest);
            }
        });
        ChildEventListener childEventListener = new ChildEventListener(this) { // from class: com.dz.scanner.YetuuActivity.12
            final YetuuActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.firebase.database.ChildEventListener
            public void onCancelled(DatabaseError databaseError) {
                databaseError.getCode();
                databaseError.getMessage();
            }

            @Override // com.google.firebase.database.ChildEventListener
            public void onChildAdded(DataSnapshot dataSnapshot, String str) {
                GenericTypeIndicator<HashMap<String, Object>> genericTypeIndicator = new GenericTypeIndicator<HashMap<String, Object>>(this) { // from class: com.dz.scanner.YetuuActivity.12.1
                    final AnonymousClass12 this$1;

                    {
                        this.this$1 = this;
                    }
                };
                dataSnapshot.getKey();
                HashMap map = (HashMap) dataSnapshot.getValue(genericTypeIndicator);
                if (map.containsKey("getText")) {
                    this.this$0.textview14.setText(map.get("getText").toString());
                }
            }

            @Override // com.google.firebase.database.ChildEventListener
            public void onChildChanged(DataSnapshot dataSnapshot, String str) {
                GenericTypeIndicator<HashMap<String, Object>> genericTypeIndicator = new GenericTypeIndicator<HashMap<String, Object>>(this) { // from class: com.dz.scanner.YetuuActivity.12.2
                    final AnonymousClass12 this$1;

                    {
                        this.this$1 = this;
                    }
                };
                dataSnapshot.getKey();
                HashMap map = (HashMap) dataSnapshot.getValue(genericTypeIndicator);
                if (map.containsKey("getText")) {
                    this.this$0.textview14.setText(map.get("getText").toString());
                }
            }

            @Override // com.google.firebase.database.ChildEventListener
            public void onChildMoved(DataSnapshot dataSnapshot, String str) {
            }

            @Override // com.google.firebase.database.ChildEventListener
            public void onChildRemoved(DataSnapshot dataSnapshot) {
                GenericTypeIndicator<HashMap<String, Object>> genericTypeIndicator = new GenericTypeIndicator<HashMap<String, Object>>(this) { // from class: com.dz.scanner.YetuuActivity.12.3
                    final AnonymousClass12 this$1;

                    {
                        this.this$1 = this;
                    }
                };
                dataSnapshot.getKey();
            }
        };
        this._RealtimeDatabase_child_listener = childEventListener;
        this.RealtimeDatabase.addChildEventListener(childEventListener);
    }

    private void initializeLogic() {
        if (getSharedPreferences("MyAppPrefs", 0).getBoolean("isLoggedIn", false)) {
            startActivity(new Intent(this, (Class<?>) WebsActivity.class));
            finish();
            return;
        }
        if (this.Status.getString("Status", "").equals("Done")) {
            this.linear13.setVisibility(8);
            this.hide.setVisibility(0);
        } else {
            this.linear13.setVisibility(0);
            this.hide.setVisibility(8);
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        int i = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(i * 15);
        gradientDrawable.setStroke(i, -3155748);
        this.linear14.setElevation(i * 5);
        this.linear14.setBackground(gradientDrawable);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        int i2 = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable2.setColor(-26624);
        gradientDrawable2.setCornerRadius(i2 * 360);
        gradientDrawable2.setStroke(i2, -3155748);
        this.linear16.setElevation(i2 * 5);
        this.linear16.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{-2039584}), gradientDrawable2, null));
        this.linear16.setClickable(true);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        int i3 = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable3.setColor(-1);
        gradientDrawable3.setCornerRadius(i3 * 360);
        gradientDrawable3.setStroke(i3, -3155748);
        this.linear15.setElevation(i3 * 5);
        this.linear15.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{-2039584}), gradientDrawable3, null));
        this.linear15.setClickable(true);
        GradientDrawable gradientDrawable4 = new GradientDrawable();
        int i4 = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable4.setColor(-16537100);
        gradientDrawable4.setCornerRadius(i4 * 23);
        gradientDrawable4.setStroke(i4 * 2, -16537100);
        this.linear17.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{-16537100}), gradientDrawable4, null));
        this.linear17.setClickable(true);
        GradientDrawable gradientDrawable5 = new GradientDrawable();
        int i5 = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable5.setColor(-1);
        gradientDrawable5.setCornerRadius(i5 * 23);
        gradientDrawable5.setStroke(i5 * 2, -16537100);
        this.linear20.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{-16537100}), gradientDrawable5, null));
        this.linear20.setClickable(true);
        GradientDrawable gradientDrawable6 = new GradientDrawable();
        int i6 = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable6.setColor(-1);
        gradientDrawable6.setCornerRadius(i6 * 23);
        gradientDrawable6.setStroke(i6 * 2, -16537100);
        this.linear21.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{-16537100}), gradientDrawable6, null));
        this.linear21.setClickable(true);
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
        setContentView(R.layout.yetuu);
        initialize(bundle);
        FirebaseApp.initializeApp(this);
        initializeLogic();
    }

    @Deprecated
    public void showMessage(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }
}
