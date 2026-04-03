package com.dz.scanner;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.firebase.FirebaseApp;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import n.NPStringFog;

/* JADX INFO: loaded from: classes73.dex */
public class ResultActivity extends AppCompatActivity {
    private BottomSheetDialog bootom;
    private AlertDialog.Builder d;
    private EditText edittext1;
    private EditText edittext2;
    private ImageView imageview2;
    private ImageView imageview3;
    private ImageView imageview4;
    private ImageView imageview5;
    private LinearLayout linear1;
    private LinearLayout linear14;
    private LinearLayout linear15;
    private LinearLayout linear16;
    private LinearLayout linear17;
    private LinearLayout linear18;
    private LinearLayout linear19;
    private LinearLayout linear2;
    private LinearLayout linear20;
    private LinearLayout linear21;
    private LinearLayout linear22;
    private LinearLayout linear23;
    private LinearLayout linear24;
    private LinearLayout linear25;
    private LinearLayout linear3;
    private LinearLayout linear4;
    private LinearLayout linear5;
    private LinearLayout linear6;
    private TextView textview10;
    private TextView textview12;
    private TextView textview14;
    private TextView textview15;
    private TextView textview17;
    private TextView textview2;
    private TextView textview7;
    private EditText textview8;
    private TextView textview9;
    private TimerTask time;
    private Timer _timer = new Timer();
    private double number = 0.0d;
    private String ReSuLt = "";
    private double na = 0.0d;
    private String naa = "";
    private String lastValue = "";
    private Intent j = new Intent();
    private Intent Next = new Intent();

    public static class EnglishNumberToWords {
        private static final String[] tensNames = {"", " ten", " twenty", " thirty", " forty", " fifty", " sixty", " seventy", " eighty", " ninety"};
        private static final String[] numNames = {"", " one", " two", " three", " four", " five", " six", " seven", " eight", " nine", " ten", " eleven", " twelve", " thirteen", " fourteen", " fifteen", " sixteen", " seventeen", " eighteen", " nineteen"};

        private EnglishNumberToWords() {
        }

        public static String convert(long j) {
            String str;
            String str2;
            String str3;
            if (j == 0) {
                return "zero";
            }
            Long.toString(j);
            String str4 = new DecimalFormat("000000000000").format(j);
            int i = Integer.parseInt(str4.substring(0, 3));
            int i2 = Integer.parseInt(str4.substring(3, 6));
            int i3 = Integer.parseInt(str4.substring(6, 9));
            int i4 = Integer.parseInt(str4.substring(9, 12));
            if (i == 0) {
                str = "";
            } else if (i != 1) {
                str = String.valueOf(convertLessThanOneThousand(i)) + " billion ";
            } else {
                str = String.valueOf(convertLessThanOneThousand(i)) + " billion ";
            }
            if (i2 == 0) {
                str2 = "";
            } else if (i2 != 1) {
                str2 = String.valueOf(convertLessThanOneThousand(i2)) + " million ";
            } else {
                str2 = String.valueOf(convertLessThanOneThousand(i2)) + " million ";
            }
            String str5 = String.valueOf(str) + str2;
            if (i3 == 0) {
                str3 = "";
            } else if (i3 != 1) {
                str3 = String.valueOf(convertLessThanOneThousand(i3)) + " thousand ";
            } else {
                str3 = "one thousand ";
            }
            String str6 = String.valueOf(str5) + str3;
            return (String.valueOf(str6) + convertLessThanOneThousand(i4)).replaceAll("^\\s+", "").replaceAll("\\b\\s{2,}\\b", " ");
        }

        private static String convertLessThanOneThousand(int i) {
            String str;
            int i2;
            int i3 = i % 100;
            if (i3 < 20) {
                str = numNames[i3];
                i2 = i / 100;
            } else {
                int i4 = i / 10;
                str = String.valueOf(tensNames[i4 % 10]) + numNames[i % 10];
                i2 = i4 / 10;
            }
            if (i2 == 0) {
                return str;
            }
            return String.valueOf(numNames[i2]) + " hundred" + str;
        }
    }

    private void initialize(Bundle bundle) {
        this.linear3 = (LinearLayout) findViewById(R.id.linear3);
        this.linear1 = (LinearLayout) findViewById(R.id.linear1);
        this.textview2 = (TextView) findViewById(R.id.textview2);
        this.linear19 = (LinearLayout) findViewById(R.id.linear19);
        this.linear14 = (LinearLayout) findViewById(R.id.linear14);
        this.linear17 = (LinearLayout) findViewById(R.id.linear17);
        this.textview12 = (TextView) findViewById(R.id.textview12);
        this.linear15 = (LinearLayout) findViewById(R.id.linear15);
        this.linear24 = (LinearLayout) findViewById(R.id.linear24);
        this.edittext2 = (EditText) findViewById(R.id.edittext2);
        this.linear2 = (LinearLayout) findViewById(R.id.linear2);
        this.imageview3 = (ImageView) findViewById(R.id.imageview3);
        this.linear25 = (LinearLayout) findViewById(R.id.linear25);
        this.linear16 = (LinearLayout) findViewById(R.id.linear16);
        this.textview15 = (TextView) findViewById(R.id.textview15);
        this.linear18 = (LinearLayout) findViewById(R.id.linear18);
        this.textview7 = (TextView) findViewById(R.id.textview7);
        this.textview8 = (EditText) findViewById(R.id.textview8);
        this.imageview4 = (ImageView) findViewById(R.id.imageview4);
        this.linear21 = (LinearLayout) findViewById(R.id.linear21);
        this.linear22 = (LinearLayout) findViewById(R.id.linear22);
        this.textview14 = (TextView) findViewById(R.id.textview14);
        this.textview10 = (TextView) findViewById(R.id.textview10);
        this.edittext1 = (EditText) findViewById(R.id.edittext1);
        this.linear23 = (LinearLayout) findViewById(R.id.linear23);
        this.textview17 = (TextView) findViewById(R.id.textview17);
        this.linear4 = (LinearLayout) findViewById(R.id.linear4);
        this.linear5 = (LinearLayout) findViewById(R.id.linear5);
        this.linear20 = (LinearLayout) findViewById(R.id.linear20);
        this.linear6 = (LinearLayout) findViewById(R.id.linear6);
        this.imageview2 = (ImageView) findViewById(R.id.imageview2);
        this.imageview5 = (ImageView) findViewById(R.id.imageview5);
        this.textview9 = (TextView) findViewById(R.id.textview9);
        this.d = new AlertDialog.Builder(this);
        this.edittext1.addTextChangedListener(new TextWatcher(this) { // from class: com.dz.scanner.ResultActivity.1
            final ResultActivity this$0;

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
                charSequence.toString();
                String strReplace = this.this$0.edittext1.getText().toString().replace(NPStringFog.decode(new byte[]{28}, "07fb94", -1.75202582E8d), "");
                if (strReplace.equals("")) {
                    this.this$0.edittext2.setText("");
                    return;
                }
                this.this$0.edittext2.setText(strReplace);
                String str = NumberFormat.getInstance(new Locale("en", "IN")).format(Long.parseLong(strReplace));
                if (str.equals(this.this$0.edittext1.getText().toString())) {
                    return;
                }
                this.this$0.edittext1.setText(str);
                this.this$0.edittext1.setSelection(str.length());
            }
        });
        this.linear6.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.ResultActivity.2
            final ResultActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this.this$0);
                View viewInflate = this.this$0.getLayoutInflater().inflate(R.layout.bank, (ViewGroup) null);
                bottomSheetDialog.setContentView(viewInflate);
                bottomSheetDialog.getWindow().findViewById(R.id.design_bottom_sheet).setBackgroundResource(android.R.color.transparent);
                LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.bg);
                TextView textView = (TextView) viewInflate.findViewById(R.id.textview1);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.textview2);
                textView.setText("Pay ₹ ".concat(this.this$0.edittext1.getText().toString().concat(" From")));
                textView2.setText("Pay Securely ₹ ".concat(this.this$0.edittext1.getText().toString()));
                linearLayout.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.ResultActivity.2.1
                    final AnonymousClass2 this$1;

                    {
                        this.this$1 = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        this.this$1.this$0.Next.setClass(this.this$1.this$0.getApplicationContext(), IpiActivity.class);
                        this.this$1.this$0.Next.putExtra("amo", this.this$1.this$0.edittext1.getText().toString());
                        this.this$1.this$0.Next.putExtra("up", this.this$1.this$0.textview7.getText().toString());
                        this.this$1.this$0.Next.putExtra("nam", this.this$1.this$0.textview8.getText().toString());
                        this.this$1.this$0.Next.putExtra("nm", this.this$1.this$0.textview15.getText().toString());
                        this.this$1.this$0.Next.putExtra("spn", this.this$1.this$0.edittext2.getText().toString());
                        this.this$1.this$0.startActivity(this.this$1.this$0.Next);
                    }
                });
                bottomSheetDialog.setCancelable(false);
                bottomSheetDialog.show();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0194  */
    /* JADX WARN: Type inference failed for: r1v34, types: [com.dz.scanner.ResultActivity$6] */
    /* JADX WARN: Type inference failed for: r1v36, types: [com.dz.scanner.ResultActivity$5] */
    /* JADX WARN: Type inference failed for: r1v38, types: [com.dz.scanner.ResultActivity$4] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void initializeLogic() {
        /*
            Method dump skipped, instruction units count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dz.scanner.ResultActivity.initializeLogic():void");
    }

    public void _external() {
    }

    public String _getWordFromNumber(double d) {
        return EnglishNumberToWords.convert((int) d);
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

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.j.setClass(getApplicationContext(), MainActivity.class);
        startActivity(this.j);
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.result);
        initialize(bundle);
        FirebaseApp.initializeApp(this);
        initializeLogic();
    }

    @Deprecated
    public void showMessage(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }
}
