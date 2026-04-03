package androidx.core.graphics.drawable;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class IconCompat extends CustomVersionedParcelable {
    private static final float ADAPTIVE_ICON_INSET_FACTOR = 0.25f;
    private static final int AMBIENT_SHADOW_ALPHA = 30;
    private static final float BLUR_FACTOR = 0.010416667f;
    private static final float DEFAULT_VIEW_PORT_SCALE = 0.6666667f;
    private static final float ICON_DIAMETER_FACTOR = 0.9166667f;
    private static final int KEY_SHADOW_ALPHA = 61;
    private static final float KEY_SHADOW_OFFSET_FACTOR = 0.020833334f;
    public static final int TYPE_ADAPTIVE_BITMAP = 5;
    public static final int TYPE_BITMAP = 1;
    public static final int TYPE_DATA = 3;
    public static final int TYPE_RESOURCE = 2;
    public static final int TYPE_UNKNOWN = -1;
    public static final int TYPE_URI = 4;
    public static final int TYPE_URI_ADAPTIVE_BITMAP = 6;
    public byte[] mData;
    public int mInt1;
    public int mInt2;
    Object mObj1;
    public Parcelable mParcelable;
    public String mString1;
    public ColorStateList mTintList;
    PorterDuff.Mode mTintMode;
    public String mTintModeStr;
    public int mType;
    static final String EXTRA_INT1 = NPStringFog.decode(new byte[]{13, 15, 70, 82}, "da2cce", -2043888580L);
    static final String EXTRA_INT2 = NPStringFog.decode(new byte[]{13, 93, 21, 5}, "d3a77b", -2484);
    static final String EXTRA_OBJ = NPStringFog.decode(new byte[]{10, 86, 89}, "e43c00", -2440);
    static final String EXTRA_STRING1 = NPStringFog.decode(new byte[]{18, 69, 19, 11, 93, 86, 80}, "a1ab31", -13201);
    static final String EXTRA_TINT_LIST = NPStringFog.decode(new byte[]{16, 13, 15, 64, 60, 90, 13, 23, 21}, "dda4c6", true, true);
    static final String EXTRA_TINT_MODE = NPStringFog.decode(new byte[]{71, 11, 92, 66, 60, 15, 92, 6, 87}, "3b26cb", 6.0566144E8f);
    static final String EXTRA_TYPE = NPStringFog.decode(new byte[]{65, 73, 64, 6}, "500c77", -1331148219L);
    private static final String TAG = NPStringFog.decode(new byte[]{123, 87, 91, 93, 123, 91, 95, 68, 85, 71}, "244384", 585006649L);
    static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;

    @Retention(RetentionPolicy.SOURCE)
    public @interface IconType {
    }

    public IconCompat() {
        this.mType = -1;
        this.mData = null;
        this.mParcelable = null;
        this.mInt1 = 0;
        this.mInt2 = 0;
        this.mTintList = null;
        this.mTintMode = DEFAULT_TINT_MODE;
        this.mTintModeStr = null;
    }

    private IconCompat(int i) {
        this.mType = -1;
        this.mData = null;
        this.mParcelable = null;
        this.mInt1 = 0;
        this.mInt2 = 0;
        this.mTintList = null;
        this.mTintMode = DEFAULT_TINT_MODE;
        this.mTintModeStr = null;
        this.mType = i;
    }

    public static IconCompat createFromBundle(Bundle bundle) {
        int i = bundle.getInt(EXTRA_TYPE);
        IconCompat iconCompat = new IconCompat(i);
        iconCompat.mInt1 = bundle.getInt(EXTRA_INT1);
        iconCompat.mInt2 = bundle.getInt(EXTRA_INT2);
        iconCompat.mString1 = bundle.getString(EXTRA_STRING1);
        if (bundle.containsKey(EXTRA_TINT_LIST)) {
            iconCompat.mTintList = (ColorStateList) bundle.getParcelable(EXTRA_TINT_LIST);
        }
        if (bundle.containsKey(EXTRA_TINT_MODE)) {
            iconCompat.mTintMode = PorterDuff.Mode.valueOf(bundle.getString(EXTRA_TINT_MODE));
        }
        switch (i) {
            case -1:
            case 1:
            case 5:
                iconCompat.mObj1 = bundle.getParcelable(EXTRA_OBJ);
                break;
            case 0:
            default:
                Log.w(TAG, NPStringFog.decode(new byte[]{101, 90, 94, 94, 11, 68, 94, 20, 65, 73, 20, 86, 16}, "0450d3", -801538391L) + i);
                return null;
            case 2:
            case 4:
            case 6:
                iconCompat.mObj1 = bundle.getString(EXTRA_OBJ);
                break;
            case 3:
                iconCompat.mObj1 = bundle.getByteArray(EXTRA_OBJ);
                break;
        }
        return iconCompat;
    }

    public static IconCompat createFromIcon(Context context, Icon icon) {
        Preconditions.checkNotNull(icon);
        switch (getType(icon)) {
            case 2:
                String resPackage = getResPackage(icon);
                try {
                    return createWithResource(getResources(context, resPackage), resPackage, getResId(icon));
                } catch (Resources.NotFoundException e) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{45, 7, 95, 8, 70, 16, 1, 23, 95, 19, 20, 1, 1, 68, 83, 7, 8, 12, 11, 16, 16, 4, 3, 66, 2, 11, 69, 8, 2}, "dd0ffb", 1.8797046E9f));
                }
            case 3:
            case 5:
            default:
                IconCompat iconCompat = new IconCompat(-1);
                iconCompat.mObj1 = icon;
                return iconCompat;
            case 4:
                return createWithContentUri(getUri(icon));
            case 6:
                return createWithAdaptiveBitmapContentUri(getUri(icon));
        }
    }

    public static IconCompat createFromIcon(Icon icon) {
        Preconditions.checkNotNull(icon);
        switch (getType(icon)) {
            case 2:
                return createWithResource(null, getResPackage(icon), getResId(icon));
            case 3:
            case 5:
            default:
                IconCompat iconCompat = new IconCompat(-1);
                iconCompat.mObj1 = icon;
                return iconCompat;
            case 4:
                return createWithContentUri(getUri(icon));
            case 6:
                return createWithAdaptiveBitmapContentUri(getUri(icon));
        }
    }

    public static IconCompat createFromIconOrNullIfZeroResId(Icon icon) {
        if (getType(icon) == 2 && getResId(icon) == 0) {
            return null;
        }
        return createFromIcon(icon);
    }

    static Bitmap createLegacyIconFromAdaptiveIcon(Bitmap bitmap, boolean z) {
        int iMin = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * DEFAULT_VIEW_PORT_SCALE);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(3);
        float f = iMin * 0.5f;
        float f2 = ICON_DIAMETER_FACTOR * f;
        if (z) {
            float f3 = iMin * BLUR_FACTOR;
            paint.setColor(0);
            paint.setShadowLayer(f3, 0.0f, iMin * KEY_SHADOW_OFFSET_FACTOR, 1023410176);
            canvas.drawCircle(f, f, f2, paint);
            paint.setShadowLayer(f3, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f, f, f2, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        BitmapShader bitmapShader = new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - iMin)) / 2, (-(bitmap.getHeight() - iMin)) / 2);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f, f, f2, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    public static IconCompat createWithAdaptiveBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 8, 70, 8, 0, 67, 17, 12, 71, 22, 21, 19, 95, 14, 70, 69, 3, 86, 17, 15, 71, 9, 13, 29}, "1a2ea3", true, true));
        }
        IconCompat iconCompat = new IconCompat(5);
        iconCompat.mObj1 = bitmap;
        return iconCompat;
    }

    public static IconCompat createWithAdaptiveBitmapContentUri(Uri uri) {
        if (uri != null) {
            return createWithAdaptiveBitmapContentUri(uri.toString());
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{55, 75, 88, 16, 12, 22, 17, 77, 17, 94, 14, 23, 66, 91, 84, 16, 15, 22, 14, 85, 31}, "b910ac", -1.4951534E9f));
    }

    public static IconCompat createWithAdaptiveBitmapContentUri(String str) {
        if (str == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{48, 23, 10, 17, 15, 17, 22, 17, 67, 95, 13, 16, 69, 7, 6, 17, 12, 17, 9, 9, 77}, "eec1bd", 6.0793395E8f));
        }
        IconCompat iconCompat = new IconCompat(6);
        iconCompat.mObj1 = str;
        return iconCompat;
    }

    public static IconCompat createWithBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 8, 67, 15, 86, 65, 19, 12, 66, 17, 67, 17, 93, 14, 67, 66, 85, 84, 19, 15, 66, 14, 91, 31}, "3a7b71", -27546));
        }
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.mObj1 = bitmap;
        return iconCompat;
    }

    public static IconCompat createWithContentUri(Uri uri) {
        if (uri != null) {
            return createWithContentUri(uri.toString());
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{49, 71, 93, 19, 84, 69, 23, 65, 20, 93, 86, 68, 68, 87, 81, 19, 87, 69, 8, 89, 26}, "d54390", false, false));
    }

    public static IconCompat createWithContentUri(String str) {
        if (str == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{54, 22, 90, 19, 92, 22, 16, 16, 19, 93, 94, 23, 67, 6, 86, 19, 95, 22, 15, 8, 29}, "cd331c", false));
        }
        IconCompat iconCompat = new IconCompat(4);
        iconCompat.mObj1 = str;
        return iconCompat;
    }

    public static IconCompat createWithData(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{112, 4, 71, 89, 17, 85, 65, 22, 71, 24, 95, 87, 64, 69, 81, 93, 17, 86, 65, 9, 95, 22}, "4e3818", -1.394614063E9d));
        }
        IconCompat iconCompat = new IconCompat(3);
        iconCompat.mObj1 = bArr;
        iconCompat.mInt1 = i;
        iconCompat.mInt2 = i2;
        return iconCompat;
    }

    public static IconCompat createWithResource(Context context, int i) {
        if (context != null) {
            return createWithResource(context.getResources(), context.getPackageName(), i);
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 13, 94, 68, 87, 77, 18, 66, 93, 69, 65, 65, 70, 12, 95, 68, 18, 87, 3, 66, 94, 69, 94, 89, 72}, "fb0025", false, true));
    }

    public static IconCompat createWithResource(Resources resources, String str, int i) {
        if (str == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{96, 83, 5, 8, 84, 80, 85, 18, 11, 22, 70, 67, 16, 92, 9, 23, 21, 85, 85, 18, 8, 22, 89, 91, 30}, "02fc57", 1821644388L));
        }
        if (i == 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 65, 85, 22, 88, 84, 92, 86, 20, 19, 92, 69, 95, 70, 70, 2, 92, 22, 121, 119, 20, 12, 76, 69, 68, 19, 90, 14, 77, 22, 82, 86, 20, 81}, "034a96", -1.8943451E8d));
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.mInt1 = i;
        if (resources != null) {
            try {
                iconCompat.mObj1 = resources.getResourceName(i);
            } catch (Resources.NotFoundException e) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{44, 82, 90, 94, 65, 17, 0, 66, 90, 69, 19, 0, 0, 17, 86, 81, 15, 13, 10, 69, 21, 82, 4, 67, 3, 94, 64, 94, 5}, "e150ac", 2.041158026E9d));
            }
        } else {
            iconCompat.mObj1 = str;
        }
        iconCompat.mString1 = str;
        return iconCompat;
    }

    private static int getResId(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResId();
        }
        try {
            return ((Integer) icon.getClass().getMethod(NPStringFog.decode(new byte[]{84, 84, 77, 52, 0, 64, 122, 85}, "319fe3", -1.103077834E9d), new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e) {
            Log.e(TAG, NPStringFog.decode(new byte[]{103, 12, 3, 84, 94, 92, 18, 22, 13, 22, 85, 92, 70, 66, 11, 85, 93, 87, 18, 16, 7, 69, 93, 76, 64, 1, 7}, "2bb629", 268196180L), e);
            return 0;
        } catch (NoSuchMethodException e2) {
            Log.e(TAG, NPStringFog.decode(new byte[]{100, 15, 3, 90, 90, 80, 17, 21, 13, 24, 81, 80, 69, 65, 11, 91, 89, 91, 17, 19, 7, 75, 89, 64, 67, 2, 7}, "1ab865", 579795.0d), e2);
            return 0;
        } catch (InvocationTargetException e3) {
            Log.e(TAG, NPStringFog.decode(new byte[]{55, 86, 84, 85, 93, 93, 66, 76, 90, 23, 86, 93, 22, 24, 92, 84, 94, 86, 66, 74, 80, 68, 94, 77, 16, 91, 80}, "b85718", -2135092494L), e3);
            return 0;
        }
    }

    private static String getResPackage(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResPackage();
        }
        try {
            return (String) icon.getClass().getMethod(NPStringFog.decode(new byte[]{81, 6, 76, 100, 84, 69, 102, 2, 91, 93, 80, 81, 83}, "6c8616", 19209), new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e) {
            Log.e(TAG, NPStringFog.decode(new byte[]{51, 94, 82, 90, 10, 0, 70, 68, 92, 24, 1, 0, 18, 16, 90, 91, 9, 11, 70, 64, 82, 91, 13, 4, 1, 85}, "f038fe", 8.83682774E8d), e);
            return null;
        } catch (NoSuchMethodException e2) {
            Log.e(TAG, NPStringFog.decode(new byte[]{96, 8, 89, 82, 89, 87, 21, 18, 87, 16, 82, 87, 65, 70, 81, 83, 90, 92, 21, 22, 89, 83, 94, 83, 82, 3}, "5f8052", 1605631674L), e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e(TAG, NPStringFog.decode(new byte[]{108, 86, 86, 7, 84, 7, 25, 76, 88, 69, 95, 7, 77, 24, 94, 6, 87, 12, 25, 72, 86, 6, 83, 3, 94, 93}, "987e8b", 4.7194877E8f), e3);
            return null;
        }
    }

    private static Resources getResources(Context context, String str) {
        if (NPStringFog.decode(new byte[]{3, 92, 92, 74, 11, 93, 6}, "b288d4", -109073728L).equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, String.format(NPStringFog.decode(new byte[]{100, 88, 87, 87, 15, 87, 17, 66, 89, 21, 5, 91, 95, 82, 22, 69, 8, 85, 12, 19, 69, 21, 5, 93, 67, 22, 95, 86, 12, 92}, "1665c2", -749879856L), str), e);
            return null;
        }
    }

    private static int getType(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getType();
        }
        try {
            return ((Integer) icon.getClass().getMethod(NPStringFog.decode(new byte[]{85, 92, 18, 101, 79, 65, 87}, "29f161", -16310), new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e) {
            Log.e(TAG, NPStringFog.decode(new byte[]{102, 13, 85, 90, 94, 1, 19, 23, 91, 24, 85, 1, 71, 67, 93, 91, 93, 10, 19, 23, 77, 72, 87, 68}, "3c482d", 1965) + icon, e);
            return -1;
        } catch (NoSuchMethodException e2) {
            Log.e(TAG, NPStringFog.decode(new byte[]{52, 15, 83, 85, 91, 1, 65, 21, 93, 23, 80, 1, 21, 65, 91, 84, 88, 10, 65, 21, 75, 71, 82, 68}, "aa277d", 73161873L) + icon, e2);
            return -1;
        } catch (InvocationTargetException e3) {
            Log.e(TAG, NPStringFog.decode(new byte[]{109, 8, 84, 83, 85, 6, 24, 18, 90, 17, 94, 6, 76, 70, 92, 82, 86, 13, 24, 18, 76, 65, 92, 67}, "8f519c", true, true) + icon, e3);
            return -1;
        }
    }

    private static Uri getUri(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getUri();
        }
        try {
            return (Uri) icon.getClass().getMethod(NPStringFog.decode(new byte[]{2, 93, 69, 103, 75, 81}, "e81298", 1.254583413E9d), new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e) {
            Log.e(TAG, NPStringFog.decode(new byte[]{100, 89, 0, 80, 94, 7, 17, 67, 14, 18, 85, 7, 69, 23, 8, 81, 93, 12, 17, 66, 19, 91}, "17a22b", -1215619577L), e);
            return null;
        } catch (NoSuchMethodException e2) {
            Log.e(TAG, NPStringFog.decode(new byte[]{108, 8, 4, 91, 8, 1, 25, 18, 10, 25, 3, 1, 77, 70, 12, 90, 11, 10, 25, 19, 23, 80}, "9fe9dd", -1.024269177E9d), e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e(TAG, NPStringFog.decode(new byte[]{102, 88, 4, 86, 94, 82, 19, 66, 10, 20, 85, 82, 71, 22, 12, 87, 93, 89, 19, 67, 23, 93}, "36e427", -1011493277L), e3);
            return null;
        }
    }

    private Drawable loadDrawableInner(Context context) {
        switch (this.mType) {
            case 1:
                return new BitmapDrawable(context.getResources(), (Bitmap) this.mObj1);
            case 2:
                String resPackage = getResPackage();
                if (TextUtils.isEmpty(resPackage)) {
                    resPackage = context.getPackageName();
                }
                try {
                    return ResourcesCompat.getDrawable(getResources(context, resPackage), this.mInt1, context.getTheme());
                } catch (RuntimeException e) {
                    Log.e(TAG, String.format(NPStringFog.decode(new byte[]{55, 15, 83, 1, 8, 4, 66, 21, 93, 67, 8, 14, 3, 5, 18, 17, 1, 18, 13, 20, 64, 0, 1, 65, 82, 25, 23, 83, 92, 25, 66, 7, 64, 12, 9, 65, 18, 10, 85, 94, 65, 18}, "ba2cda", -1.800818289E9d), Integer.valueOf(this.mInt1), this.mObj1), e);
                }
                break;
            case 3:
                return new BitmapDrawable(context.getResources(), BitmapFactory.decodeByteArray((byte[]) this.mObj1, this.mInt1, this.mInt2));
            case 4:
                InputStream uriInputStream = getUriInputStream(context);
                if (uriInputStream != null) {
                    return new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(uriInputStream));
                }
                break;
            case 5:
                return new BitmapDrawable(context.getResources(), createLegacyIconFromAdaptiveIcon((Bitmap) this.mObj1, false));
            case 6:
                InputStream uriInputStream2 = getUriInputStream(context);
                if (uriInputStream2 != null) {
                    return Build.VERSION.SDK_INT >= 26 ? new AdaptiveIconDrawable(null, new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(uriInputStream2))) : new BitmapDrawable(context.getResources(), createLegacyIconFromAdaptiveIcon(BitmapFactory.decodeStream(uriInputStream2), false));
                }
                break;
        }
        return null;
    }

    private static String typeToString(int i) {
        switch (i) {
            case 1:
                return NPStringFog.decode(new byte[]{123, 120, 53, 123, 116, 97}, "91a651", true, false);
            case 2:
                return NPStringFog.decode(new byte[]{55, 35, 97, 45, 97, 49, 38, 35}, "ef2b4c", 1.6265517E9f);
            case 3:
                return NPStringFog.decode(new byte[]{34, 116, 49, 39}, "f5ef33", 20796);
            case 4:
                return NPStringFog.decode(new byte[]{100, 99, 121}, "110604", 951456347L);
            case 5:
                return NPStringFog.decode(new byte[]{35, 126, 108, 47, 118, 100, 62, 122, 121, 49, 124, 117, 35, 123, 125}, "a78b74", true, false);
            case 6:
                return NPStringFog.decode(new byte[]{48, 98, 121, 59, 120, 39, 54, 123, 113, 38, 121, 35}, "e00d5f", -1.05245606E9f);
            default:
                return NPStringFog.decode(new byte[]{103, 40, 125, 120, 44, 99, 124}, "2f66c4", false);
        }
    }

    public void addToShortcutIntent(Intent intent, Drawable drawable, Context context) {
        Bitmap bitmapCreateBitmap;
        checkResource(context);
        switch (this.mType) {
            case 1:
                bitmapCreateBitmap = (Bitmap) this.mObj1;
                if (drawable != null) {
                    bitmapCreateBitmap = bitmapCreateBitmap.copy(bitmapCreateBitmap.getConfig(), true);
                }
                break;
            case 2:
                try {
                    Context contextCreatePackageContext = context.createPackageContext(getResPackage(), 0);
                    if (drawable == null) {
                        intent.putExtra(NPStringFog.decode(new byte[]{83, 88, 87, 74, 13, 81, 86, 24, 90, 86, 22, 93, 92, 66, 29, 93, 26, 76, 64, 87, 29, 75, 10, 87, 64, 66, 80, 77, 22, 22, 123, 117, 124, 118, 61, 106, 119, 101, 124, 109, 48, 123, 119}, "2638b8", -1606872233L), Intent.ShortcutIconResource.fromContext(contextCreatePackageContext, this.mInt1));
                        return;
                    }
                    Drawable drawable2 = ContextCompat.getDrawable(contextCreatePackageContext, this.mInt1);
                    if (drawable2.getIntrinsicWidth() <= 0 || drawable2.getIntrinsicHeight() <= 0) {
                        int launcherLargeIconSize = ((ActivityManager) contextCreatePackageContext.getSystemService(NPStringFog.decode(new byte[]{4, 6, 67, 8, 64, 10, 17, 28}, "ee7a6c", -1.3603493E9f))).getLauncherLargeIconSize();
                        bitmapCreateBitmap = Bitmap.createBitmap(launcherLargeIconSize, launcherLargeIconSize, Bitmap.Config.ARGB_8888);
                    } else {
                        bitmapCreateBitmap = Bitmap.createBitmap(drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                    }
                    drawable2.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                    drawable2.draw(new Canvas(bitmapCreateBitmap));
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 85, 86, 68, 17, 19, 84, 93, 86, 7, 69, 67, 83, 87, 83, 2, 2, 86, 18}, "248ce3", -2.34829594E8d) + this.mObj1, e);
                }
                break;
            case 3:
            case 4:
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{127, 84, 93, 89, 65, 17, 79, 71, 87, 23, 15, 10, 66, 23, 65, 66, 17, 21, 89, 69, 70, 82, 5, 69, 80, 88, 64, 23, 8, 11, 66, 82, 92, 67, 65, 22, 94, 88, 64, 67, 2, 16, 66, 68}, "6727ae", false, true));
            case 5:
                bitmapCreateBitmap = createLegacyIconFromAdaptiveIcon((Bitmap) this.mObj1, true);
                break;
        }
        if (drawable != null) {
            int width = bitmapCreateBitmap.getWidth();
            int height = bitmapCreateBitmap.getHeight();
            drawable.setBounds(width / 2, height / 2, width, height);
            drawable.draw(new Canvas(bitmapCreateBitmap));
        }
        intent.putExtra(NPStringFog.decode(new byte[]{3, 90, 87, 75, 92, 11, 6, 26, 90, 87, 71, 7, 12, 64, 29, 92, 75, 22, 16, 85, 29, 74, 91, 13, 16, 64, 80, 76, 71, 76, 43, 119, 124, 119}, "b4393b", false, true), bitmapCreateBitmap);
    }

    public void checkResource(Context context) {
        Object obj;
        if (this.mType != 2 || (obj = this.mObj1) == null) {
            return;
        }
        String str = (String) obj;
        if (str.contains(NPStringFog.decode(new byte[]{8}, "27e3f6", 1.211107226E9d))) {
            String str2 = str.split(NPStringFog.decode(new byte[]{2}, "8b472d", true, true), -1)[1];
            String str3 = str2.split(NPStringFog.decode(new byte[]{77}, "bf16ba", -2940), -1)[0];
            String str4 = str2.split(NPStringFog.decode(new byte[]{23}, "819c6c", -2.0858963E9f), -1)[1];
            String str5 = str.split(NPStringFog.decode(new byte[]{92}, "f3e533", 529376785L), -1)[0];
            if (NPStringFog.decode(new byte[]{7, 102, 68, 84, 66, 10, 66, 75, 85, 84, 110, 11, 86, 84, 83, 110, 94, 7, 81, 76, 69, 82, 80, 17, 82, 93}, "79611e", true, true).equals(str4)) {
                Log.i(TAG, NPStringFog.decode(new byte[]{36, 94, 64, 86, 85, 70, 13, 83, 83, 77, 66, 5, 3, 69, 80, 92, 17, 20, 7, 66, 90, 77, 67, 5, 7, 29, 21, 86, 94, 18, 66, 69, 71, 65, 88, 8, 5, 17, 65, 87, 17, 19, 18, 85, 84, 76, 84, 70, 16, 84, 70, 87, 68, 20, 1, 84, 21, 81, 85, 70, 4, 94, 71, 24, 88, 18}, "b1581f", -8.41774552E8d));
                return;
            }
            String resPackage = getResPackage();
            int identifier = getResources(context, resPackage).getIdentifier(str4, str3, str5);
            if (this.mInt1 != identifier) {
                Log.i(TAG, NPStringFog.decode(new byte[]{43, 83, 21, 95, 5, 69, 66, 84, 93, 86, 10, 81, 7, 83, 21, 81, 11, 68, 66}, "b757d6", -26481) + resPackage + " " + str);
                this.mInt1 = identifier;
            }
        }
    }

    public Bitmap getBitmap() {
        if (this.mType == -1 && Build.VERSION.SDK_INT >= 23) {
            Object obj = this.mObj1;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        }
        int i = this.mType;
        if (i == 1) {
            return (Bitmap) this.mObj1;
        }
        if (i == 5) {
            return createLegacyIconFromAdaptiveIcon((Bitmap) this.mObj1, true);
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{5, 83, 93, 92, 7, 86, 70, 85, 84, 68, 32, 91, 18, 95, 80, 64, 74, 27, 70, 93, 95, 16}, "f210b2", false) + this);
    }

    public int getResId() {
        if (this.mType == -1 && Build.VERSION.SDK_INT >= 23) {
            return getResId((Icon) this.mObj1);
        }
        if (this.mType == 2) {
            return this.mInt1;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{85, 0, 92, 90, 93, 0, 22, 6, 85, 66, 106, 1, 69, 40, 84, 30, 17, 68, 89, 15, 16}, "6a068d", 1748191141L) + this);
    }

    public String getResPackage() {
        if (this.mType == -1 && Build.VERSION.SDK_INT >= 23) {
            return getResPackage((Icon) this.mObj1);
        }
        if (this.mType == 2) {
            return TextUtils.isEmpty(this.mString1) ? ((String) this.mObj1).split(NPStringFog.decode(new byte[]{12}, "695c6d", false, true), -1)[0] : this.mString1;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{87, 89, 8, 10, 82, 80, 20, 95, 1, 18, 101, 81, 71, 104, 5, 5, 92, 85, 83, 93, 76, 79, 23, 91, 90, 24}, "48df74", -803581173L) + this);
    }

    public int getType() {
        return (this.mType != -1 || Build.VERSION.SDK_INT < 23) ? this.mType : getType((Icon) this.mObj1);
    }

    public Uri getUri() {
        if (this.mType == -1 && Build.VERSION.SDK_INT >= 23) {
            return getUri((Icon) this.mObj1);
        }
        int i = this.mType;
        if (i == 4 || i == 6) {
            return Uri.parse((String) this.mObj1);
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{80, 0, 13, 95, 84, 83, 19, 6, 4, 71, 100, 69, 90, 73, 72, 19, 94, 89, 19}, "3aa317", -20094) + this);
    }

    public InputStream getUriInputStream(Context context) {
        Uri uri = getUri();
        String scheme = uri.getScheme();
        if (NPStringFog.decode(new byte[]{91, 88, 8, 65, 4, 8, 76}, "87f5af", 8.49495E8f).equals(scheme) || NPStringFog.decode(new byte[]{3, 90, 85, 0}, "e39e50", 2.01652E9f).equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(uri);
            } catch (Exception e) {
                Log.w(TAG, NPStringFog.decode(new byte[]{49, 12, 80, 85, 94, 7, 68, 22, 94, 23, 94, 13, 5, 6, 17, 94, 95, 3, 3, 7, 17, 81, 64, 13, 9, 66, 100, 101, 123, 88, 68}, "db172b", true) + uri, e);
            }
        } else {
            try {
                return new FileInputStream(new File((String) this.mObj1));
            } catch (FileNotFoundException e2) {
                Log.w(TAG, NPStringFog.decode(new byte[]{55, 90, 83, 86, 92, 84, 66, 64, 93, 20, 92, 94, 3, 80, 18, 93, 93, 80, 5, 81, 18, 82, 66, 94, 15, 20, 66, 85, 68, 89, 88, 20}, "b42401", 14916) + uri, e2);
            }
        }
        return null;
    }

    public Drawable loadDrawable(Context context) {
        checkResource(context);
        if (Build.VERSION.SDK_INT >= 23) {
            return toIcon(context).loadDrawable(context);
        }
        Drawable drawableLoadDrawableInner = loadDrawableInner(context);
        if (drawableLoadDrawableInner == null) {
            return drawableLoadDrawableInner;
        }
        if (this.mTintList == null && this.mTintMode == DEFAULT_TINT_MODE) {
            return drawableLoadDrawableInner;
        }
        drawableLoadDrawableInner.mutate();
        DrawableCompat.setTintList(drawableLoadDrawableInner, this.mTintList);
        DrawableCompat.setTintMode(drawableLoadDrawableInner, this.mTintMode);
        return drawableLoadDrawableInner;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void onPostParceling() {
        this.mTintMode = PorterDuff.Mode.valueOf(this.mTintModeStr);
        switch (this.mType) {
            case -1:
                Parcelable parcelable = this.mParcelable;
                if (parcelable == null) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{42, 11, 19, 87, 85, 81, 7, 69, 12, 85, 86, 86}, "cee698", false));
                }
                this.mObj1 = parcelable;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.mParcelable;
                if (parcelable2 != null) {
                    this.mObj1 = parcelable2;
                    return;
                }
                byte[] bArr = this.mData;
                this.mObj1 = bArr;
                this.mType = 3;
                this.mInt1 = 0;
                this.mInt2 = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.mData, Charset.forName(NPStringFog.decode(new byte[]{97, 55, 115, 25, 8, 85}, "4c549c", 15657)));
                this.mObj1 = str;
                if (this.mType == 2 && this.mString1 == null) {
                    this.mString1 = str.split(NPStringFog.decode(new byte[]{2}, "8bc94d", -812020409L), -1)[0];
                    return;
                }
                return;
            case 3:
                this.mObj1 = this.mData;
                return;
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void onPreParceling(boolean z) {
        this.mTintModeStr = this.mTintMode.name();
        switch (this.mType) {
            case -1:
                if (z) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 0, 91, 69, 70, 21, 68, 4, 71, 11, 83, 89, 94, 27, 80, 66, 123, 86, 88, 15, 21, 1, 64, 80, 86, 21, 80, 6, 18, 66, 94, 21, 93, 66, 123, 86, 88, 15, 118, 13, 95, 69, 86, 21, 22, 1, 64, 80, 86, 21, 80, 36, 64, 90, 90, 40, 86, 13, 92}, "7a5b25", -1105835288L));
                }
                this.mParcelable = (Parcelable) this.mObj1;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z) {
                    this.mParcelable = (Parcelable) this.mObj1;
                    return;
                }
                Bitmap bitmap = (Bitmap) this.mObj1;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.mData = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.mData = ((String) this.mObj1).getBytes(Charset.forName(NPStringFog.decode(new byte[]{51, 101, 39, 72, 8, 87}, "f1ae9a", -5.1819466E8f)));
                return;
            case 3:
                this.mData = (byte[]) this.mObj1;
                return;
            case 4:
            case 6:
                this.mData = this.mObj1.toString().getBytes(Charset.forName(NPStringFog.decode(new byte[]{101, 97, 36, 31, 7, 2}, "05b264", true)));
                return;
        }
    }

    public IconCompat setTint(int i) {
        return setTintList(ColorStateList.valueOf(i));
    }

    public IconCompat setTintList(ColorStateList colorStateList) {
        this.mTintList = colorStateList;
        return this;
    }

    public IconCompat setTintMode(PorterDuff.Mode mode) {
        this.mTintMode = mode;
        return this;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        switch (this.mType) {
            case -1:
                bundle.putParcelable(EXTRA_OBJ, (Parcelable) this.mObj1);
                break;
            case 0:
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 12, 65, 2, 95, 8, 92, 66, 94, 0, 92, 15}, "8b7c3a", 1.914061468E9d));
            case 1:
            case 5:
                bundle.putParcelable(EXTRA_OBJ, (Bitmap) this.mObj1);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString(EXTRA_OBJ, (String) this.mObj1);
                break;
            case 3:
                bundle.putByteArray(EXTRA_OBJ, (byte[]) this.mObj1);
                break;
        }
        bundle.putInt(EXTRA_TYPE, this.mType);
        bundle.putInt(EXTRA_INT1, this.mInt1);
        bundle.putInt(EXTRA_INT2, this.mInt2);
        bundle.putString(EXTRA_STRING1, this.mString1);
        ColorStateList colorStateList = this.mTintList;
        if (colorStateList != null) {
            bundle.putParcelable(EXTRA_TINT_LIST, colorStateList);
        }
        PorterDuff.Mode mode = this.mTintMode;
        if (mode != DEFAULT_TINT_MODE) {
            bundle.putString(EXTRA_TINT_MODE, mode.name());
        }
        return bundle;
    }

    @Deprecated
    public Icon toIcon() {
        return toIcon(null);
    }

    public Icon toIcon(Context context) {
        Icon iconCreateWithBitmap;
        switch (this.mType) {
            case -1:
                return (Icon) this.mObj1;
            case 0:
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{49, 15, 9, 94, 95, 79, 10, 65, 22, 73, 64, 93}, "dab008", -525169292L));
            case 1:
                iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) this.mObj1);
                break;
            case 2:
                iconCreateWithBitmap = Icon.createWithResource(getResPackage(), this.mInt1);
                break;
            case 3:
                iconCreateWithBitmap = Icon.createWithData((byte[]) this.mObj1, this.mInt1, this.mInt2);
                break;
            case 4:
                iconCreateWithBitmap = Icon.createWithContentUri((String) this.mObj1);
                break;
            case 5:
                iconCreateWithBitmap = Build.VERSION.SDK_INT < 26 ? Icon.createWithBitmap(createLegacyIconFromAdaptiveIcon((Bitmap) this.mObj1, false)) : Icon.createWithAdaptiveBitmap((Bitmap) this.mObj1);
                break;
            case 6:
                if (Build.VERSION.SDK_INT >= 30) {
                    iconCreateWithBitmap = Icon.createWithAdaptiveBitmapContentUri(getUri());
                } else {
                    if (context == null) {
                        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{39, 13, 87, 76, 87, 76, 16, 66, 80, 75, 18, 70, 1, 19, 76, 81, 64, 81, 0, 66, 77, 87, 18, 70, 1, 17, 86, 84, 68, 81, 68, 22, 81, 93, 18, 82, 13, 14, 92, 24, 71, 70, 13, 66, 86, 94, 18, 64, 12, 7, 25, 81, 81, 91, 10, 88, 25}, "db9824", true) + getUri());
                    }
                    InputStream uriInputStream = getUriInputStream(context);
                    if (uriInputStream == null) {
                        throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 2, 92, 11, 94, 66, 24, 15, 93, 4, 85, 22, 89, 7, 83, 21, 69, 95, 78, 6, 18, 12, 82, 89, 86, 67, 84, 23, 94, 91, 24, 22, 64, 12, 11, 22}, "8c2e16", -8.55381481E8d) + getUri());
                    }
                    if (Build.VERSION.SDK_INT < 26) {
                        iconCreateWithBitmap = Icon.createWithBitmap(createLegacyIconFromAdaptiveIcon(BitmapFactory.decodeStream(uriInputStream), false));
                    } else {
                        iconCreateWithBitmap = Icon.createWithAdaptiveBitmap(BitmapFactory.decodeStream(uriInputStream));
                    }
                }
                break;
        }
        ColorStateList colorStateList = this.mTintList;
        if (colorStateList != null) {
            iconCreateWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.mTintMode;
        if (mode == DEFAULT_TINT_MODE) {
            return iconCreateWithBitmap;
        }
        iconCreateWithBitmap.setTintMode(mode);
        return iconCreateWithBitmap;
    }

    public String toString() {
        if (this.mType == -1) {
            return String.valueOf(this.mObj1);
        }
        StringBuilder sbAppend = new StringBuilder(NPStringFog.decode(new byte[]{121, 91, 92, 94, 26, 22, 73, 72, 14}, "08302b", 1.4753857E9f)).append(typeToString(this.mType));
        switch (this.mType) {
            case 1:
            case 5:
                sbAppend.append(NPStringFog.decode(new byte[]{16, 67, 89, 78, 6, 13}, "0004c0", -24252));
                sbAppend.append(((Bitmap) this.mObj1).getWidth());
                sbAppend.append(NPStringFog.decode(new byte[]{77}, "51cfcd", true));
                sbAppend.append(((Bitmap) this.mObj1).getHeight());
                break;
            case 2:
                sbAppend.append(NPStringFog.decode(new byte[]{19, 17, 13, 81, 5}, "3af681", -1.574139004E9d));
                sbAppend.append(this.mString1);
                sbAppend.append(NPStringFog.decode(new byte[]{68, 88, 2, 10}, "d1f7ab", -1.412295224E9d));
                sbAppend.append(String.format(NPStringFog.decode(new byte[]{9, 75, 28, 8, 9, 77}, "939815", 2.055753E9f), Integer.valueOf(getResId())));
                break;
            case 3:
                sbAppend.append(NPStringFog.decode(new byte[]{21, 8, 86, 94, 92}, "5d30af", -24612));
                sbAppend.append(this.mInt1);
                if (this.mInt2 != 0) {
                    sbAppend.append(NPStringFog.decode(new byte[]{70, 13, 80, 84, 94}, "fb62c3", -3.7724986E8f));
                    sbAppend.append(this.mInt2);
                }
                break;
            case 4:
            case 6:
                sbAppend.append(NPStringFog.decode(new byte[]{68, 68, 66, 15, 9}, "d10f41", -6.2565126E8f));
                sbAppend.append(this.mObj1);
                break;
        }
        if (this.mTintList != null) {
            sbAppend.append(NPStringFog.decode(new byte[]{69, 69, 91, 91, 21, 14}, "e125a3", true, false));
            sbAppend.append(this.mTintList);
        }
        if (this.mTintMode != DEFAULT_TINT_MODE) {
            sbAppend.append(NPStringFog.decode(new byte[]{17, 91, 9, 2, 6, 12}, "16ffc1", false, false));
            sbAppend.append(this.mTintMode);
        }
        sbAppend.append(NPStringFog.decode(new byte[]{31}, "6bae09", -2.38639874E8d));
        return sbAppend.toString();
    }
}
