package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Shader;
import android.util.Log;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class ComplexColorCompat {
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{32, 11, 92, 17, 85, 3, 27, 39, 94, 13, 86, 20, 32, 11, 92, 17, 88, 18}, "cd1a9f", true, true);
    private int mColor;
    private final ColorStateList mColorStateList;
    private final Shader mShader;

    private ComplexColorCompat(Shader shader, ColorStateList colorStateList, int i) {
        this.mShader = shader;
        this.mColorStateList = colorStateList;
        this.mColor = i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.core.content.res.ComplexColorCompat createFromXml(android.content.res.Resources r8, int r9, android.content.res.Resources.Theme r10) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ComplexColorCompat.createFromXml(android.content.res.Resources, int, android.content.res.Resources$Theme):androidx.core.content.res.ComplexColorCompat");
    }

    static ComplexColorCompat from(int i) {
        return new ComplexColorCompat(null, null, i);
    }

    static ComplexColorCompat from(ColorStateList colorStateList) {
        return new ComplexColorCompat(null, colorStateList, colorStateList.getDefaultColor());
    }

    static ComplexColorCompat from(Shader shader) {
        return new ComplexColorCompat(shader, null, 0);
    }

    public static ComplexColorCompat inflate(Resources resources, int i, Resources.Theme theme) {
        try {
            return createFromXml(resources, i, theme);
        } catch (Exception e) {
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{126, 87, 93, 94, 92, 1, 24, 66, 91, 18, 80, 11, 94, 90, 85, 70, 92, 69, 123, 89, 89, 66, 85, 0, 64, 117, 91, 94, 86, 23, 22}, "86429e", 7.41166438E8d), e);
            return null;
        }
    }

    public int getColor() {
        return this.mColor;
    }

    public Shader getShader() {
        return this.mShader;
    }

    public boolean isGradient() {
        return this.mShader != null;
    }

    public boolean isStateful() {
        ColorStateList colorStateList;
        return this.mShader == null && (colorStateList = this.mColorStateList) != null && colorStateList.isStateful();
    }

    public boolean onStateChanged(int[] iArr) {
        if (!isStateful()) {
            return false;
        }
        ColorStateList colorStateList = this.mColorStateList;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (colorForState == this.mColor) {
            return false;
        }
        this.mColor = colorForState;
        return true;
    }

    public void setColor(int i) {
        this.mColor = i;
    }

    public boolean willDraw() {
        return isGradient() || this.mColor != 0;
    }
}
