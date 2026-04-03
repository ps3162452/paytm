package com.dz.scanner;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
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
public class ProfileActivity extends AppCompatActivity {
    private Button button2;
    private Button button3;
    private Button button4;
    private SharedPreferences data;
    private EditText edittext1;
    private EditText edittext4;
    private EditText edittext_full;
    private EditText edittext_short;
    private ImageView imageview1;
    private LinearLayout linear1;
    private LinearLayout linear2;
    private LinearLayout linear3;
    private LinearLayout linear4;
    private LinearLayout linear5;
    private LinearLayout linear6;
    private LinearLayout linear7;
    private TextView textview1;
    private TextView textview2;
    private TextView textview3;
    private TextView textview4;
    private Intent internate = new Intent();
    private Intent upi = new Intent();
    private Intent nm = new Intent();

    private void initialize(Bundle bundle) {
        this.linear1 = (LinearLayout) findViewById(R.id.linear1);
        this.linear2 = (LinearLayout) findViewById(R.id.linear2);
        this.textview1 = (TextView) findViewById(R.id.textview1);
        this.edittext1 = (EditText) findViewById(R.id.edittext1);
        this.linear4 = (LinearLayout) findViewById(R.id.linear4);
        this.textview3 = (TextView) findViewById(R.id.textview3);
        this.edittext_full = (EditText) findViewById(R.id.edittext_full);
        this.textview2 = (TextView) findViewById(R.id.textview2);
        this.edittext4 = (EditText) findViewById(R.id.edittext4);
        this.linear5 = (LinearLayout) findViewById(R.id.linear5);
        this.linear6 = (LinearLayout) findViewById(R.id.linear6);
        this.textview4 = (TextView) findViewById(R.id.textview4);
        this.edittext_short = (EditText) findViewById(R.id.edittext_short);
        this.linear7 = (LinearLayout) findViewById(R.id.linear7);
        this.linear3 = (LinearLayout) findViewById(R.id.linear3);
        this.imageview1 = (ImageView) findViewById(R.id.imageview1);
        this.button2 = (Button) findViewById(R.id.button2);
        this.button3 = (Button) findViewById(R.id.button3);
        this.button4 = (Button) findViewById(R.id.button4);
        this.data = getSharedPreferences("data", 0);
        this.button2.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.ProfileActivity.1
            final ProfileActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.internate.setClass(this.this$0.getApplicationContext(), FistActivity.class);
                this.this$0.data.edit().putString("nr", this.this$0.edittext1.getText().toString()).commit();
                ProfileActivity profileActivity = this.this$0;
                profileActivity.startActivity(profileActivity.internate);
            }
        });
        this.button3.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.ProfileActivity.2
            final ProfileActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.upi.setClass(this.this$0.getApplicationContext(), HistoryActivity.class);
                this.this$0.data.edit().putString("nc", this.this$0.edittext_full.getText().toString()).commit();
                this.this$0.data.edit().putString("nc1", this.this$0.edittext4.getText().toString()).commit();
                this.this$0.data.edit().putString("nc2", this.this$0.edittext_short.getText().toString()).commit();
                ProfileActivity profileActivity = this.this$0;
                profileActivity.startActivity(profileActivity.upi);
            }
        });
        this.button4.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.ProfileActivity.3
            final ProfileActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.nm.setClass(this.this$0.getApplicationContext(), WebsActivity.class);
                this.this$0.data.edit().putString("nm", this.this$0.edittext_short.getText().toString()).commit();
                ProfileActivity profileActivity = this.this$0;
                profileActivity.startActivity(profileActivity.nm);
            }
        });
    }

    private void initializeLogic() {
        this.edittext_full.addTextChangedListener(new TextWatcher(this) { // from class: com.dz.scanner.ProfileActivity.4
            final ProfileActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                String strTrim = charSequence.toString().trim();
                String str = "";
                if (strTrim.isEmpty()) {
                    this.this$0.edittext_short.setText("");
                    return;
                }
                String[] strArrSplit = strTrim.split(" ");
                for (String str2 : strArrSplit) {
                    if (str2.length() > 0) {
                        str = String.valueOf(str) + str2.charAt(0);
                    }
                }
                this.this$0.edittext_short.setText(str.toUpperCase());
            }
        });
        GradientDrawable gradientDrawable = new GradientDrawable();
        int i = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(i * 14);
        gradientDrawable.setStroke(i * 2, -16537100);
        this.edittext1.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{-2039584}), gradientDrawable, null));
        this.edittext1.setClickable(true);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        int i2 = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable2.setColor(-1);
        gradientDrawable2.setCornerRadius(i2 * 14);
        gradientDrawable2.setStroke(i2 * 2, -16537100);
        this.edittext4.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{-2039584}), gradientDrawable2, null));
        this.edittext4.setClickable(true);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        int i3 = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable3.setColor(-1);
        gradientDrawable3.setCornerRadius(i3 * 14);
        gradientDrawable3.setStroke(i3 * 2, -16537100);
        this.edittext_short.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{-2039584}), gradientDrawable3, null));
        this.edittext_short.setClickable(true);
        GradientDrawable gradientDrawable4 = new GradientDrawable();
        int i4 = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable4.setColor(-1);
        gradientDrawable4.setCornerRadius(i4 * 14);
        gradientDrawable4.setStroke(i4 * 2, -16537100);
        this.edittext_full.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{-2039584}), gradientDrawable4, null));
        this.edittext_full.setClickable(true);
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
        setContentView(R.layout.profile);
        initialize(bundle);
        FirebaseApp.initializeApp(this);
        initializeLogic();
    }

    @Deprecated
    public void showMessage(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }
}
