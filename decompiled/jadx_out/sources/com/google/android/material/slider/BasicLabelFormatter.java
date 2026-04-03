package com.google.android.material.slider;

import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class BasicLabelFormatter implements LabelFormatter {
    private static final int BILLION = 1000000000;
    private static final int MILLION = 1000000;
    private static final int THOUSAND = 1000;
    private static final long TRILLION = 1000000000000L;

    @Override // com.google.android.material.slider.LabelFormatter
    public String getFormattedValue(float f) {
        return f >= 1.0E12f ? String.format(Locale.US, NPStringFog.decode(new byte[]{68, 27, 8, 95, 102}, "a59924", 2039061013L), Float.valueOf(f / 1.0E12f)) : f >= 1.0E9f ? String.format(Locale.US, NPStringFog.decode(new byte[]{18, 77, 85, 87, 116}, "7cd164", true), Float.valueOf(f / 1.0E9f)) : f >= 1000000.0f ? String.format(Locale.US, NPStringFog.decode(new byte[]{68, 76, 6, 80, 121}, "ab7644", -5.52846E8f), Float.valueOf(f / 1000000.0f)) : f >= 1000.0f ? String.format(Locale.US, NPStringFog.decode(new byte[]{18, 75, 1, 94, 40}, "7e08c5", -29002), Float.valueOf(f / 1000.0f)) : String.format(Locale.US, NPStringFog.decode(new byte[]{17, 28, 86, 3}, "42fe76", 9227), Float.valueOf(f));
    }
}
