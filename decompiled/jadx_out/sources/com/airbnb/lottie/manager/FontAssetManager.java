package com.airbnb.lottie.manager;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.FontAssetDelegate;
import com.airbnb.lottie.model.MutablePair;
import com.airbnb.lottie.utils.Logger;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class FontAssetManager {
    private final AssetManager assetManager;

    @Nullable
    private FontAssetDelegate delegate;
    private final MutablePair<String> tempPair = new MutablePair<>();
    private final Map<MutablePair<String>, Typeface> fontMap = new HashMap();
    private final Map<String, Typeface> fontFamilies = new HashMap();
    private String defaultFontFileExtension = NPStringFog.decode(new byte[]{23, 76, 17, 5}, "98ec70", true, false);

    public FontAssetManager(Drawable.Callback callback, @Nullable FontAssetDelegate fontAssetDelegate) {
        this.delegate = fontAssetDelegate;
        if (callback instanceof View) {
            this.assetManager = ((View) callback).getContext().getAssets();
        } else {
            Logger.warning(NPStringFog.decode(new byte[]{125, 87, 68, 21, 80, 81, 117, 74, 81, 22, 88, 86, 93, 93, 16, 12, 76, 71, 69, 24, 82, 4, 25, 93, 95, 75, 89, 5, 92, 20, 94, 94, 16, 0, 25, 66, 88, 93, 71, 65, 95, 91, 67, 24, 89, 12, 88, 83, 84, 75, 16, 21, 86, 20, 70, 87, 66, 10, 23}, "180a94", -1.5606514E9f));
            this.assetManager = null;
        }
    }

    private Typeface getFontFamily(String str) {
        String fontPath;
        Typeface typefaceFetchFont = this.fontFamilies.get(str);
        if (typefaceFetchFont == null) {
            typefaceFetchFont = this.delegate != null ? this.delegate.fetchFont(str) : null;
            if (this.delegate != null && typefaceFetchFont == null && (fontPath = this.delegate.getFontPath(str)) != null) {
                typefaceFetchFont = Typeface.createFromAsset(this.assetManager, fontPath);
            }
            if (typefaceFetchFont == null) {
                typefaceFetchFont = Typeface.createFromAsset(this.assetManager, NPStringFog.decode(new byte[]{3, 11, 91, 67, 69, 29}, "ed5762", -1363337327L) + str + this.defaultFontFileExtension);
            }
            this.fontFamilies.put(str, typefaceFetchFont);
        }
        return typefaceFetchFont;
    }

    private Typeface typefaceForStyle(Typeface typeface, String str) {
        int i = 0;
        boolean zContains = str.contains(NPStringFog.decode(new byte[]{42, 16, 87, 9, 89, 84}, "cd6e07", -1699949107L));
        boolean zContains2 = str.contains(NPStringFog.decode(new byte[]{123, 95, 94, 81}, "902571", -1.316190595E9d));
        if (zContains && zContains2) {
            i = 3;
        } else if (zContains) {
            i = 2;
        } else if (zContains2) {
            i = 1;
        }
        return typeface.getStyle() == i ? typeface : Typeface.create(typeface, i);
    }

    public Typeface getTypeface(String str, String str2) {
        this.tempPair.set(str, str2);
        Typeface typeface = this.fontMap.get(this.tempPair);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceTypefaceForStyle = typefaceForStyle(getFontFamily(str), str2);
        this.fontMap.put(this.tempPair, typefaceTypefaceForStyle);
        return typefaceTypefaceForStyle;
    }

    public void setDefaultFontFileExtension(String str) {
        this.defaultFontFileExtension = str;
    }

    public void setDelegate(@Nullable FontAssetDelegate fontAssetDelegate) {
        this.delegate = fontAssetDelegate;
    }
}
