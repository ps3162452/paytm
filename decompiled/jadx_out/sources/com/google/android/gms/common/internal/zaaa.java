package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.gms.common.util.DeviceProperties;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zaaa extends Button {
    public zaaa(Context context, AttributeSet attributeSet) {
        super(context, null, R.attr.buttonStyle);
    }

    private static final int zab(int i, int i2, int i3, int i4) {
        switch (i) {
            case 0:
                return i2;
            case 1:
                return i3;
            case 2:
                return i4;
            default:
                throw new IllegalStateException(NPStringFog.decode(new byte[]{51, 94, 89, 8, 10, 68, 8, 16, 81, 9, 9, 92, 20, 16, 65, 5, 13, 86, 11, 85, 8, 70}, "f02fe3", true) + i);
        }
    }

    public final void zaa(Resources resources, int i, int i2) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i3 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i3);
        setMinWidth(i3);
        int iZab = zab(i2, com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_dark, com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_light, com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_light);
        int iZab2 = zab(i2, com.google.android.gms.base.R.drawable.common_google_signin_btn_text_dark, com.google.android.gms.base.R.drawable.common_google_signin_btn_text_light, com.google.android.gms.base.R.drawable.common_google_signin_btn_text_light);
        switch (i) {
            case 0:
            case 1:
                break;
            case 2:
                iZab2 = iZab;
                break;
            default:
                throw new IllegalStateException(NPStringFog.decode(new byte[]{108, 95, 82, 89, 12, 79, 87, 17, 91, 66, 23, 76, 86, 95, 25, 68, 10, 66, 92, 11, 25}, "9197c8", 1.6402287E9f) + i);
        }
        Drawable drawableWrap = DrawableCompat.wrap(resources.getDrawable(iZab2));
        DrawableCompat.setTintList(drawableWrap, resources.getColorStateList(com.google.android.gms.base.R.color.common_google_signin_btn_tint));
        DrawableCompat.setTintMode(drawableWrap, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(drawableWrap);
        setTextColor((ColorStateList) Preconditions.checkNotNull(resources.getColorStateList(zab(i2, com.google.android.gms.base.R.color.common_google_signin_btn_text_dark, com.google.android.gms.base.R.color.common_google_signin_btn_text_light, com.google.android.gms.base.R.color.common_google_signin_btn_text_light))));
        switch (i) {
            case 0:
                setText(resources.getString(com.google.android.gms.base.R.string.common_signin_button_text));
                break;
            case 1:
                setText(resources.getString(com.google.android.gms.base.R.string.common_signin_button_text_long));
                break;
            case 2:
                setText((CharSequence) null);
                break;
            default:
                throw new IllegalStateException(NPStringFog.decode(new byte[]{99, 94, 15, 94, 10, 18, 88, 16, 6, 69, 17, 17, 89, 94, 68, 67, 12, 31, 83, 10, 68}, "60d0ee", -264053062L) + i);
        }
        setTransformationMethod(null);
        if (DeviceProperties.isWearable(getContext())) {
            setGravity(19);
        }
    }
}
