package com.airbnb.lottie.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.ImageAssetDelegate;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class ImageAssetManager {
    private static final Object bitmapHashLock = new Object();
    private final Context context;

    @Nullable
    private ImageAssetDelegate delegate;
    private final Map<String, LottieImageAsset> imageAssets;
    private final String imagesFolder;

    public ImageAssetManager(Context context, String str, ImageAssetDelegate imageAssetDelegate, Map<String, LottieImageAsset> map) {
        this.context = context;
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.imagesFolder = str;
        } else {
            this.imagesFolder = str + '/';
        }
        this.imageAssets = map;
        setDelegate(imageAssetDelegate);
    }

    public ImageAssetManager(Drawable.Callback callback, String str, ImageAssetDelegate imageAssetDelegate, Map<String, LottieImageAsset> map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.imagesFolder = str;
        } else {
            this.imagesFolder = str + '/';
        }
        if (callback instanceof View) {
            this.context = ((View) callback).getContext();
            this.imageAssets = map;
            setDelegate(imageAssetDelegate);
        } else {
            Logger.warning(NPStringFog.decode(new byte[]{117, 91, 21, 70, 93, 83, 125, 70, 0, 69, 85, 84, 85, 81, 65, 95, 65, 69, 77, 20, 3, 87, 20, 95, 87, 71, 8, 86, 81, 22, 86, 82, 65, 83, 20, 64, 80, 81, 22, 18, 82, 89, 75, 20, 8, 95, 85, 81, 92, 71, 65, 70, 91, 22, 78, 91, 19, 89, 26}, "94a246", true, false));
            this.imageAssets = new HashMap();
            this.context = null;
        }
    }

    private Bitmap putBitmap(String str, @Nullable Bitmap bitmap) {
        synchronized (bitmapHashLock) {
            this.imageAssets.get(str).setBitmap(bitmap);
        }
        return bitmap;
    }

    @Nullable
    public Bitmap bitmapForId(String str) {
        LottieImageAsset lottieImageAsset = this.imageAssets.get(str);
        if (lottieImageAsset == null) {
            return null;
        }
        Bitmap bitmap = lottieImageAsset.getBitmap();
        if (bitmap != null) {
            return bitmap;
        }
        if (this.delegate != null) {
            Bitmap bitmapFetchBitmap = this.delegate.fetchBitmap(lottieImageAsset);
            if (bitmapFetchBitmap == null) {
                return bitmapFetchBitmap;
            }
            putBitmap(str, bitmapFetchBitmap);
            return bitmapFetchBitmap;
        }
        String fileName = lottieImageAsset.getFileName();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (fileName.startsWith(NPStringFog.decode(new byte[]{2, 2, 68, 82, 3}, "fc039a", true)) && fileName.indexOf(NPStringFog.decode(new byte[]{4, 83, 65, 1, 0, 80, 74}, "f22d6d", false, false)) > 0) {
            try {
                byte[] bArrDecode = Base64.decode(fileName.substring(fileName.indexOf(44) + 1), 0);
                return putBitmap(str, BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
            } catch (IllegalArgumentException e) {
                Logger.warning(NPStringFog.decode(new byte[]{85, 81, 68, 82, 66, 49, 99, 124, 16, 87, 11, 0, 17, 94, 95, 71, 66, 12, 80, 70, 85, 19, 1, 11, 67, 66, 85, 80, 22, 68, 83, 81, 67, 86, 84, 80, 17, 86, 95, 65, 15, 5, 69, 30}, "1003bd", true), e);
                return null;
            }
        }
        try {
            if (TextUtils.isEmpty(this.imagesFolder)) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{97, 94, 23, 17, 90, 20, 75, 69, 66, 66, 82, 21, 24, 80, 12, 17, 94, 12, 89, 86, 7, 66, 23, 7, 87, 93, 6, 84, 69, 65, 90, 84, 4, 94, 69, 4, 24, 93, 13, 80, 83, 8, 86, 86, 66, 80, 89, 65, 81, 92, 3, 86, 82, 79, 24, 98, 7, 69, 23, 8, 76, 17, 21, 88, 67, 9, 24, 125, 13, 69, 67, 8, 93, 114, 13, 92, 71, 14, 75, 88, 22, 88, 88, 15, 27, 66, 7, 69, 126, 12, 89, 86, 7, 66, 113, 14, 84, 85, 7, 67, 23, 14, 74, 17, 46, 94, 67, 21, 81, 84, 38, 67, 86, 22, 89, 83, 14, 84, 20, 18, 93, 69, 43, 92, 86, 6, 93, 66, 36, 94, 91, 5, 93, 67}, "81b17a", 1726532062L));
            }
            try {
                return putBitmap(str, Utils.resizeBitmapIfNeeded(BitmapFactory.decodeStream(this.context.getAssets().open(this.imagesFolder + fileName), null, options), lottieImageAsset.getWidth(), lottieImageAsset.getHeight()));
            } catch (IllegalArgumentException e2) {
                Logger.warning(NPStringFog.decode(new byte[]{102, 88, 85, 83, 89, 81, 19, 66, 91, 17, 81, 81, 80, 89, 80, 84, 21, 93, 94, 87, 83, 84, 27}, "364154", 8.4966906E7d), e2);
                return null;
            }
        } catch (IOException e3) {
            Logger.warning(NPStringFog.decode(new byte[]{100, 11, 80, 1, 95, 7, 17, 17, 94, 67, 92, 18, 84, 11, 17, 2, 64, 17, 84, 17, 31}, "1e1c3b", -17528), e3);
            return null;
        }
    }

    public boolean hasSameContext(Context context) {
        return (context == null && this.context == null) || this.context.equals(context);
    }

    public void setDelegate(@Nullable ImageAssetDelegate imageAssetDelegate) {
        this.delegate = imageAssetDelegate;
    }

    @Nullable
    public Bitmap updateBitmap(String str, @Nullable Bitmap bitmap) {
        if (bitmap != null) {
            Bitmap bitmap2 = this.imageAssets.get(str).getBitmap();
            putBitmap(str, bitmap);
            return bitmap2;
        }
        LottieImageAsset lottieImageAsset = this.imageAssets.get(str);
        Bitmap bitmap3 = lottieImageAsset.getBitmap();
        lottieImageAsset.setBitmap(null);
        return bitmap3;
    }
}
