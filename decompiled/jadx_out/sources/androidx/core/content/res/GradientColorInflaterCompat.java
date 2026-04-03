package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.core.R;
import java.io.IOException;
import java.util.List;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
final class GradientColorInflaterCompat {
    private static final int TILE_MODE_CLAMP = 0;
    private static final int TILE_MODE_MIRROR = 2;
    private static final int TILE_MODE_REPEAT = 1;

    static final class ColorStops {
        final int[] mColors;
        final float[] mOffsets;

        ColorStops(int i, int i2) {
            this.mColors = new int[]{i, i2};
            this.mOffsets = new float[]{0.0f, 1.0f};
        }

        ColorStops(int i, int i2, int i3) {
            this.mColors = new int[]{i, i2, i3};
            this.mOffsets = new float[]{0.0f, 0.5f, 1.0f};
        }

        ColorStops(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.mColors = new int[size];
            this.mOffsets = new float[size];
            for (int i = 0; i < size; i++) {
                this.mColors[i] = list.get(i).intValue();
                this.mOffsets[i] = list2.get(i).floatValue();
            }
        }
    }

    private GradientColorInflaterCompat() {
    }

    private static ColorStops checkColors(ColorStops colorStops, int i, int i2, boolean z, int i3) {
        return colorStops != null ? colorStops : z ? new ColorStops(i, i3, i2) : new ColorStops(i, i2);
    }

    static Shader createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return createFromXmlInner(resources, xmlPullParser, attributeSetAsAttributeSet, theme);
        }
        throw new XmlPullParserException(NPStringFog.decode(new byte[]{126, 88, 17, 71, 70, 83, 66, 67, 17, 64, 83, 85, 16, 81, 94, 65, 92, 86}, "071422", 943206138L));
    }

    static Shader createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (!name.equals(NPStringFog.decode(new byte[]{6, 75, 84, 93, 11, 3, 15, 77}, "a959bf", true))) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + NPStringFog.decode(new byte[]{8, 70, 90, 12, 21, 89, 94, 15, 87, 66, 4, 74, 83, 2, 90, 7, 13, 76, 18, 5, 92, 14, 12, 74, 18, 18, 82, 5, 67}, "2f3bc8", false) + name);
        }
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.GradientColor);
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{18, 66, 7, 66, 68, 104}, "a6f000", -692597579L), R.styleable.GradientColor_android_startX, 0.0f);
        float namedFloat2 = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{75, 76, 80, 75, 18, 107}, "8819f2", 9.36644E8f), R.styleable.GradientColor_android_startY, 0.0f);
        float namedFloat3 = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{7, 93, 81, 96}, "b358a9", false), R.styleable.GradientColor_android_endX, 0.0f);
        float namedFloat4 = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{92, 93, 84, 107}, "930286", false, true), R.styleable.GradientColor_android_endY, 0.0f);
        float namedFloat5 = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{90, 6, 94, 16, 7, 68, 97}, "9c0db6", -1.276925874E9d), R.styleable.GradientColor_android_centerX, 0.0f);
        float namedFloat6 = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{7, 86, 86, 16, 93, 66, 61}, "d38d80", true, true), R.styleable.GradientColor_android_centerY, 0.0f);
        int namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{66, 78, 68, 1}, "674dff", -1.312950534E9d), R.styleable.GradientColor_android_type, 0);
        int namedColor = TypedArrayUtils.getNamedColor(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{16, 67, 7, 69, 18, 39, 12, 91, 9, 69}, "c7f7fd", 3.3967805E7d), R.styleable.GradientColor_android_startColor, 0);
        boolean zHasAttribute = TypedArrayUtils.hasAttribute(xmlPullParser, NPStringFog.decode(new byte[]{90, 0, 95, 66, 93, 68, 122, 10, 93, 89, 74}, "9e1686", false));
        int namedColor2 = TypedArrayUtils.getNamedColor(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{83, 6, 11, 69, 4, 67, 115, 12, 9, 94, 19}, "0ce1a1", 1.8706268E9f), R.styleable.GradientColor_android_centerColor, 0);
        int namedColor3 = TypedArrayUtils.getNamedColor(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{83, 93, 84, 122, 86, 94, 89, 65}, "630992", 1.13105532E9d), R.styleable.GradientColor_android_endColor, 0);
        int namedInt2 = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{22, 15, 8, 86, 122, 87, 6, 3}, "bfd378", true, false), R.styleable.GradientColor_android_tileMode, 0);
        float namedFloat7 = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{81, 75, 3, 85, 8, 80, 88, 77, 48, 80, 5, 92, 67, 74}, "69b1a5", 26722), R.styleable.GradientColor_android_gradientRadius, 0.0f);
        typedArrayObtainAttributes.recycle();
        ColorStops colorStopsCheckColors = checkColors(inflateChildElements(resources, xmlPullParser, attributeSet, theme), namedColor, namedColor3, zHasAttribute, namedColor2);
        switch (namedInt) {
            case 1:
                if (namedFloat7 > 0.0f) {
                    return new RadialGradient(namedFloat5, namedFloat6, namedFloat7, colorStopsCheckColors.mColors, colorStopsCheckColors.mOffsets, parseTileMode(namedInt2));
                }
                throw new XmlPullParserException(NPStringFog.decode(new byte[]{9, 81, 69, 86, 87, 10, 80, 88, 67, 9, 19, 23, 84, 81, 23, 69, 86, 18, 64, 95, 69, 82, 64, 67, 18, 81, 69, 86, 87, 10, 80, 88, 67, 101, 82, 7, 92, 67, 68, 16, 19, 2, 65, 66, 69, 94, 81, 22, 65, 83, 23, 64, 90, 23, 93, 22, 69, 86, 87, 10, 84, 90, 23, 67, 74, 19, 80}, "56773c", -21404));
            case 2:
                return new SweepGradient(namedFloat5, namedFloat6, colorStopsCheckColors.mColors, colorStopsCheckColors.mOffsets);
            default:
                return new LinearGradient(namedFloat, namedFloat2, namedFloat3, namedFloat4, colorStopsCheckColors.mColors, colorStopsCheckColors.mOffsets, parseTileMode(namedInt2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009d, code lost:
    
        if (r2.size() <= 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a4, code lost:
    
        return new androidx.core.content.res.GradientColorInflaterCompat.ColorStops(r2, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a5, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.core.content.res.GradientColorInflaterCompat.ColorStops inflateChildElements(android.content.res.Resources r8, org.xmlpull.v1.XmlPullParser r9, android.util.AttributeSet r10, android.content.res.Resources.Theme r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.GradientColorInflaterCompat.inflateChildElements(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.content.res.GradientColorInflaterCompat$ColorStops");
    }

    private static Shader.TileMode parseTileMode(int i) {
        switch (i) {
            case 1:
                return Shader.TileMode.REPEAT;
            case 2:
                return Shader.TileMode.MIRROR;
            default:
                return Shader.TileMode.CLAMP;
        }
    }
}
