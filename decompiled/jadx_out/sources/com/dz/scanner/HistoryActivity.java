package com.dz.scanner;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Vibrator;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.google.firebase.FirebaseApp;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import n.NPStringFog;

/* JADX INFO: loaded from: classes73.dex */
public class HistoryActivity extends AppCompatActivity {
    private TextView amo1;
    private TextView amon;
    private TextView amout;
    private TextView banknuber;
    private LinearLayout cuadro_abajo;
    private SharedPreferences data;
    private TextView date;
    private TextView datee;
    private EditText edittext1;
    private ImageView imageview1;
    private ImageView imageview10;
    private ImageView imageview12;
    private ImageView imageview14;
    private ImageView imageview15;
    private ImageView imageview5;
    private ImageView imageview7;
    private ImageView imageview8;
    private ImageView imageview9;
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
    private LinearLayout linear25;
    private LinearLayout linear26;
    private LinearLayout linear27;
    private LinearLayout linear28;
    private LinearLayout linear29;
    private LinearLayout linear31;
    private LinearLayout linear32;
    private LinearLayout linear33;
    private LinearLayout linear34;
    private LinearLayout linear35;
    private LinearLayout linear37;
    private LinearLayout linear38;
    private LinearLayout linear39;
    private LinearLayout linear40;
    private LinearLayout linear41;
    private LinearLayout linear42;
    private LinearLayout linear45;
    private LinearLayout linear46;
    private LinearLayout mini_cuadro;
    private TextView name;
    private TextView nm;
    private TextView textview1;
    private TextView textview11;
    private TextView textview13;
    private TextView textview21;
    private TextView textview22;
    private TextView textview23;
    private TextView textview3;
    private TextView textview5;
    private TextView textview6;
    private TextView textview7;
    private TextView textview9;
    private TimerTask time;
    private TextView upi;
    private TextView username;
    private TextView usesm;
    private TextView utr;
    private Vibrator vib;
    private ScrollView vscroll1;
    private Timer _timer = new Timer();
    private double posicion = 0.0d;
    private String nusen = "";
    private HashMap<String, Object> map1 = new HashMap<>();
    private HashMap<String, Object> map2 = new HashMap<>();
    private String mas = "";
    private double numbe = 0.0d;
    private String na = "";
    private double number = 0.0d;
    private String ReSuLt = "";
    private ArrayList<HashMap<String, Object>> listSalve = new ArrayList<>();
    private Intent intent = new Intent();
    private Intent internet = new Intent();

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
        this.linear1 = (LinearLayout) findViewById(R.id.linear1);
        this.linear12 = (LinearLayout) findViewById(R.id.linear12);
        this.cuadro_abajo = (LinearLayout) findViewById(R.id.cuadro_abajo);
        this.imageview7 = (ImageView) findViewById(R.id.imageview7);
        this.linear22 = (LinearLayout) findViewById(R.id.linear22);
        this.vscroll1 = (ScrollView) findViewById(R.id.vscroll1);
        this.linear23 = (LinearLayout) findViewById(R.id.linear23);
        this.linear25 = (LinearLayout) findViewById(R.id.linear25);
        this.imageview14 = (ImageView) findViewById(R.id.imageview14);
        this.textview1 = (TextView) findViewById(R.id.textview1);
        this.linear26 = (LinearLayout) findViewById(R.id.linear26);
        this.linear27 = (LinearLayout) findViewById(R.id.linear27);
        this.amon = (TextView) findViewById(R.id.amon);
        this.amo1 = (TextView) findViewById(R.id.amo1);
        this.imageview9 = (ImageView) findViewById(R.id.imageview9);
        this.linear28 = (LinearLayout) findViewById(R.id.linear28);
        this.linear29 = (LinearLayout) findViewById(R.id.linear29);
        this.imageview12 = (ImageView) findViewById(R.id.imageview12);
        this.linear35 = (LinearLayout) findViewById(R.id.linear35);
        this.textview3 = (TextView) findViewById(R.id.textview3);
        this.amout = (TextView) findViewById(R.id.amout);
        this.textview5 = (TextView) findViewById(R.id.textview5);
        this.imageview8 = (ImageView) findViewById(R.id.imageview8);
        this.textview6 = (TextView) findViewById(R.id.textview6);
        this.textview7 = (TextView) findViewById(R.id.textview7);
        this.linear32 = (LinearLayout) findViewById(R.id.linear32);
        this.linear31 = (LinearLayout) findViewById(R.id.linear31);
        this.linear33 = (LinearLayout) findViewById(R.id.linear33);
        this.linear34 = (LinearLayout) findViewById(R.id.linear34);
        this.name = (TextView) findViewById(R.id.name);
        this.imageview10 = (ImageView) findViewById(R.id.imageview10);
        this.textview9 = (TextView) findViewById(R.id.textview9);
        this.upi = (TextView) findViewById(R.id.upi);
        this.linear46 = (LinearLayout) findViewById(R.id.linear46);
        this.nm = (TextView) findViewById(R.id.nm);
        this.linear37 = (LinearLayout) findViewById(R.id.linear37);
        this.linear45 = (LinearLayout) findViewById(R.id.linear45);
        this.textview11 = (TextView) findViewById(R.id.textview11);
        this.username = (TextView) findViewById(R.id.username);
        this.linear39 = (LinearLayout) findViewById(R.id.linear39);
        this.linear41 = (LinearLayout) findViewById(R.id.linear41);
        this.linear40 = (LinearLayout) findViewById(R.id.linear40);
        this.linear42 = (LinearLayout) findViewById(R.id.linear42);
        this.textview22 = (TextView) findViewById(R.id.textview22);
        this.textview13 = (TextView) findViewById(R.id.textview13);
        this.textview23 = (TextView) findViewById(R.id.textview23);
        this.edittext1 = (EditText) findViewById(R.id.edittext1);
        this.banknuber = (TextView) findViewById(R.id.banknuber);
        this.imageview15 = (ImageView) findViewById(R.id.imageview15);
        this.date = (TextView) findViewById(R.id.date);
        this.datee = (TextView) findViewById(R.id.datee);
        this.utr = (TextView) findViewById(R.id.utr);
        this.textview21 = (TextView) findViewById(R.id.textview21);
        this.linear38 = (LinearLayout) findViewById(R.id.linear38);
        this.usesm = (TextView) findViewById(R.id.usesm);
        this.mini_cuadro = (LinearLayout) findViewById(R.id.mini_cuadro);
        this.linear15 = (LinearLayout) findViewById(R.id.linear15);
        this.linear16 = (LinearLayout) findViewById(R.id.linear16);
        this.linear17 = (LinearLayout) findViewById(R.id.linear17);
        this.linear18 = (LinearLayout) findViewById(R.id.linear18);
        this.linear19 = (LinearLayout) findViewById(R.id.linear19);
        this.linear21 = (LinearLayout) findViewById(R.id.linear21);
        this.imageview1 = (ImageView) findViewById(R.id.imageview1);
        this.imageview5 = (ImageView) findViewById(R.id.imageview5);
        this.vib = (Vibrator) getSystemService("vibrator");
        this.data = getSharedPreferences("data", 0);
    }

    /* JADX WARN: Type inference failed for: r1v33, types: [com.dz.scanner.HistoryActivity$5] */
    /* JADX WARN: Type inference failed for: r1v35, types: [com.dz.scanner.HistoryActivity$6] */
    /* JADX WARN: Type inference failed for: r1v37, types: [com.dz.scanner.HistoryActivity$3] */
    /* JADX WARN: Type inference failed for: r1v39, types: [com.dz.scanner.HistoryActivity$4] */
    /* JADX WARN: Type inference failed for: r1v41, types: [com.dz.scanner.HistoryActivity$1] */
    /* JADX WARN: Type inference failed for: r1v43, types: [com.dz.scanner.HistoryActivity$2] */
    private void initializeLogic() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        int i = (int) getApplicationContext().getResources().getDisplayMetrics().density;
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(i * 15);
        gradientDrawable.setStroke(i, -2039584);
        this.linear25.setBackground(gradientDrawable);
        this.amout.setText(getIntent().getStringExtra("some8"));
        this.amo1.setText(getIntent().getStringExtra("some1"));
        this.upi.setText(getIntent().getStringExtra("some2"));
        this.name.setText(getIntent().getStringExtra("some3"));
        this.nm.setText(getIntent().getStringExtra("some4"));
        this.datee.setText(getIntent().getStringExtra("some5"));
        this.username.setText(this.data.getString("nc", ""));
        this.edittext1.setText(this.data.getString("nc1", ""));
        this.usesm.setText(this.data.getString("nc2", ""));
        this.utr.setText("UPI Ref No: ".concat(getIntent().getStringExtra("some7")));
        double d = Double.parseDouble(this.amout.getText().toString());
        this.number = d;
        String str_getWordFromNumber = _getWordFromNumber(d);
        this.ReSuLt = str_getWordFromNumber;
        this.textview6.setText("Rupees ".concat(str_getWordFromNumber.concat(" Only")));
        String strValueOf = String.valueOf(SketchwareUtil.getRandom(1, 3));
        this.na = strValueOf;
        if (strValueOf.equals(NPStringFog.decode(new byte[]{8}, "92ba18", true, false))) {
            this.linear46.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.HistoryActivity.1
                final HistoryActivity this$0;

                {
                    this.this$0 = this;
                }

                public GradientDrawable getIns(int i2, int i3) {
                    setCornerRadius(i2);
                    setColor(i3);
                    return this;
                }
            }.getIns(360, -26624));
            this.linear38.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.HistoryActivity.2
                final HistoryActivity this$0;

                {
                    this.this$0 = this;
                }

                public GradientDrawable getIns(int i2, int i3) {
                    setCornerRadius(i2);
                    setColor(i3);
                    return this;
                }
            }.getIns(360, -10011977));
        } else if (this.na.equals(NPStringFog.decode(new byte[]{81}, "cf1281", 9.375292E8f))) {
            this.linear46.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.HistoryActivity.3
                final HistoryActivity this$0;

                {
                    this.this$0 = this;
                }

                public GradientDrawable getIns(int i2, int i3) {
                    setCornerRadius(i2);
                    setColor(i3);
                    return this;
                }
            }.getIns(360, -12627531));
            this.linear38.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.HistoryActivity.4
                final HistoryActivity this$0;

                {
                    this.this$0 = this;
                }

                public GradientDrawable getIns(int i2, int i3) {
                    setCornerRadius(i2);
                    setColor(i3);
                    return this;
                }
            }.getIns(360, -16121));
        } else if (this.na.equals(NPStringFog.decode(new byte[]{82}, "a82067", true))) {
            this.linear46.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.HistoryActivity.5
                final HistoryActivity this$0;

                {
                    this.this$0 = this;
                }

                public GradientDrawable getIns(int i2, int i3) {
                    setCornerRadius(i2);
                    setColor(i3);
                    return this;
                }
            }.getIns(360, -16743537));
            this.linear38.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.HistoryActivity.6
                final HistoryActivity this$0;

                {
                    this.this$0 = this;
                }

                public GradientDrawable getIns(int i2, int i3) {
                    setCornerRadius(i2);
                    setColor(i3);
                    return this;
                }
            }.getIns(360, -14575885));
        }
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

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.history);
        initialize(bundle);
        FirebaseApp.initializeApp(this);
        initializeLogic();
    }

    @Deprecated
    public void showMessage(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }
}
