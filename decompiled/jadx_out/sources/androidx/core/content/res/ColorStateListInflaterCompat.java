package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.R;
import androidx.core.math.MathUtils;
import androidx.core.os.BuildCompat;
import java.io.IOException;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class ColorStateListInflaterCompat {
    private static final ThreadLocal<TypedValue> sTempTypedValue = new ThreadLocal<>();

    private ColorStateListInflaterCompat() {
    }

    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
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
        throw new XmlPullParserException(NPStringFog.decode(new byte[]{120, 90, 22, 21, 77, 86, 68, 65, 22, 18, 88, 80, 22, 83, 89, 19, 87, 83}, "656f97", 1.8730353E9f));
    }

    public static ColorStateList createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals(NPStringFog.decode(new byte[]{66, 93, 91, 4, 83, 77, 94, 74}, "187a09", -1.087682515E9d))) {
            return inflate(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + NPStringFog.decode(new byte[]{95, 70, 93, 8, 16, 81, 9, 15, 80, 70, 5, 95, 9, 9, 70, 70, 21, 68, 4, 18, 81, 70, 10, 89, 22, 18, 20, 18, 7, 87, 69}, "ef4ff0", -14163) + name);
    }

    private static TypedValue getTypedValue() {
        ThreadLocal<TypedValue> threadLocal = sTempTypedValue;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    public static ColorStateList inflate(Resources resources, int i, Resources.Theme theme) {
        try {
            return createFromXml(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.e(NPStringFog.decode(new byte[]{122, 49, 46, 118, 91, 8, 73, 3, 22}, "9bb54e", -5.08471243E8d), NPStringFog.decode(new byte[]{36, 0, 8, 9, 92, 1, 66, 21, 14, 69, 80, 11, 4, 13, 0, 17, 92, 69, 33, 14, 13, 10, 75, 54, 22, 0, 21, 0, 117, 12, 17, 21, 79}, "baae9e", true, true), e);
            return null;
        }
    }

    private static ColorStateList inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int color;
        int i;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr = new int[20][];
        int[][] iArr2 = iArr;
        int i2 = 0;
        int[] iArr3 = new int[iArr.length];
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals(NPStringFog.decode(new byte[]{11, 77, 93, 84}, "b9897a", true, true))) {
                TypedArray typedArrayObtainAttributes = obtainAttributes(resources, theme, attributeSet, R.styleable.ColorStateListItem);
                int resourceId = typedArrayObtainAttributes.getResourceId(R.styleable.ColorStateListItem_android_color, -1);
                if (resourceId == -1 || isColorInt(resources, resourceId)) {
                    color = typedArrayObtainAttributes.getColor(R.styleable.ColorStateListItem_android_color, -65281);
                } else {
                    try {
                        color = createFromXml(resources, resources.getXml(resourceId), theme).getDefaultColor();
                    } catch (Exception e) {
                        color = typedArrayObtainAttributes.getColor(R.styleable.ColorStateListItem_android_color, -65281);
                    }
                }
                float f = 1.0f;
                if (typedArrayObtainAttributes.hasValue(R.styleable.ColorStateListItem_android_alpha)) {
                    f = typedArrayObtainAttributes.getFloat(R.styleable.ColorStateListItem_android_alpha, 1.0f);
                } else if (typedArrayObtainAttributes.hasValue(R.styleable.ColorStateListItem_alpha)) {
                    f = typedArrayObtainAttributes.getFloat(R.styleable.ColorStateListItem_alpha, 1.0f);
                }
                float f2 = (BuildCompat.isAtLeastS() && typedArrayObtainAttributes.hasValue(R.styleable.ColorStateListItem_android_lStar)) ? typedArrayObtainAttributes.getFloat(R.styleable.ColorStateListItem_android_lStar, -1.0f) : typedArrayObtainAttributes.getFloat(R.styleable.ColorStateListItem_lStar, -1.0f);
                typedArrayObtainAttributes.recycle();
                int i3 = 0;
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr4 = new int[attributeCount];
                int i4 = 0;
                while (i4 < attributeCount) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i4);
                    if (attributeNameResource == 16843173 || attributeNameResource == 16843551 || attributeNameResource == R.attr.alpha || attributeNameResource == R.attr.lStar) {
                        i = i3;
                    } else {
                        if (!attributeSet.getAttributeBooleanValue(i4, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr4[i3] = attributeNameResource;
                        i = i3 + 1;
                    }
                    i4++;
                    i3 = i;
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr4, i3);
                int[] iArrAppend = GrowingArrayUtils.append(iArr3, i2, modulateColorAlpha(color, f, f2));
                int[][] iArr5 = (int[][]) GrowingArrayUtils.append(iArr2, i2, iArrTrimStateSet);
                i2++;
                iArr2 = iArr5;
                iArr3 = iArrAppend;
            }
        }
        int[] iArr6 = new int[i2];
        int[][] iArr7 = new int[i2][];
        System.arraycopy(iArr3, 0, iArr6, 0, i2);
        System.arraycopy(iArr2, 0, iArr7, 0, i2);
        return new ColorStateList(iArr7, iArr6);
    }

    private static boolean isColorInt(Resources resources, int i) {
        TypedValue typedValue = getTypedValue();
        resources.getValue(i, typedValue, true);
        return typedValue.type >= 28 && typedValue.type <= 31;
    }

    private static int modulateColorAlpha(int i, float f, float f2) {
        boolean z = f2 >= 0.0f && f2 <= 100.0f;
        if (f == 1.0f && !z) {
            return i;
        }
        int iClamp = MathUtils.clamp((int) ((Color.alpha(i) * f) + 0.5f), 0, 255);
        if (z) {
            CamColor camColorFromColor = CamColor.fromColor(i);
            i = CamColor.toColor(camColorFromColor.getHue(), camColorFromColor.getChroma(), f2);
        }
        return (16777215 & i) | (iClamp << 24);
    }

    private static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}
