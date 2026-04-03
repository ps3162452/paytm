package com.dz.scanner;

import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.google.firebase.FirebaseApp;
import java.util.ArrayList;
import java.util.Random;

/* JADX INFO: loaded from: classes73.dex */
public class IpiActivity extends AppCompatActivity {
    private TextView checkupi;
    private TextView editText1;
    private ImageView imageview1;
    private ImageView imageview18;
    private ImageView imageview2;
    private ImageView imageview3;
    private Intent inte = new Intent();
    private ImageView line1;
    private ImageView line2;
    private ImageView line3;
    private ImageView line4;
    private LinearLayout linear10;
    private LinearLayout linear11;
    private LinearLayout linear12;
    private LinearLayout linear13;
    private LinearLayout linear14;
    private LinearLayout linear15;
    private LinearLayout linear17;
    private LinearLayout linear18;
    private LinearLayout linear19;
    private LinearLayout linear20;
    private LinearLayout linear21;
    private LinearLayout linear22;
    private LinearLayout linear24;
    private LinearLayout linear25;
    private LinearLayout linear26;
    private LinearLayout linear27;
    private LinearLayout linear28;
    private LinearLayout linear29;
    private LinearLayout linear6;
    private LinearLayout linear7;
    private LinearLayout linear8;
    private LinearLayout linear9;
    private TextView spn;
    private TextView textView77;
    private TextView textView88;
    private TextView textview1;
    private TextView textview10;
    private TextView textview13;
    private TextView textview14;
    private TextView textview18;
    private TextView textview19;
    private TextView textview2;
    private TextView textview20;
    private TextView textview21;
    private TextView textview22;
    private TextView textview23;
    private TextView textview24;
    private TextView textview3;
    private TextView textview4;
    private TextView textview5;
    private TextView textview6;
    private TextView textview7;
    private TextView textview8;
    private TextView textview9;

    private void initialize(Bundle bundle) {
        this.linear6 = (LinearLayout) findViewById(R.id.linear6);
        this.linear7 = (LinearLayout) findViewById(R.id.linear7);
        this.linear8 = (LinearLayout) findViewById(R.id.linear8);
        this.linear21 = (LinearLayout) findViewById(R.id.linear21);
        this.linear22 = (LinearLayout) findViewById(R.id.linear22);
        this.linear28 = (LinearLayout) findViewById(R.id.linear28);
        this.editText1 = (TextView) findViewById(R.id.editText1);
        this.spn = (TextView) findViewById(R.id.spn);
        this.linear9 = (LinearLayout) findViewById(R.id.linear9);
        this.linear10 = (LinearLayout) findViewById(R.id.linear10);
        this.linear15 = (LinearLayout) findViewById(R.id.linear15);
        this.linear17 = (LinearLayout) findViewById(R.id.linear17);
        this.textview13 = (TextView) findViewById(R.id.textview13);
        this.textview14 = (TextView) findViewById(R.id.textview14);
        this.imageview3 = (ImageView) findViewById(R.id.imageview3);
        this.linear18 = (LinearLayout) findViewById(R.id.linear18);
        this.linear19 = (LinearLayout) findViewById(R.id.linear19);
        this.textview18 = (TextView) findViewById(R.id.textview18);
        this.textview19 = (TextView) findViewById(R.id.textview19);
        this.textView88 = (TextView) findViewById(R.id.textView88);
        this.linear20 = (LinearLayout) findViewById(R.id.linear20);
        this.textview20 = (TextView) findViewById(R.id.textview20);
        this.textView77 = (TextView) findViewById(R.id.textView77);
        this.textview21 = (TextView) findViewById(R.id.textview21);
        this.linear29 = (LinearLayout) findViewById(R.id.linear29);
        this.textview24 = (TextView) findViewById(R.id.textview24);
        this.textview22 = (TextView) findViewById(R.id.textview22);
        this.linear24 = (LinearLayout) findViewById(R.id.linear24);
        this.linear25 = (LinearLayout) findViewById(R.id.linear25);
        this.linear26 = (LinearLayout) findViewById(R.id.linear26);
        this.linear27 = (LinearLayout) findViewById(R.id.linear27);
        this.line1 = (ImageView) findViewById(R.id.line1);
        this.line2 = (ImageView) findViewById(R.id.line2);
        this.line3 = (ImageView) findViewById(R.id.line3);
        this.line4 = (ImageView) findViewById(R.id.line4);
        this.imageview18 = (ImageView) findViewById(R.id.imageview18);
        this.checkupi = (TextView) findViewById(R.id.checkupi);
        this.textview23 = (TextView) findViewById(R.id.textview23);
        this.linear11 = (LinearLayout) findViewById(R.id.linear11);
        this.linear12 = (LinearLayout) findViewById(R.id.linear12);
        this.linear13 = (LinearLayout) findViewById(R.id.linear13);
        this.linear14 = (LinearLayout) findViewById(R.id.linear14);
        this.textview4 = (TextView) findViewById(R.id.textview4);
        this.textview5 = (TextView) findViewById(R.id.textview5);
        this.textview6 = (TextView) findViewById(R.id.textview6);
        this.imageview2 = (ImageView) findViewById(R.id.imageview2);
        this.textview1 = (TextView) findViewById(R.id.textview1);
        this.textview2 = (TextView) findViewById(R.id.textview2);
        this.textview3 = (TextView) findViewById(R.id.textview3);
        this.textview10 = (TextView) findViewById(R.id.textview10);
        this.textview7 = (TextView) findViewById(R.id.textview7);
        this.textview8 = (TextView) findViewById(R.id.textview8);
        this.textview9 = (TextView) findViewById(R.id.textview9);
        this.imageview1 = (ImageView) findViewById(R.id.imageview1);
        this.textview4.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.IpiActivity.1
            final IpiActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.line1.setImageResource(R.drawable.ghgh);
                this.this$0.line2.setImageResource(R.drawable.ghgh);
                this.this$0.line3.setImageResource(R.drawable.ghgh);
                this.this$0.line4.setImageResource(R.drawable.ghgh);
            }
        });
        this.textview6.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.IpiActivity.2
            final IpiActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.line1.setImageResource(R.drawable.ghgh);
                this.this$0.line2.setImageResource(R.drawable.ghgh);
                this.this$0.line3.setImageResource(R.drawable.ghgh);
                this.this$0.line4.setImageResource(R.drawable.ghgh);
            }
        });
        this.textview1.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.IpiActivity.3
            final IpiActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.line1.setImageResource(R.drawable.ghgh);
                this.this$0.line2.setImageResource(R.drawable.ghgh);
                this.this$0.line3.setImageResource(R.drawable.ghgh);
                this.this$0.line4.setImageResource(R.drawable.ghgh);
            }
        });
        this.textview2.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.IpiActivity.4
            final IpiActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.line1.setImageResource(R.drawable.ghgh);
                this.this$0.line2.setImageResource(R.drawable.ghgh);
                this.this$0.line3.setImageResource(R.drawable.ghgh);
                this.this$0.line4.setImageResource(R.drawable.ghgh);
            }
        });
        this.textview3.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.IpiActivity.5
            final IpiActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.line1.setImageResource(R.drawable.ghgh);
                this.this$0.line2.setImageResource(R.drawable.ghgh);
                this.this$0.line3.setImageResource(R.drawable.ghgh);
                this.this$0.line4.setImageResource(R.drawable.ghgh);
            }
        });
        this.textview10.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.IpiActivity.6
            final IpiActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.line1.setImageResource(R.drawable.ghgh);
                this.this$0.line2.setImageResource(R.drawable.ghgh);
                this.this$0.line3.setImageResource(R.drawable.ghgh);
                this.this$0.line4.setImageResource(R.drawable.ghgh);
            }
        });
        this.textview7.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.IpiActivity.7
            final IpiActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.line1.setImageResource(R.drawable.ghgh);
                this.this$0.line2.setImageResource(R.drawable.ghgh);
                this.this$0.line3.setImageResource(R.drawable.ghgh);
                this.this$0.line4.setImageResource(R.drawable.ghgh);
            }
        });
        this.textview8.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.IpiActivity.8
            final IpiActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.line1.setImageResource(R.drawable.ghgh);
                this.this$0.line2.setImageResource(R.drawable.ghgh);
                this.this$0.line3.setImageResource(R.drawable.ghgh);
                this.this$0.line4.setImageResource(R.drawable.ghgh);
            }
        });
        this.textview9.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.IpiActivity.9
            final IpiActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.line1.setImageResource(R.drawable.ghgh);
                this.this$0.line2.setImageResource(R.drawable.ghgh);
                this.this$0.line3.setImageResource(R.drawable.ghgh);
                this.this$0.line4.setImageResource(R.drawable.ghgh);
            }
        });
        this.imageview1.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.IpiActivity.10
            final IpiActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.inte.setClass(this.this$0.getApplicationContext(), StutussActivity.class);
                this.this$0.inte.putExtra("amount", this.this$0.textView77.getText().toString());
                this.this$0.inte.putExtra("upi", this.this$0.editText1.getText().toString());
                this.this$0.inte.putExtra("name", this.this$0.textView88.getText().toString());
                this.this$0.inte.putExtra("nm", this.this$0.textview24.getText().toString());
                this.this$0.inte.putExtra("spn", this.this$0.spn.getText().toString());
                IpiActivity ipiActivity = this.this$0;
                ipiActivity.startActivity(ipiActivity.inte);
            }
        });
    }

    private void initializeLogic() {
        this.checkupi.setText(getIntent().getStringExtra("sani"));
        this.textView77.setText(getIntent().getStringExtra("amo"));
        this.editText1.setText(getIntent().getStringExtra("up"));
        this.textView88.setText(getIntent().getStringExtra("nam"));
        this.textview24.setText(getIntent().getStringExtra("nm"));
        this.spn.setText(getIntent().getStringExtra("spn"));
        GradientDrawable gradientDrawable = new GradientDrawable();
        int i = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable.setColor(-8014);
        gradientDrawable.setCornerRadius(i * 25);
        this.linear28.setBackground(gradientDrawable);
        this.textview23.setText("You are SENDING".concat(" ₹ ".concat(this.textView77.getText().toString().concat(" from your account to ".concat(this.textView88.getText().toString())))));
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
        setContentView(R.layout.ipi);
        initialize(bundle);
        FirebaseApp.initializeApp(this);
        initializeLogic();
    }

    @Deprecated
    public void showMessage(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }
}
