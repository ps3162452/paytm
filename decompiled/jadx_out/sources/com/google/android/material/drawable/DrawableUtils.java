package com.google.android.material.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes37.dex */
public final class DrawableUtils {
    private DrawableUtils() {
    }

    public static AttributeSet parseDrawableXml(Context context, int i, CharSequence charSequence) {
        int next;
        try {
            XmlResourceParser xml = context.getResources().getXml(i);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException(NPStringFog.decode(new byte[]{47, 91, 18, 23, 16, 82, 19, 64, 18, 16, 5, 84, 65, 82, 93, 17, 10, 87}, "a42dd3", -1.060677E7f));
            }
            if (TextUtils.equals(xml.getName(), charSequence)) {
                return Xml.asAttributeSet(xml);
            }
            throw new XmlPullParserException(NPStringFog.decode(new byte[]{40, 22, 75, 67, 23, 93, 4, 21, 93, 23, 86, 21, 89}, "ec8775", -20686) + ((Object) charSequence) + NPStringFog.decode(new byte[]{7, 67, 69, 65, 81, 75, 77, 67, 66, 84, 87}, "9c6509", -1.949186563E9d));
        } catch (IOException | XmlPullParserException e) {
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(NPStringFog.decode(new byte[]{39, 82, 87, 31, 67, 21, 8, 92, 88, 92, 23, 87, 5, 87, 94, 93, 23, 71, 1, 64, 86, 77, 69, 86, 1, 19, 112, 124, 23, 22, 84, 75}, "d39875", -1.0989076E9f) + Integer.toHexString(i));
            notFoundException.initCause(e);
            throw notFoundException;
        }
    }

    public static void setRippleDrawableRadius(RippleDrawable rippleDrawable, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            rippleDrawable.setRadius(i);
            return;
        }
        try {
            RippleDrawable.class.getDeclaredMethod(NPStringFog.decode(new byte[]{16, 80, 76, 44, 5, 73, 49, 84, 92, 8, 17, 66}, "c58ad1", true), Integer.TYPE).invoke(rippleDrawable, Integer.valueOf(i));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{113, 95, 66, 84, 84, 12, 21, 68, 23, 75, 85, 22, 18, 98, 94, 72, 64, 14, 87, 116, 69, 89, 71, 3, 80, 92, 82, 24, 66, 3, 86, 89, 66, 75}, "20780b", 3.5981338E8d), e);
        }
    }

    public static PorterDuffColorFilter updateTintFilter(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }
}
