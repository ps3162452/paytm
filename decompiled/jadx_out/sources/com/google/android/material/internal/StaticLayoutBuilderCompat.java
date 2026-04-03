package com.google.android.material.internal;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.core.util.Preconditions;
import java.lang.reflect.Constructor;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
final class StaticLayoutBuilderCompat {
    static final int DEFAULT_HYPHENATION_FREQUENCY;
    static final float DEFAULT_LINE_SPACING_ADD = 0.0f;
    static final float DEFAULT_LINE_SPACING_MULTIPLIER = 1.0f;
    private static final String TEXT_DIRS_CLASS = NPStringFog.decode(new byte[]{2, 87, 93, 19, 11, 88, 7, 23, 77, 4, 28, 69, 77, 109, 92, 25, 16, 117, 10, 75, 92, 2, 16, 88, 12, 87, 113, 4, 17, 67, 10, 74, 77, 8, 7, 66}, "c99ad1", false);
    private static final String TEXT_DIR_CLASS = NPStringFog.decode(new byte[]{3, 11, 92, 23, 9, 88, 6, 75, 76, 0, 30, 69, 76, 49, 93, 29, 18, 117, 11, 23, 93, 6, 18, 88, 13, 11, 112, 0, 19, 67, 11, 22, 76, 12, 5}, "be8ef1", -3120);
    private static final String TEXT_DIR_CLASS_LTR = NPStringFog.decode(new byte[]{41, 50, 100}, "ef6a63", true);
    private static final String TEXT_DIR_CLASS_RTL = NPStringFog.decode(new byte[]{101, 102, 122}, "7263c9", -1.260437653E9d);
    private static Constructor<StaticLayout> constructor;
    private static boolean initialized;
    private static Object textDirection;
    private int end;
    private boolean isRtl;
    private final TextPaint paint;
    private CharSequence source;
    private final int width;
    private int start = 0;
    private Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
    private int maxLines = Integer.MAX_VALUE;
    private float lineSpacingAdd = 0.0f;
    private float lineSpacingMultiplier = 1.0f;
    private int hyphenationFrequency = DEFAULT_HYPHENATION_FREQUENCY;
    private boolean includePad = true;
    private TextUtils.TruncateAt ellipsize = null;

    static class StaticLayoutBuilderCompatException extends Exception {
        StaticLayoutBuilderCompatException(Throwable th) {
            super(NPStringFog.decode(new byte[]{118, 17, 70, 11, 71, 20, 71, 11, 70, 11, 66, 90, 19, 10, 90, 13, 65, 93, 82, 15, 93, 30, 92, 90, 84, 67, 103, 16, 84, 64, 90, 0, 120, 5, 76, 91, 70, 23, 20}, "3c4d54", true, false) + th.getMessage(), th);
        }
    }

    static {
        DEFAULT_HYPHENATION_FREQUENCY = Build.VERSION.SDK_INT < 23 ? 0 : 1;
    }

    private StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i) {
        this.source = charSequence;
        this.paint = textPaint;
        this.width = i;
        this.end = charSequence.length();
    }

    private void createConstructorWithReflection() throws StaticLayoutBuilderCompatException {
        Class<?> clsLoadClass;
        boolean z = false;
        if (initialized) {
            return;
        }
        try {
            if (this.isRtl && Build.VERSION.SDK_INT >= 23) {
                z = true;
            }
            if (Build.VERSION.SDK_INT >= 18) {
                clsLoadClass = TextDirectionHeuristic.class;
                textDirection = z ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            } else {
                ClassLoader classLoader = StaticLayoutBuilderCompat.class.getClassLoader();
                String str = this.isRtl ? TEXT_DIR_CLASS_RTL : TEXT_DIR_CLASS_LTR;
                clsLoadClass = classLoader.loadClass(TEXT_DIR_CLASS);
                Class<?> clsLoadClass2 = classLoader.loadClass(TEXT_DIRS_CLASS);
                textDirection = clsLoadClass2.getField(str).get(clsLoadClass2);
            }
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, Integer.TYPE, Integer.TYPE, TextPaint.class, Integer.TYPE, Layout.Alignment.class, clsLoadClass, Float.TYPE, Float.TYPE, Boolean.TYPE, TextUtils.TruncateAt.class, Integer.TYPE, Integer.TYPE);
            constructor = declaredConstructor;
            declaredConstructor.setAccessible(true);
            initialized = true;
        } catch (Exception e) {
            throw new StaticLayoutBuilderCompatException(e);
        }
    }

    public static StaticLayoutBuilderCompat obtain(CharSequence charSequence, TextPaint textPaint, int i) {
        return new StaticLayoutBuilderCompat(charSequence, textPaint, i);
    }

    public StaticLayout build() throws StaticLayoutBuilderCompatException {
        if (this.source == null) {
            this.source = "";
        }
        int iMax = Math.max(0, this.width);
        CharSequence charSequenceEllipsize = this.maxLines == 1 ? TextUtils.ellipsize(this.source, this.paint, iMax, this.ellipsize) : this.source;
        this.end = Math.min(charSequenceEllipsize.length(), this.end);
        if (Build.VERSION.SDK_INT < 23) {
            createConstructorWithReflection();
            try {
                return (StaticLayout) ((Constructor) Preconditions.checkNotNull(constructor)).newInstance(charSequenceEllipsize, Integer.valueOf(this.start), Integer.valueOf(this.end), this.paint, Integer.valueOf(iMax), this.alignment, Preconditions.checkNotNull(textDirection), Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.includePad), null, Integer.valueOf(iMax), Integer.valueOf(this.maxLines));
            } catch (Exception e) {
                throw new StaticLayoutBuilderCompatException(e);
            }
        }
        if (this.isRtl && this.maxLines == 1) {
            this.alignment = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, this.start, this.end, this.paint, iMax);
        builderObtain.setAlignment(this.alignment);
        builderObtain.setIncludePad(this.includePad);
        builderObtain.setTextDirection(this.isRtl ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.ellipsize;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.maxLines);
        float f = this.lineSpacingAdd;
        if (f != 0.0f || this.lineSpacingMultiplier != 1.0f) {
            builderObtain.setLineSpacing(f, this.lineSpacingMultiplier);
        }
        if (this.maxLines > 1) {
            builderObtain.setHyphenationFrequency(this.hyphenationFrequency);
        }
        return builderObtain.build();
    }

    public StaticLayoutBuilderCompat setAlignment(Layout.Alignment alignment) {
        this.alignment = alignment;
        return this;
    }

    public StaticLayoutBuilderCompat setEllipsize(TextUtils.TruncateAt truncateAt) {
        this.ellipsize = truncateAt;
        return this;
    }

    public StaticLayoutBuilderCompat setEnd(int i) {
        this.end = i;
        return this;
    }

    public StaticLayoutBuilderCompat setHyphenationFrequency(int i) {
        this.hyphenationFrequency = i;
        return this;
    }

    public StaticLayoutBuilderCompat setIncludePad(boolean z) {
        this.includePad = z;
        return this;
    }

    public StaticLayoutBuilderCompat setIsRtl(boolean z) {
        this.isRtl = z;
        return this;
    }

    public StaticLayoutBuilderCompat setLineSpacing(float f, float f2) {
        this.lineSpacingAdd = f;
        this.lineSpacingMultiplier = f2;
        return this;
    }

    public StaticLayoutBuilderCompat setMaxLines(int i) {
        this.maxLines = i;
        return this;
    }

    public StaticLayoutBuilderCompat setStart(int i) {
        this.start = i;
        return this;
    }
}
