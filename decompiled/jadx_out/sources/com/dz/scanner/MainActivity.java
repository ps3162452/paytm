package com.dz.scanner;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import com.budiyev.android.codescanner.CodeScanner;
import com.budiyev.android.codescanner.CodeScannerView;
import com.budiyev.android.codescanner.DecodeCallback;
import com.google.firebase.FirebaseApp;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.RGBLuminanceSource;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Random;

/* JADX INFO: loaded from: classes73.dex */
public class MainActivity extends AppCompatActivity {
    private File _file_needed_for_permission;
    private CardView cardview1;
    private ImageView imageview1;
    private ImageView imageview2;
    private LinearLayout linear1;
    private LinearLayout linear3;
    private LinearLayout linear4;
    private CodeScannerView scannerview;
    public final int REQ_CD_FILE_PICKER = 101;
    public final int REQ_CD_NEEDED_FOR_PERMISSION = 102;
    private boolean scanned = false;
    private double one_time_n = 0.0d;
    private String filepath = "";
    private String result = "";
    private String Result = "";
    private Intent file_picker = new Intent("android.intent.action.GET_CONTENT");
    private Intent needed_for_permission = new Intent("android.media.action.IMAGE_CAPTURE");
    private ObjectAnimator oa = new ObjectAnimator();
    private Intent intent = new Intent();
    private Intent l = new Intent();

    private void initialize(Bundle bundle) {
        Uri uriFromFile;
        this.scannerview = (CodeScannerView) findViewById(R.id.scannerview);
        this.linear1 = (LinearLayout) findViewById(R.id.linear1);
        this.linear3 = (LinearLayout) findViewById(R.id.linear3);
        this.imageview1 = (ImageView) findViewById(R.id.imageview1);
        this.cardview1 = (CardView) findViewById(R.id.cardview1);
        this.linear4 = (LinearLayout) findViewById(R.id.linear4);
        this.imageview2 = (ImageView) findViewById(R.id.imageview2);
        this.file_picker.setType("image/*");
        this.file_picker.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        this._file_needed_for_permission = FileUtil.createNewPictureFile(getApplicationContext());
        if (Build.VERSION.SDK_INT >= 24) {
            uriFromFile = FileProvider.getUriForFile(getApplicationContext(), String.valueOf(getApplicationContext().getPackageName()) + ".provider", this._file_needed_for_permission);
        } else {
            uriFromFile = Uri.fromFile(this._file_needed_for_permission);
        }
        this.needed_for_permission.putExtra("output", uriFromFile);
        this.needed_for_permission.addFlags(1);
        this.imageview1.setOnClickListener(new View.OnClickListener(this) { // from class: com.dz.scanner.MainActivity.1
            final MainActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity mainActivity = this.this$0;
                mainActivity.startActivityForResult(mainActivity.file_picker, 101);
            }
        });
        this.oa.addListener(new Animator.AnimatorListener(this) { // from class: com.dz.scanner.MainActivity.2
            final MainActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                this.this$0._scanning_animation();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    private void initializeLogic() {
        CodeScanner codeScanner = new CodeScanner(this, (CodeScannerView) findViewById(R.id.scannerview));
        codeScanner.setDecodeCallback(new DecodeCallback(this) { // from class: com.dz.scanner.MainActivity.3
            final MainActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // com.budiyev.android.codescanner.DecodeCallback
            public void onDecoded(@NonNull Result result) {
                this.this$0.runOnUiThread(new Runnable(this, result) { // from class: com.dz.scanner.MainActivity.3.1
                    final AnonymousClass3 this$1;
                    private final Result val$result;

                    {
                        this.this$1 = this;
                        this.val$result = result;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.this$1.this$0.Result = this.val$result.getText();
                        this.this$1.this$0.intent.putExtra("Result", this.this$1.this$0.Result);
                        this.this$1.this$0.intent.setClass(this.this$1.this$0.getApplicationContext(), ResultActivity.class);
                        this.this$1.this$0.startActivity(this.this$1.this$0.intent);
                    }
                });
            }
        });
        codeScanner.startPreview();
        _set_height(this.linear1, SketchwareUtil.getDisplayHeightPixels(getApplicationContext()), SketchwareUtil.getDisplayWidthPixels(getApplicationContext()));
        this.linear1.setTranslationY(SketchwareUtil.getDisplayHeightPixels(getApplicationContext()) * (-1));
        double displayWidthPixels = ((double) SketchwareUtil.getDisplayWidthPixels(getApplicationContext())) * 0.75d;
        this.one_time_n = displayWidthPixels;
        _set_height(this.cardview1, displayWidthPixels, displayWidthPixels);
        _scanning_animation();
        if (getSharedPreferences("MyAppPrefs", 0).getBoolean("isLoggedIn", false)) {
            return;
        }
        finishAffinity();
    }

    public void _scanning_animation() {
        if (this.scanned) {
            this.imageview2.setRotation(180.0f);
            this.oa.setTarget(this.imageview2);
            this.oa.setPropertyName("translationY");
            this.oa.setFloatValues(-80.0f);
            this.oa.setDuration(1000L);
            this.oa.start();
            this.scanned = false;
            return;
        }
        this.imageview2.setRotation(0.0f);
        this.oa.setTarget(this.imageview2);
        this.oa.setPropertyName("translationY");
        this.oa.setFloatValues((float) ((((double) SketchwareUtil.getDisplayWidthPixels(getApplicationContext())) * 0.75d) + 40.0d));
        this.oa.setDuration(1000L);
        this.oa.start();
        this.scanned = true;
    }

    public void _set_height(View view, double d, double d2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = (int) d;
        layoutParams.width = (int) d2;
        view.setLayoutParams(layoutParams);
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

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 101 && i2 == -1) {
            ArrayList arrayList = new ArrayList();
            if (intent != null) {
                if (intent.getClipData() != null) {
                    for (int i3 = 0; i3 < intent.getClipData().getItemCount(); i3++) {
                        arrayList.add(FileUtil.convertUriToFilePath(getApplicationContext(), intent.getClipData().getItemAt(i3).getUri()));
                    }
                } else {
                    arrayList.add(FileUtil.convertUriToFilePath(getApplicationContext(), intent.getData()));
                }
            }
            this.filepath = (String) arrayList.get(0);
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(new FileInputStream(this.filepath));
                int width = bitmapDecodeStream.getWidth();
                int height = bitmapDecodeStream.getHeight();
                int[] iArr = new int[width * height];
                bitmapDecodeStream.getPixels(iArr, 0, width, 0, 0, width, height);
                bitmapDecodeStream.recycle();
                String text = new MultiFormatReader().decode(new BinaryBitmap(new HybridBinarizer(new RGBLuminanceSource(width, height, iArr)))).getText();
                this.result = text;
                this.Result = text;
                this.l.putExtra("Result", text);
                this.l.setClass(getApplicationContext(), ResultActivity.class);
                startActivity(this.l);
            } catch (Exception e) {
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.main);
        initialize(bundle);
        FirebaseApp.initializeApp(this);
        if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") == -1 || ContextCompat.checkSelfPermission(this, "android.permission.READ_EXTERNAL_STORAGE") == -1 || ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") == -1) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 1000);
        } else {
            initializeLogic();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1000) {
            initializeLogic();
        }
    }

    @Deprecated
    public void showMessage(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }
}
