package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
class AppCompatTextViewAutoSizeHelper {
    private static final int DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX = 1;
    private static final int DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP = 112;
    private static final int DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP = 12;
    static final float UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE = -1.0f;
    private static final int VERY_WIDE = 1048576;
    private final Context mContext;
    private final Impl mImpl;
    private TextPaint mTempTextPaint;
    private final TextView mTextView;
    private static final String TAG = NPStringFog.decode(new byte[]{37, 119, 98, 96, 39, 22, 16, 91, 101, 95, 28, 6, 44, 81, 90, 70, 3, 17}, "d466fc", -1.036569375E9d);
    private static final RectF TEMP_RECTF = new RectF();
    private static ConcurrentHashMap<String, Method> sTextViewMethodByNameCache = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, Field> sTextViewFieldByNameCache = new ConcurrentHashMap<>();
    private int mAutoSizeTextType = 0;
    private boolean mNeedsAutoSizeText = false;
    private float mAutoSizeStepGranularityInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
    private float mAutoSizeMinTextSizeInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
    private float mAutoSizeMaxTextSizeInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
    private int[] mAutoSizeTextSizesInPx = new int[0];
    private boolean mHasPresetAutoSizeValues = false;

    private static class Impl {
        Impl() {
        }

        void computeAndSetTextDirection(StaticLayout.Builder builder, TextView textView) {
        }

        boolean isHorizontallyScrollable(TextView textView) {
            return ((Boolean) AppCompatTextViewAutoSizeHelper.invokeAndReturnWithDefault(textView, NPStringFog.decode(new byte[]{3, 1, 16, 43, 13, 22, 13, 30, 11, 13, 22, 5, 8, 8, 29, 48, 1, 22, 11, 8, 8, 10, 12, 3}, "dddcbd", 1.7585197E9f), false)).booleanValue();
        }
    }

    private static class Impl23 extends Impl {
        Impl23() {
        }

        @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl
        void computeAndSetTextDirection(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) AppCompatTextViewAutoSizeHelper.invokeAndReturnWithDefault(textView, NPStringFog.decode(new byte[]{95, 85, 21, 101, 93, 78, 76, 116, 8, 67, 93, 85, 76, 89, 14, 95, 112, 83, 77, 66, 8, 66, 76, 95, 91}, "80a186", false), TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    private static class Impl29 extends Impl23 {
        Impl29() {
        }

        @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl23, androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl
        void computeAndSetTextDirection(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl
        boolean isHorizontallyScrollable(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    AppCompatTextViewAutoSizeHelper(TextView textView) {
        this.mTextView = textView;
        this.mContext = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.mImpl = new Impl29();
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.mImpl = new Impl23();
        } else {
            this.mImpl = new Impl();
        }
    }

    private static <T> T accessAndReturnWithDefault(Object obj, String str, T t) {
        try {
            Field textViewField = getTextViewField(str);
            return textViewField == null ? t : (T) textViewField.get(obj);
        } catch (IllegalAccessException e) {
            Log.w(TAG, NPStringFog.decode(new byte[]{32, 81, 91, 88, 6, 1, 70, 68, 93, 20, 2, 6, 5, 85, 65, 71, 67, 49, 3, 72, 70, 98, 10, 0, 17, 19}, "f024ce", true) + str + NPStringFog.decode(new byte[]{22, 14, 86, 90, 82, 92, 68}, "6c3709", 2.30164717E8d), e);
            return t;
        }
    }

    private int[] cleanupAutoSizePresetSizes(int[] iArr) {
        int length = iArr.length;
        if (length != 0) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            if (length != arrayList.size()) {
                int size = arrayList.size();
                iArr = new int[size];
                for (int i2 = 0; i2 < size; i2++) {
                    iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
                }
            }
        }
        return iArr;
    }

    private void clearAutoSizeConfiguration() {
        this.mAutoSizeTextType = 0;
        this.mAutoSizeMinTextSizeInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
        this.mAutoSizeMaxTextSizeInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
        this.mAutoSizeStepGranularityInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
        this.mAutoSizeTextSizesInPx = new int[0];
        this.mNeedsAutoSizeText = false;
    }

    private StaticLayout createStaticLayoutForMeasuring(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.mTempTextPaint, i);
        StaticLayout.Builder hyphenationFrequency = builderObtain.setAlignment(alignment).setLineSpacing(this.mTextView.getLineSpacingExtra(), this.mTextView.getLineSpacingMultiplier()).setIncludePad(this.mTextView.getIncludeFontPadding()).setBreakStrategy(this.mTextView.getBreakStrategy()).setHyphenationFrequency(this.mTextView.getHyphenationFrequency());
        if (i2 == -1) {
            i2 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i2);
        try {
            this.mImpl.computeAndSetTextDirection(builderObtain, this.mTextView);
        } catch (ClassCastException e) {
            Log.w(TAG, NPStringFog.decode(new byte[]{36, 80, 90, 88, 1, 84, 66, 69, 92, 20, 11, 82, 22, 80, 90, 90, 68, 100, 7, 73, 71, 112, 13, 66, 7, 82, 71, 93, 11, 94, 42, 84, 70, 70, 13, 67, 22, 88, 80, 24, 68, 81, 23, 69, 92, 20, 23, 89, 24, 84, 19, 89, 5, 73, 66, 83, 86, 20, 13, 94, 1, 94, 65, 70, 1, 83, 22}, "b134d0", -2.0093672E9f));
        }
        return builderObtain.build();
    }

    private StaticLayout createStaticLayoutForMeasuringPre16(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.mTempTextPaint, i, alignment, ((Float) accessAndReturnWithDefault(this.mTextView, NPStringFog.decode(new byte[]{92, 106, 65, 88, 91, 91, 95, 94, 124, 76, 84, 70}, "191982", true), Float.valueOf(1.0f))).floatValue(), ((Float) accessAndReturnWithDefault(this.mTextView, NPStringFog.decode(new byte[]{85, 101, 64, 7, 83, 13, 86, 81, 113, 2, 84}, "860f0d", 26974), Float.valueOf(0.0f))).floatValue(), ((Boolean) accessAndReturnWithDefault(this.mTextView, NPStringFog.decode(new byte[]{15, 125, 8, 85, 93, 17, 6, 81, 54, 87, 85}, "b4f61d", -1.9264384E9f), true)).booleanValue());
    }

    private StaticLayout createStaticLayoutForMeasuringPre23(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.mTempTextPaint, i, alignment, this.mTextView.getLineSpacingMultiplier(), this.mTextView.getLineSpacingExtra(), this.mTextView.getIncludeFontPadding());
    }

    private int findLargestTextSizeWhichFits(RectF rectF) {
        int length = this.mAutoSizeTextSizesInPx.length;
        if (length == 0) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{42, 92, 70, 4, 68, 83, 13, 95, 7, 7, 94, 87, 68, 71, 3, 29, 70, 18, 23, 90, 28, 0, 65, 18, 16, 92, 70, 6, 90, 93, 11, 64, 3, 69, 84, 64, 11, 94, 72}, "d3fe22", -1.666194829E9d));
        }
        int i = 0;
        int i2 = 1;
        int i3 = length - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) / 2;
            if (suggestedSizeFitsInSpace(this.mAutoSizeTextSizesInPx[i4], rectF)) {
                int i5 = i4 + 1;
                i = i2;
                i2 = i5;
            } else {
                i = i4 - 1;
                i3 = i;
            }
        }
        return this.mAutoSizeTextSizesInPx[i];
    }

    private static Field getTextViewField(String str) {
        try {
            Field field = sTextViewFieldByNameCache.get(str);
            if (field != null) {
                return field;
            }
            Field declaredField = TextView.class.getDeclaredField(str);
            if (declaredField == null) {
                return declaredField;
            }
            declaredField.setAccessible(true);
            sTextViewFieldByNameCache.put(str, declaredField);
            return declaredField;
        } catch (NoSuchFieldException e) {
            Log.w(TAG, NPStringFog.decode(new byte[]{116, 7, 90, 93, 81, 86, 18, 18, 92, 17, 85, 81, 81, 3, 64, 66, 20, 102, 87, 30, 71, 103, 93, 87, 69, 69}, "2f3142", false, false) + str + NPStringFog.decode(new byte[]{22, 91, 85, 95, 1, 0, 68}, "6602ce", true, false), e);
            return null;
        }
    }

    private static Method getTextViewMethod(String str) {
        try {
            Method method = sTextViewMethodByNameCache.get(str);
            if (method != null) {
                return method;
            }
            Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
            if (declaredMethod == null) {
                return declaredMethod;
            }
            declaredMethod.setAccessible(true);
            sTextViewMethodByNameCache.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            Log.w(TAG, NPStringFog.decode(new byte[]{35, 4, 88, 14, 86, 93, 69, 17, 94, 66, 65, 92, 17, 23, 88, 7, 69, 92, 69, 49, 84, 26, 71, 111, 12, 0, 70, 65}, "ee1b39", 8.226347E8f) + str + NPStringFog.decode(new byte[]{74, 72, 21, 15, 6, 67, 10, 14, 81}, "ba5bc7", -15533), e);
            return null;
        }
    }

    static <T> T invokeAndReturnWithDefault(Object obj, String str, T t) {
        boolean z = false;
        try {
            try {
                t = (T) getTextViewMethod(str).invoke(obj, new Object[0]);
                if (t == null) {
                }
            } catch (Exception e) {
                z = true;
                Log.w(TAG, NPStringFog.decode(new byte[]{36, 85, 15, 13, 3, 93, 66, 64, 9, 65, 15, 87, 20, 91, 13, 4, 70, 109, 7, 76, 18, 55, 15, 92, 21, 23}, "b4faf9", -32007) + str + NPStringFog.decode(new byte[]{28, 77, 65, 12, 84, 16, 92, 11, 5}, "4daa1d", -6.212385E8f), e);
            }
            return t;
        } catch (Throwable th) {
            if (z) {
            }
            throw th;
        }
    }

    private void setRawTextSize(float f) {
        if (f != this.mTextView.getPaint().getTextSize()) {
            this.mTextView.getPaint().setTextSize(f);
            boolean zIsInLayout = Build.VERSION.SDK_INT >= 18 ? this.mTextView.isInLayout() : false;
            if (this.mTextView.getLayout() != null) {
                this.mNeedsAutoSizeText = false;
                try {
                    Method textViewMethod = getTextViewMethod(NPStringFog.decode(new byte[]{12, 77, 9, 85, 116, 85, 27, 87, 16, 77, 75}, "b8e984", true, false));
                    if (textViewMethod != null) {
                        textViewMethod.invoke(this.mTextView, new Object[0]);
                    }
                } catch (Exception e) {
                    Log.w(TAG, NPStringFog.decode(new byte[]{119, 87, 13, 9, 82, 84, 17, 66, 11, 69, 94, 94, 71, 89, 15, 0, 23, 100, 84, 78, 16, 51, 94, 85, 70, 21, 10, 16, 91, 92, 125, 87, 29, 10, 66, 68, 66, 30, 77, 69, 90, 85, 69, 94, 11, 1}, "16de70", false, false), e);
                }
                if (zIsInLayout) {
                    this.mTextView.forceLayout();
                } else {
                    this.mTextView.requestLayout();
                }
                this.mTextView.invalidate();
            }
        }
    }

    private boolean setupAutoSizeText() {
        if (supportsAutoSizeText() && this.mAutoSizeTextType == 1) {
            if (!this.mHasPresetAutoSizeValues || this.mAutoSizeTextSizesInPx.length == 0) {
                int iFloor = ((int) Math.floor((this.mAutoSizeMaxTextSizeInPx - this.mAutoSizeMinTextSizeInPx) / this.mAutoSizeStepGranularityInPx)) + 1;
                int[] iArr = new int[iFloor];
                for (int i = 0; i < iFloor; i++) {
                    iArr[i] = Math.round(this.mAutoSizeMinTextSizeInPx + (i * this.mAutoSizeStepGranularityInPx));
                }
                this.mAutoSizeTextSizesInPx = cleanupAutoSizePresetSizes(iArr);
            }
            this.mNeedsAutoSizeText = true;
        } else {
            this.mNeedsAutoSizeText = false;
        }
        return this.mNeedsAutoSizeText;
    }

    private void setupAutoSizeUniformPresetSizes(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.mAutoSizeTextSizesInPx = cleanupAutoSizePresetSizes(iArr);
            setupAutoSizeUniformPresetSizesConfiguration();
        }
    }

    private boolean setupAutoSizeUniformPresetSizesConfiguration() {
        boolean z = this.mAutoSizeTextSizesInPx.length > 0;
        this.mHasPresetAutoSizeValues = z;
        if (z) {
            this.mAutoSizeTextType = 1;
            this.mAutoSizeMinTextSizeInPx = r3[0];
            this.mAutoSizeMaxTextSizeInPx = r3[r4 - 1];
            this.mAutoSizeStepGranularityInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
        }
        return z;
    }

    private boolean suggestedSizeFitsInSpace(int i, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.mTextView.getText();
        TransformationMethod transformationMethod = this.mTextView.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.mTextView)) != null) {
            text = transformation;
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.mTextView.getMaxLines() : -1;
        initTempTextPaint(i);
        StaticLayout staticLayoutCreateLayout = createLayout(text, (Layout.Alignment) invokeAndReturnWithDefault(this.mTextView, NPStringFog.decode(new byte[]{80, 92, 69, 125, 2, 74, 88, 76, 69, 112, 15, 90, 80, 87, 92, 84, 13, 71}, "7911c3", 6.3049088E7d), Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        if (maxLines == -1 || (staticLayoutCreateLayout.getLineCount() <= maxLines && staticLayoutCreateLayout.getLineEnd(staticLayoutCreateLayout.getLineCount() - 1) == text.length())) {
            return ((float) staticLayoutCreateLayout.getHeight()) <= rectF.bottom;
        }
        return false;
    }

    private boolean supportsAutoSizeText() {
        return !(this.mTextView instanceof AppCompatEditText);
    }

    private void validateAndSetAutoSizeTextTypeUniformConfiguration(float f, float f2, float f3) throws IllegalArgumentException {
        if (f <= 0.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{41, 95, 87, 10, 89, 65, 9, 22, 88, 22, 64, 91, 73, 69, 80, 25, 81, 20, 16, 83, 65, 23, 20, 71, 13, 76, 92, 67, 28}, "d69c44", 6.278523E8f) + f + NPStringFog.decode(new byte[]{18, 28, 17, 24, 95, 67, 66, 8, 93, 75, 69, 16, 13, 22, 24, 93, 71, 69, 3, 8, 24, 76, 89, 16, 74, 84, 72, 64, 31}, "bd8860", false, true));
        }
        if (f2 <= f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{46, 81, 27, 91, 94, 67, 14, 16, 2, 71, 71, 89, 78, 67, 10, 72, 86, 22, 23, 85, 27, 70, 19, 69, 10, 74, 6, 18, 27}, "c0c236", false) + f2 + NPStringFog.decode(new byte[]{21, 77, 17, 25, 11, 64, 69, 89, 93, 74, 17, 19, 10, 71, 24, 92, 19, 70, 4, 89, 24, 77, 13, 19, 8, 92, 86, 80, 15, 70, 8, 21, 89, 76, 22, 92, 72, 70, 81, 67, 7, 19, 17, 80, 64, 77, 66, 64, 12, 79, 93, 25, 74}, "e589b3", -1.939742251E9d) + f + NPStringFog.decode(new byte[]{19, 73, 16}, "c1983c", -4.78888451E8d));
        }
        if (f3 <= 0.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{102, 14, 7, 17, 88, 71, 70, 9, 79, 66, 80, 72, 87, 70, 17, 69, 92, 66, 18, 1, 16, 80, 87, 71, 94, 7, 16, 88, 77, 75, 18, 78}, "2fb192", false, true) + f3 + NPStringFog.decode(new byte[]{18, 30, 76, 19, 90, 65, 66, 10, 0, 64, 64, 18, 13, 20, 69, 86, 66, 71, 3, 10, 69, 71, 92, 18, 74, 86, 21, 75, 26}, "bfe332", -6.4315883E7d));
        }
        this.mAutoSizeTextType = 1;
        this.mAutoSizeMinTextSizeInPx = f;
        this.mAutoSizeMaxTextSizeInPx = f2;
        this.mAutoSizeStepGranularityInPx = f3;
        this.mHasPresetAutoSizeValues = false;
    }

    void autoSizeText() {
        if (isAutoSizeEnabled()) {
            if (this.mNeedsAutoSizeText) {
                if (this.mTextView.getMeasuredHeight() <= 0 || this.mTextView.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.mImpl.isHorizontallyScrollable(this.mTextView) ? 1048576 : (this.mTextView.getMeasuredWidth() - this.mTextView.getTotalPaddingLeft()) - this.mTextView.getTotalPaddingRight();
                int height = (this.mTextView.getHeight() - this.mTextView.getCompoundPaddingBottom()) - this.mTextView.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = TEMP_RECTF;
                synchronized (rectF) {
                    rectF.setEmpty();
                    rectF.right = measuredWidth;
                    rectF.bottom = height;
                    float fFindLargestTextSizeWhichFits = findLargestTextSizeWhichFits(rectF);
                    if (fFindLargestTextSizeWhichFits != this.mTextView.getTextSize()) {
                        setTextSizeInternal(0, fFindLargestTextSizeWhichFits);
                    }
                }
            }
            this.mNeedsAutoSizeText = true;
        }
    }

    StaticLayout createLayout(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        return Build.VERSION.SDK_INT >= 23 ? createStaticLayoutForMeasuring(charSequence, alignment, i, i2) : Build.VERSION.SDK_INT >= 16 ? createStaticLayoutForMeasuringPre23(charSequence, alignment, i) : createStaticLayoutForMeasuringPre16(charSequence, alignment, i);
    }

    int getAutoSizeMaxTextSize() {
        return Math.round(this.mAutoSizeMaxTextSizeInPx);
    }

    int getAutoSizeMinTextSize() {
        return Math.round(this.mAutoSizeMinTextSizeInPx);
    }

    int getAutoSizeStepGranularity() {
        return Math.round(this.mAutoSizeStepGranularityInPx);
    }

    int[] getAutoSizeTextAvailableSizes() {
        return this.mAutoSizeTextSizesInPx;
    }

    int getAutoSizeTextType() {
        return this.mAutoSizeTextType;
    }

    void initTempTextPaint(int i) {
        TextPaint textPaint = this.mTempTextPaint;
        if (textPaint == null) {
            this.mTempTextPaint = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.mTempTextPaint.set(this.mTextView.getPaint());
        this.mTempTextPaint.setTextSize(i);
    }

    boolean isAutoSizeEnabled() {
        return supportsAutoSizeText() && this.mAutoSizeTextType != 0;
    }

    void loadFromAttributes(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i, 0);
        TextView textView = this.mTextView;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), R.styleable.AppCompatTextView, attributeSet, typedArrayObtainStyledAttributes, i, 0);
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizeTextType)) {
            this.mAutoSizeTextType = typedArrayObtainStyledAttributes.getInt(R.styleable.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = typedArrayObtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizeStepGranularity) ? typedArrayObtainStyledAttributes.getDimension(R.styleable.AppCompatTextView_autoSizeStepGranularity, UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizeMinTextSize) ? typedArrayObtainStyledAttributes.getDimension(R.styleable.AppCompatTextView_autoSizeMinTextSize, UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizeMaxTextSize) ? typedArrayObtainStyledAttributes.getDimension(R.styleable.AppCompatTextView_autoSizeMaxTextSize, UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE) : -1.0f;
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizePresetSizes) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            setupAutoSizeUniformPresetSizes(typedArrayObtainTypedArray);
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!supportsAutoSizeText()) {
            this.mAutoSizeTextType = 0;
            return;
        }
        if (this.mAutoSizeTextType == 1) {
            if (!this.mHasPresetAutoSizeValues) {
                DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
                if (dimension2 == UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE) {
                    dimension = 1.0f;
                }
                validateAndSetAutoSizeTextTypeUniformConfiguration(dimension2, dimension3, dimension);
            }
            setupAutoSizeText();
        }
    }

    void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (supportsAutoSizeText()) {
            DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
            validateAndSetAutoSizeTextTypeUniformConfiguration(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (setupAutoSizeText()) {
                autoSizeText();
            }
        }
    }

    void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (supportsAutoSizeText()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArrCopyOf[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                this.mAutoSizeTextSizesInPx = cleanupAutoSizePresetSizes(iArrCopyOf);
                if (!setupAutoSizeUniformPresetSizesConfiguration()) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{120, 89, 11, 85, 25, 13, 80, 22, 17, 88, 92, 66, 70, 68, 0, 67, 92, 22, 22, 69, 12, 74, 92, 17, 22, 95, 22, 16, 79, 3, 90, 95, 1, 10, 25}, "66e09b", 31023) + Arrays.toString(iArr));
                }
            } else {
                this.mHasPresetAutoSizeValues = false;
            }
            if (setupAutoSizeText()) {
                autoSizeText();
            }
        }
    }

    void setAutoSizeTextTypeWithDefaults(int i) {
        if (supportsAutoSizeText()) {
            switch (i) {
                case 0:
                    clearAutoSizeConfiguration();
                    return;
                case 1:
                    DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
                    validateAndSetAutoSizeTextTypeUniformConfiguration(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (setupAutoSizeText()) {
                        autoSizeText();
                        return;
                    }
                    return;
                default:
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{96, 91, 9, 90, 86, 65, 91, 21, 3, 65, 77, 89, 24, 70, 11, 78, 92, 22, 65, 80, 26, 64, 25, 66, 76, 69, 7, 14, 25}, "55b496", -2.0599931E9f) + i);
            }
        }
    }

    void setTextSizeInternal(int i, float f) {
        Context context = this.mContext;
        setRawTextSize(TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }
}
