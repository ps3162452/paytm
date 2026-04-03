package com.dz.scanner;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseError;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import n.NPStringFog;

/* JADX INFO: loaded from: classes73.dex */
public class BanksActivity extends AppCompatActivity {
    private TextView amount;
    private TextView amouu;
    private TextView checkupi;
    private SharedPreferences data;
    private TextView date;
    private TextView datee;
    private EditText edittext1;
    private EditText edittext2;
    private EditText edittext3;
    private EditText edittext4;
    private EditText edittext5;
    private LinearLayout gutt;
    private LinearLayout header_linear;
    private HorizontalScrollView hscroll1;
    private HorizontalScrollView hscroll2;
    private HorizontalScrollView hscroll3;
    private HorizontalScrollView hscroll6;
    private HorizontalScrollView hscroll7;
    private HorizontalScrollView hscroll9;
    private ImageView imageview1;
    private ImageView imageview10;
    private ImageView imageview12;
    private ImageView imageview13;
    private ImageView imageview14;
    private ImageView imageview21;
    private ImageView imageview24;
    private ImageView imageview25;
    private ImageView imageview27;
    private ImageView imageview30;
    private ImageView imageview33;
    private ImageView imageview34;
    private ImageView imageview36;
    private ImageView imageview38;
    private ImageView imageview39;
    private ImageView imageview40;
    private ImageView imageview6;
    private ImageView imageview8;
    private ImageView imageview9;
    private LinearLayout linear1;
    private LinearLayout linear10;
    private LinearLayout linear11;
    private LinearLayout linear11133;
    private LinearLayout linear11136;
    private LinearLayout linear11137;
    private LinearLayout linear11138;
    private LinearLayout linear12;
    private LinearLayout linear13;
    private LinearLayout linear16;
    private LinearLayout linear17;
    private LinearLayout linear18;
    private LinearLayout linear19;
    private LinearLayout linear2;
    private LinearLayout linear20;
    private LinearLayout linear26;
    private LinearLayout linear27;
    private LinearLayout linear28;
    private LinearLayout linear29;
    private LinearLayout linear30;
    private LinearLayout linear31;
    private LinearLayout linear32;
    private LinearLayout linear35;
    private LinearLayout linear36;
    private LinearLayout linear4;
    private LinearLayout linear9;
    private ListView listview1;
    private TextView money;
    private TextView name;
    private TextView namee;
    private TextView namesp;
    private TextView nm;
    private LinearLayout pesehide;
    private LinearLayout peseshow;
    private EditText pesshow;
    private TextView pm;
    private TextView spn;
    private TextView textview3;
    private TextView textview4;
    private TextView textview9;
    private TimerTask timeee;
    private TextView upi;
    private TextView utr;
    private ScrollView vscroll1;
    private ScrollView vscroll2;
    private ScrollView vscroll3;
    private Timer _timer = new Timer();
    private String txt = "";
    private HashMap<String, Object> liste = new HashMap<>();
    private HashMap<String, Object> temp = new HashMap<>();
    private String na = "";
    private double realPos = 0.0d;
    private ArrayList<HashMap<String, Object>> listee = new ArrayList<>();
    private ArrayList<String> list = new ArrayList<>();
    private Intent history = new Intent();
    private Intent time = new Intent();

    public class Listview1Adapter extends BaseAdapter {
        ArrayList<HashMap<String, Object>> _data;
        final BanksActivity this$0;

        public Listview1Adapter(BanksActivity banksActivity, ArrayList<HashMap<String, Object>> arrayList) {
            this.this$0 = banksActivity;
            this._data = arrayList;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this._data.size();
        }

        @Override // android.widget.Adapter
        public HashMap<String, Object> getItem(int i) {
            return this._data.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        /* JADX WARN: Type inference failed for: r1v49, types: [com.dz.scanner.BanksActivity$Listview1Adapter$3] */
        /* JADX WARN: Type inference failed for: r1v51, types: [com.dz.scanner.BanksActivity$Listview1Adapter$2] */
        /* JADX WARN: Type inference failed for: r1v53, types: [com.dz.scanner.BanksActivity$Listview1Adapter$1] */
        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            LayoutInflater layoutInflater = this.this$0.getLayoutInflater();
            if (view == null) {
                view = layoutInflater.inflate(R.layout.mainhestory, (ViewGroup) null);
            }
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.linear2);
            TextView textView = (TextView) view.findViewById(R.id.nm);
            TextView textView2 = (TextView) view.findViewById(R.id.name);
            TextView textView3 = (TextView) view.findViewById(R.id.pm);
            TextView textView4 = (TextView) view.findViewById(R.id.amouu);
            TextView textView5 = (TextView) view.findViewById(R.id.spn);
            TextView textView6 = (TextView) view.findViewById(R.id.amount);
            TextView textView7 = (TextView) view.findViewById(R.id.utr);
            TextView textView8 = (TextView) view.findViewById(R.id.upi);
            TextView textView9 = (TextView) view.findViewById(R.id.date);
            textView6.setText(((HashMap) this.this$0.listee.get(i)).get("line1").toString());
            textView8.setText(((HashMap) this.this$0.listee.get(i)).get("line2").toString());
            textView2.setText(((HashMap) this.this$0.listee.get(i)).get("line3").toString());
            textView.setText(((HashMap) this.this$0.listee.get(i)).get("line4").toString());
            textView9.setText(((HashMap) this.this$0.listee.get(i)).get("line5").toString());
            textView3.setText(((HashMap) this.this$0.listee.get(i)).get("line6").toString());
            textView7.setText(((HashMap) this.this$0.listee.get(i)).get("line7").toString());
            textView4.setText(((HashMap) this.this$0.listee.get(i)).get("line8").toString());
            textView5.setText(((HashMap) this.this$0.listee.get(i)).get("line9").toString());
            this.this$0.na = String.valueOf(SketchwareUtil.getRandom(1, 3));
            if (this.this$0.na.equals(NPStringFog.decode(new byte[]{8}, "9a66f1", FirebaseError.ERROR_INVALID_EMAIL))) {
                linearLayout.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.BanksActivity.Listview1Adapter.1
                    final Listview1Adapter this$1;

                    {
                        this.this$1 = this;
                    }

                    public GradientDrawable getIns(int i2, int i3) {
                        setCornerRadius(i2);
                        setColor(i3);
                        return this;
                    }
                }.getIns(360, -26624));
            } else if (this.this$0.na.equals(NPStringFog.decode(new byte[]{80}, "b4a19d", -2026184277L))) {
                linearLayout.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.BanksActivity.Listview1Adapter.2
                    final Listview1Adapter this$1;

                    {
                        this.this$1 = this;
                    }

                    public GradientDrawable getIns(int i2, int i3) {
                        setCornerRadius(i2);
                        setColor(i3);
                        return this;
                    }
                }.getIns(360, -12627531));
            } else if (this.this$0.na.equals(NPStringFog.decode(new byte[]{4}, "72fbc4", 9.63959E8f))) {
                linearLayout.setBackground(new GradientDrawable(this) { // from class: com.dz.scanner.BanksActivity.Listview1Adapter.3
                    final Listview1Adapter this$1;

                    {
                        this.this$1 = this;
                    }

                    public GradientDrawable getIns(int i2, int i3) {
                        setCornerRadius(i2);
                        setColor(i3);
                        return this;
                    }
                }.getIns(360, -16743537));
            }
            return view;
        }
    }

    private void initialize(Bundle bundle) {
        this.linear11133 = (LinearLayout) findViewById(R.id.linear11133);
        this.vscroll1 = (ScrollView) findViewById(R.id.vscroll1);
        this.linear1 = (LinearLayout) findViewById(R.id.linear1);
        this.imageview1 = (ImageView) findViewById(R.id.imageview1);
        this.linear2 = (LinearLayout) findViewById(R.id.linear2);
        this.hscroll1 = (HorizontalScrollView) findViewById(R.id.hscroll1);
        this.linear11 = (LinearLayout) findViewById(R.id.linear11);
        this.namesp = (TextView) findViewById(R.id.namesp);
        this.date = (TextView) findViewById(R.id.date);
        this.money = (TextView) findViewById(R.id.money);
        this.name = (TextView) findViewById(R.id.name);
        this.vscroll2 = (ScrollView) findViewById(R.id.vscroll2);
        this.gutt = (LinearLayout) findViewById(R.id.gutt);
        this.linear4 = (LinearLayout) findViewById(R.id.linear4);
        this.linear16 = (LinearLayout) findViewById(R.id.linear16);
        this.namee = (TextView) findViewById(R.id.namee);
        this.upi = (TextView) findViewById(R.id.upi);
        this.amount = (TextView) findViewById(R.id.amount);
        this.nm = (TextView) findViewById(R.id.nm);
        this.datee = (TextView) findViewById(R.id.datee);
        this.pm = (TextView) findViewById(R.id.pm);
        this.checkupi = (TextView) findViewById(R.id.checkupi);
        this.utr = (TextView) findViewById(R.id.utr);
        this.hscroll2 = (HorizontalScrollView) findViewById(R.id.hscroll2);
        this.imageview8 = (ImageView) findViewById(R.id.imageview8);
        this.hscroll3 = (HorizontalScrollView) findViewById(R.id.hscroll3);
        this.imageview6 = (ImageView) findViewById(R.id.imageview6);
        this.linear13 = (LinearLayout) findViewById(R.id.linear13);
        this.linear9 = (LinearLayout) findViewById(R.id.linear9);
        this.linear19 = (LinearLayout) findViewById(R.id.linear19);
        this.pesehide = (LinearLayout) findViewById(R.id.pesehide);
        this.peseshow = (LinearLayout) findViewById(R.id.peseshow);
        this.linear10 = (LinearLayout) findViewById(R.id.linear10);
        this.vscroll3 = (ScrollView) findViewById(R.id.vscroll3);
        this.imageview34 = (ImageView) findViewById(R.id.imageview34);
        this.linear31 = (LinearLayout) findViewById(R.id.linear31);
        this.imageview33 = (ImageView) findViewById(R.id.imageview33);
        this.hscroll6 = (HorizontalScrollView) findViewById(R.id.hscroll6);
        this.edittext4 = (EditText) findViewById(R.id.edittext4);
        this.imageview36 = (ImageView) findViewById(R.id.imageview36);
        this.linear20 = (LinearLayout) findViewById(R.id.linear20);
        this.pesshow = (EditText) findViewById(R.id.pesshow);
        this.linear12 = (LinearLayout) findViewById(R.id.linear12);
        this.imageview9 = (ImageView) findViewById(R.id.imageview9);
        this.imageview12 = (ImageView) findViewById(R.id.imageview12);
        this.imageview10 = (ImageView) findViewById(R.id.imageview10);
        this.imageview13 = (ImageView) findViewById(R.id.imageview13);
        this.edittext1 = (EditText) findViewById(R.id.edittext1);
        this.linear17 = (LinearLayout) findViewById(R.id.linear17);
        this.linear18 = (LinearLayout) findViewById(R.id.linear18);
        this.imageview14 = (ImageView) findViewById(R.id.imageview14);
        this.textview4 = (TextView) findViewById(R.id.textview4);
        this.textview3 = (TextView) findViewById(R.id.textview3);
        this.header_linear = (LinearLayout) findViewById(R.id.header_linear);
        this.listview1 = (ListView) findViewById(R.id.listview1);
        this.linear29 = (LinearLayout) findViewById(R.id.linear29);
        this.hscroll7 = (HorizontalScrollView) findViewById(R.id.hscroll7);
        this.imageview27 = (ImageView) findViewById(R.id.imageview27);
        this.hscroll9 = (HorizontalScrollView) findViewById(R.id.hscroll9);
        this.linear35 = (LinearLayout) findViewById(R.id.linear35);
        this.linear36 = (LinearLayout) findViewById(R.id.linear36);
        this.linear32 = (LinearLayout) findViewById(R.id.linear32);
        this.imageview21 = (ImageView) findViewById(R.id.imageview21);
        this.linear27 = (LinearLayout) findViewById(R.id.linear27);
        this.linear26 = (LinearLayout) findViewById(R.id.linear26);
        this.linear28 = (LinearLayout) findViewById(R.id.linear28);
        this.edittext5 = (EditText) findViewById(R.id.edittext5);
        this.linear30 = (LinearLayout) findViewById(R.id.linear30);
        this.imageview24 = (ImageView) findViewById(R.id.imageview24);
        this.imageview25 = (ImageView) findViewById(R.id.imageview25);
        this.imageview30 = (ImageView) findViewById(R.id.imageview30);
        this.spn = (TextView) findViewById(R.id.spn);
        this.imageview39 = (ImageView) findViewById(R.id.imageview39);
        this.amouu = (TextView) findViewById(R.id.amouu);
        this.imageview38 = (ImageView) findViewById(R.id.imageview38);
        this.edittext2 = (EditText) findViewById(R.id.edittext2);
        this.linear11136 = (LinearLayout) findViewById(R.id.linear11136);
        this.linear11137 = (LinearLayout) findViewById(R.id.linear11137);
        this.linear11138 = (LinearLayout) findViewById(R.id.linear11138);
        this.textview9 = (TextView) findViewById(R.id.textview9);
        this.edittext3 = (EditText) findViewById(R.id.edittext3);
        this.imageview40 = (ImageView) findViewById(R.id.imageview40);
        this.data = getSharedPreferences("data", 0);
        this.pesehide.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.BanksActivity.1
            final BanksActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.time.setClass(this.this$0.getApplicationContext(), CheckupiActivity.class);
                BanksActivity banksActivity = this.this$0;
                banksActivity.startActivity(banksActivity.time);
            }
        });
        this.listview1.setOnItemClickListener(new AdapterView.OnItemClickListener(this) { // from class: com.dz.scanner.BanksActivity.2
            final BanksActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (i != 0) {
                    this.this$0.realPos = i - 1;
                    this.this$0.history.setClass(this.this$0.getApplicationContext(), HistoryActivity.class);
                    this.this$0.history.putExtra("some1", ((HashMap) this.this$0.listee.get((int) this.this$0.realPos)).get("line1").toString());
                    this.this$0.history.putExtra("some2", ((HashMap) this.this$0.listee.get((int) this.this$0.realPos)).get("line2").toString());
                    this.this$0.history.putExtra("some3", ((HashMap) this.this$0.listee.get((int) this.this$0.realPos)).get("line3").toString());
                    this.this$0.history.putExtra("some4", ((HashMap) this.this$0.listee.get((int) this.this$0.realPos)).get("line4").toString());
                    this.this$0.history.putExtra("some5", ((HashMap) this.this$0.listee.get((int) this.this$0.realPos)).get("line5").toString());
                    this.this$0.history.putExtra("some6", ((HashMap) this.this$0.listee.get((int) this.this$0.realPos)).get("line6").toString());
                    this.this$0.history.putExtra("some7", ((HashMap) this.this$0.listee.get((int) this.this$0.realPos)).get("line7").toString());
                    this.this$0.history.putExtra("some8", ((HashMap) this.this$0.listee.get((int) this.this$0.realPos)).get("line9").toString());
                    BanksActivity banksActivity = this.this$0;
                    banksActivity.startActivity(banksActivity.history);
                }
            }
        });
        this.linear26.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.BanksActivity.3
            final BanksActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.time.setClass(this.this$0.getApplicationContext(), CheckupiActivity.class);
                this.this$0.time.putExtra("ch", "sani");
                BanksActivity banksActivity = this.this$0;
                banksActivity.startActivity(banksActivity.time);
            }
        });
    }

    private void initializeLogic() {
        LinearLayout linearLayout = this.header_linear;
        if (linearLayout.getParent() != null) {
            ((ViewGroup) linearLayout.getParent()).removeView(linearLayout);
        }
        this.listview1.setAdapter((ListAdapter) null);
        this.listview1.addHeaderView(linearLayout);
        this.listview1.setAdapter((ListAdapter) new Listview1Adapter(this, this.listee));
        this.checkupi.setText(getIntent().getStringExtra("sani"));
        this.amouu.setText("- ".concat(getIntent().getStringExtra("amouu")));
        this.amount.setText(getIntent().getStringExtra("amount"));
        this.upi.setText(getIntent().getStringExtra("upi"));
        this.namee.setText(getIntent().getStringExtra("name"));
        this.nm.setText(getIntent().getStringExtra("nm"));
        this.datee.setText(getIntent().getStringExtra("date"));
        this.pm.setText("Sent Today, ".concat(getIntent().getStringExtra("pm")));
        this.utr.setText(getIntent().getStringExtra("utr"));
        this.spn.setText(getIntent().getStringExtra("spn"));
        if (!this.data.getString("data", "").equals("")) {
            this.listee = (ArrayList) new Gson().fromJson(this.data.getString("data", ""), new TypeToken<ArrayList<HashMap<String, Object>>>(this) { // from class: com.dz.scanner.BanksActivity.4
                final BanksActivity this$0;

                {
                    this.this$0 = this;
                }
            }.getType());
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("line1", this.amouu.getText().toString());
        map.put("line2", this.upi.getText().toString());
        map.put("line3", this.namee.getText().toString());
        map.put("line4", this.nm.getText().toString());
        map.put("line5", this.datee.getText().toString());
        map.put("line6", this.pm.getText().toString());
        map.put("line7", this.utr.getText().toString());
        map.put("line8", this.amount.getText().toString());
        map.put("line9", this.spn.getText().toString());
        this.listee.add(0, map);
        this.data.edit().putString("data", new Gson().toJson(this.listee)).commit();
        this.listview1.setAdapter((ListAdapter) new Listview1Adapter(this, this.listee));
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
        setContentView(R.layout.banks);
        initialize(bundle);
        FirebaseApp.initializeApp(this);
        initializeLogic();
    }

    @Deprecated
    public void showMessage(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }
}
