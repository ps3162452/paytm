package com.google.android.material.animation;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import java.util.WeakHashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class DrawableAlphaProperty extends Property<Drawable, Integer> {
    public static final Property<Drawable, Integer> DRAWABLE_ALPHA_COMPAT = new DrawableAlphaProperty();
    private final WeakHashMap<Drawable, Integer> alphaCache;

    private DrawableAlphaProperty() {
        super(Integer.class, NPStringFog.decode(new byte[]{83, 69, 87, 19, 4, 83, 91, 82, 119, 8, 21, 89, 86, 116, 89, 9, 21, 80, 67}, "776de1", -15743));
        this.alphaCache = new WeakHashMap<>();
    }

    @Override // android.util.Property
    public Integer get(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable.getAlpha());
        }
        if (this.alphaCache.containsKey(drawable)) {
            return this.alphaCache.get(drawable);
        }
        return 255;
    }

    @Override // android.util.Property
    public void set(Drawable drawable, Integer num) {
        if (Build.VERSION.SDK_INT < 19) {
            this.alphaCache.put(drawable, num);
        }
        drawable.setAlpha(num.intValue());
    }
}
