package com.google.android.material.color;

import com.google.android.material.R;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class HarmonizedColorAttributes {
    private static final int[] HARMONIZED_MATERIAL_ATTRIBUTES = {R.attr.colorError, R.attr.colorOnError, R.attr.colorErrorContainer, R.attr.colorOnErrorContainer};
    private final int[] attributes;
    private final int themeOverlay;

    private HarmonizedColorAttributes(int[] iArr, int i) {
        if (i != 0 && iArr.length == 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{50, 10, 7, 89, 4, 68, 9, 20, 7, 70, 13, 5, 31, 66, 17, 92, 14, 17, 10, 6, 66, 86, 4, 68, 19, 17, 7, 80, 65, 19, 15, 22, 10, 20, 21, 12, 3, 66, 3, 87, 2, 11, 11, 18, 3, 90, 24, 13, 8, 5, 66, 93, 15, 16, 61, 63, 66, 85, 21, 16, 20, 11, 0, 65, 21, 1, 21, 76}, "fbb4ad", 1790730845L));
        }
        this.attributes = iArr;
        this.themeOverlay = i;
    }

    public static HarmonizedColorAttributes create(int[] iArr) {
        return new HarmonizedColorAttributes(iArr, 0);
    }

    public static HarmonizedColorAttributes create(int[] iArr, int i) {
        return new HarmonizedColorAttributes(iArr, i);
    }

    public static HarmonizedColorAttributes createMaterialDefaults() {
        return create(HARMONIZED_MATERIAL_ATTRIBUTES, R.style.ThemeOverlay_Material3_HarmonizedColors);
    }

    public int[] getAttributes() {
        return this.attributes;
    }

    public int getThemeOverlay() {
        return this.themeOverlay;
    }
}
