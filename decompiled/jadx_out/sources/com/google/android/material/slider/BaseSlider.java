package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewOverlayImpl;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.slider.BaseOnChangeListener;
import com.google.android.material.slider.BaseOnSliderTouchListener;
import com.google.android.material.slider.BaseSlider;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.google.android.material.tooltip.TooltipDrawable;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends BaseOnChangeListener<S>, T extends BaseOnSliderTouchListener<S>> extends View {
    private static final int HALO_ALPHA = 63;
    private static final long LABEL_ANIMATION_ENTER_DURATION = 83;
    private static final long LABEL_ANIMATION_EXIT_DURATION = 117;
    private static final double THRESHOLD = 1.0E-4d;
    private static final int TIMEOUT_SEND_ACCESSIBILITY_EVENT = 200;
    static final int UNIT_PX = 0;
    static final int UNIT_VALUE = 1;
    private BaseSlider<S, L, T>.AccessibilityEventSender accessibilityEventSender;
    private final AccessibilityHelper accessibilityHelper;
    private final AccessibilityManager accessibilityManager;
    private int activeThumbIdx;
    private final Paint activeTicksPaint;
    private final Paint activeTrackPaint;
    private final List<L> changeListeners;
    private Drawable customThumbDrawable;
    private List<Drawable> customThumbDrawablesForValues;
    private final MaterialShapeDrawable defaultThumbDrawable;
    private int defaultThumbRadius;
    private boolean dirtyConfig;
    private int focusedThumbIdx;
    private boolean forceDrawCompatHalo;
    private LabelFormatter formatter;
    private ColorStateList haloColor;
    private final Paint haloPaint;
    private int haloRadius;
    private final Paint inactiveTicksPaint;
    private final Paint inactiveTrackPaint;
    private boolean isLongPress;
    private int labelBehavior;
    private final TooltipDrawableFactory labelMaker;
    private int labelPadding;
    private final List<TooltipDrawable> labels;
    private boolean labelsAreAnimatedIn;
    private ValueAnimator labelsInAnimator;
    private ValueAnimator labelsOutAnimator;
    private MotionEvent lastEvent;
    private int minTrackSidePadding;
    private final int scaledTouchSlop;
    private int separationUnit;
    private float stepSize;
    private boolean thumbIsPressed;
    private final Paint thumbPaint;
    private int thumbRadius;
    private ColorStateList tickColorActive;
    private ColorStateList tickColorInactive;
    private boolean tickVisible;
    private float[] ticksCoordinates;
    private float touchDownX;
    private final List<T> touchListeners;
    private float touchPosition;
    private ColorStateList trackColorActive;
    private ColorStateList trackColorInactive;
    private int trackHeight;
    private int trackSidePadding;
    private int trackTop;
    private int trackWidth;
    private float valueFrom;
    private float valueTo;
    private ArrayList<Float> values;
    private int widgetHeight;
    private static final String EXCEPTION_ILLEGAL_DISCRETE_VALUE = NPStringFog.decode(new byte[]{48, 4, 8, 71, 86, 27, 67, 22, 77, 18, 94, 70, 21, 17, 68, 80, 86, 19, 3, 20, 17, 83, 95, 19, 18, 10, 68, 68, 82, 95, 19, 0, 34, 64, 92, 94, 78, 64, 23, 27, 19, 67, 10, 16, 23, 18, 82, 19, 11, 16, 8, 70, 90, 67, 10, 0, 68, 93, 85, 19, 21, 17, 1, 66, 96, 90, 28, 0, 76, 23, 64, 26, 70, 18, 12, 87, 93, 19, 19, 22, 13, 92, 84, 19, 21, 17, 1, 66, 96, 90, 28, 0, 76, 23, 64, 26}, "fed233", -1644018765L);
    private static final String EXCEPTION_ILLEGAL_MIN_SEPARATION = NPStringFog.decode(new byte[]{14, 88, 94, 99, 85, 21, 2, 67, 81, 68, 89, 10, 13, 25, 21, 67, 25, 69, 14, 68, 67, 68, 16, 7, 6, 17, 87, 66, 85, 4, 23, 84, 66, 16, 95, 23, 67, 84, 65, 69, 81, 9, 67, 69, 95, 16, 0}, "c1000e", 1352905806L);
    private static final String EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE = NPStringFog.decode(new byte[]{85, 15, 88, 49, 84, 20, 89, 20, 87, 22, 88, 11, 86, 78, 19, 17, 24, 68, 85, 19, 69, 22, 17, 6, 93, 70, 81, 16, 84, 5, 76, 3, 68, 66, 94, 22, 24, 3, 71, 23, 80, 8, 24, 7, 88, 6, 17, 5, 24, 11, 67, 14, 69, 13, 72, 10, 83, 66, 94, 2, 24, 21, 66, 7, 65, 55, 81, 28, 83, 74, 20, 23, 17, 70, 65, 10, 84, 10, 24, 19, 69, 11, 95, 3, 24, 21, 66, 7, 65, 55, 81, 28, 83, 74, 20, 23, 17}, "8f6b1d", false, false);
    private static final String EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE_UNIT = NPStringFog.decode(new byte[]{94, 91, 95, 96, 83, 69, 82, 64, 80, 71, 95, 90, 93, 26, 20, 64, 31, 21, 80, 83, 95, 93, 89, 65, 19, 80, 84, 19, 69, 80, 71, 18, 80, 64, 22, 84, 19, 86, 88, 94, 83, 91, 64, 91, 94, 93, 22, 66, 91, 87, 95, 19, 67, 70, 90, 92, 86, 19, 69, 65, 86, 66, 98, 90, 76, 80, 27, 23, 66, 26}, "321365", true, false);
    private static final String EXCEPTION_ILLEGAL_STEP_SIZE = NPStringFog.decode(new byte[]{99, 14, 82, 21, 65, 65, 82, 22, 100, 92, 72, 80, 31, 67, 68, 28, 18, 88, 66, 21, 67, 21, 80, 80, 23, 86, 27, 21, 93, 71, 23, 7, 23, 83, 83, 86, 67, 9, 69, 21, 93, 83, 23, 18, 95, 80, 18, 67, 86, 10, 66, 80, 116, 71, 88, 11, 31, 16, 65, 28, 26, 16, 86, 89, 71, 80, 99, 9, 31, 16, 65, 28, 23, 20, 86, 91, 85, 80}, "7f7525", false);
    private static final String EXCEPTION_ILLEGAL_VALUE = NPStringFog.decode(new byte[]{99, 8, 8, 80, 3, 64, 16, 18, 0, 88, 19, 87, 24, 65, 18, 29, 70, 95, 69, 23, 21, 20, 4, 87, 16, 3, 19, 81, 7, 70, 85, 22, 65, 91, 20, 18, 85, 21, 20, 85, 10, 18, 68, 11, 65, 66, 7, 94, 69, 1, 39, 70, 9, 95, 24, 65, 18, 29, 74, 18, 81, 10, 5, 20, 10, 93, 71, 1, 19, 20, 9, 64, 16, 1, 16, 65, 7, 94, 16, 16, 14, 20, 16, 83, 92, 17, 4, 96, 9, 26, 21, 23, 72}, "0da4f2", false);
    private static final String EXCEPTION_ILLEGAL_VALUE_FROM = NPStringFog.decode(new byte[]{16, 86, 88, 67, 84, 35, 20, 88, 89, 30, 20, 22, 79, 23, 89, 67, 66, 17, 70, 85, 81, 22, 66, 8, 7, 91, 88, 83, 67, 69, 18, 95, 85, 88, 17, 19, 7, 91, 65, 83, 101, 10, 78, 18, 71, 31}, "f7461e", false, false);
    private static final String EXCEPTION_ILLEGAL_VALUE_TO = NPStringFog.decode(new byte[]{67, 7, 92, 70, 83, 101, 90, 78, 21, 64, 31, 17, 88, 19, 67, 71, 22, 83, 80, 70, 87, 65, 83, 80, 65, 3, 66, 19, 66, 89, 84, 8, 16, 69, 87, 93, 64, 3, 118, 65, 89, 92, 29, 67, 67, 26}, "5f0361", -614028304L);
    private static final String WARNING_FLOATING_POINT_ERROR = NPStringFog.decode(new byte[]{35, 95, 14, 0, 16, 89, 11, 84, 65, 17, 11, 89, 11, 71, 65, 23, 5, 92, 16, 86, 65, 20, 23, 85, 1, 19, 7, 14, 22, 16, 64, 64, 73, 68, 23, 25, 75, 19, 52, 18, 13, 94, 2, 19, 7, 13, 11, 81, 17, 64, 65, 2, 5, 94, 69, 91, 0, 23, 1, 16, 23, 92, 20, 15, 0, 89, 11, 84, 65, 4, 22, 66, 10, 65, 18, 65, 19, 88, 12, 80, 9, 65, 9, 81, 28, 19, 19, 4, 23, 69, 9, 71, 65, 8, 10, 16, 12, 93, 2, 14, 22, 66, 0, 80, 21, 65, 18, 81, 9, 70, 4, 18, 74, 16, 44, 93, 18, 21, 1, 81, 1, 31, 65, 2, 11, 94, 22, 90, 5, 4, 22, 16, 16, 64, 8, 15, 3, 16, 12, 93, 21, 4, 3, 85, 23, 64, 65, 22, 13, 68, 13, 19, 0, 65, 7, 69, 22, 71, 14, 12, 68, 124, 4, 81, 4, 13, 34, 95, 23, 94, 0, 21, 16, 85, 23, 19, 21, 14, 68, 84, 12, 64, 17, 13, 5, 73, 69, 71, 9, 4, 68, 70, 4, 95, 20, 4, 68, 83, 10, 65, 19, 4, 7, 68, 9, 74, 79}, "e3aad0", -1.3541997E9f);
    private static final String TAG = BaseSlider.class.getSimpleName();
    static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_Slider;

    private class AccessibilityEventSender implements Runnable {
        final BaseSlider this$0;
        int virtualViewId;

        private AccessibilityEventSender(BaseSlider baseSlider) {
            this.this$0 = baseSlider;
            this.virtualViewId = -1;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.accessibilityHelper.sendEventForVirtualView(this.virtualViewId, 4);
        }

        void setVirtualViewId(int i) {
            this.virtualViewId = i;
        }
    }

    private static class AccessibilityHelper extends ExploreByTouchHelper {
        private final BaseSlider<?, ?, ?> slider;
        final Rect virtualViewBounds;

        AccessibilityHelper(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.virtualViewBounds = new Rect();
            this.slider = baseSlider;
        }

        private String startOrEndDescription(int i) {
            return i == this.slider.getValues().size() + (-1) ? this.slider.getContext().getString(R.string.material_slider_range_end) : i == 0 ? this.slider.getContext().getString(R.string.material_slider_range_start) : "";
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected int getVirtualViewAt(float f, float f2) {
            for (int i = 0; i < this.slider.getValues().size(); i++) {
                this.slider.updateBoundsForVirturalViewId(i, this.virtualViewBounds);
                if (this.virtualViewBounds.contains((int) f, (int) f2)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void getVisibleVirtualViews(List<Integer> list) {
            for (int i = 0; i < this.slider.getValues().size(); i++) {
                list.add(Integer.valueOf(i));
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (!this.slider.isEnabled()) {
                return false;
            }
            switch (i2) {
                case 4096:
                case 8192:
                    float fCalculateStepIncrement = this.slider.calculateStepIncrement(20);
                    if (i2 == 8192) {
                        fCalculateStepIncrement = -fCalculateStepIncrement;
                    }
                    if (this.slider.snapThumbToValue(i, MathUtils.clamp(this.slider.getValues().get(i).floatValue() + (this.slider.isRtl() ? -fCalculateStepIncrement : fCalculateStepIncrement), this.slider.getValueFrom(), this.slider.getValueTo()))) {
                        this.slider.updateHaloHotspot();
                        this.slider.postInvalidate();
                        invalidateVirtualView(i);
                    }
                    break;
                case android.R.id.accessibilityActionSetProgress:
                    if (bundle != null && bundle.containsKey(NPStringFog.decode(new byte[]{7, 93, 83, 74, 93, 10, 2, 29, 65, 81, 87, 20, 72, 82, 84, 91, 87, 16, 21, 90, 85, 81, 94, 10, 18, 74, 25, 89, 81, 23, 15, 92, 89, 22, 115, 49, 33, 102, 122, 125, 124, 55, 57, 99, 101, 119, 117, 49, 35, 96, 100, 103, 100, 34, 42, 102, 114}, "f3782c", -9.24008115E8d))) {
                        if (this.slider.snapThumbToValue(i, bundle.getFloat(NPStringFog.decode(new byte[]{80, 94, 82, 16, 95, 88, 85, 30, 64, 11, 85, 70, 31, 81, 85, 1, 85, 66, 66, 89, 84, 11, 92, 88, 69, 73, 24, 3, 83, 69, 88, 95, 88, 76, 113, 99, 118, 101, 123, 39, 126, 101, 110, 96, 100, 45, 119, 99, 116, 99, 101, 61, 102, 112, 125, 101, 115}, "106b01", -878620824L)))) {
                            this.slider.updateHaloHotspot();
                            this.slider.postInvalidate();
                            invalidateVirtualView(i);
                        }
                    }
                    break;
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
            List<Float> values = this.slider.getValues();
            float fFloatValue = values.get(i).floatValue();
            float valueFrom = this.slider.getValueFrom();
            float valueTo = this.slider.getValueTo();
            if (this.slider.isEnabled()) {
                if (fFloatValue > valueFrom) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
                if (fFloatValue < valueTo) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
            }
            accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, valueFrom, valueTo, fFloatValue));
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (this.slider.getContentDescription() != null) {
                sb.append(this.slider.getContentDescription()).append(NPStringFog.decode(new byte[]{78}, "b239bf", -757241807L));
            }
            if (values.size() > 1) {
                sb.append(startOrEndDescription(i));
                sb.append(this.slider.formatValue(fFloatValue));
            }
            accessibilityNodeInfoCompat.setContentDescription(sb.toString());
            this.slider.updateBoundsForVirturalViewId(i, this.virtualViewBounds);
            accessibilityNodeInfoCompat.setBoundsInParent(this.virtualViewBounds);
        }
    }

    static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new Parcelable.Creator<SliderState>() { // from class: com.google.android.material.slider.BaseSlider.SliderState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SliderState createFromParcel(Parcel parcel) {
                return new SliderState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SliderState[] newArray(int i) {
                return new SliderState[i];
            }
        };
        boolean hasFocus;
        float stepSize;
        float valueFrom;
        float valueTo;
        ArrayList<Float> values;

        private SliderState(Parcel parcel) {
            super(parcel);
            this.valueFrom = parcel.readFloat();
            this.valueTo = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.values = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.stepSize = parcel.readFloat();
            this.hasFocus = parcel.createBooleanArray()[0];
        }

        SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.valueFrom);
            parcel.writeFloat(this.valueTo);
            parcel.writeList(this.values);
            parcel.writeFloat(this.stepSize);
            parcel.writeBooleanArray(new boolean[]{this.hasFocus});
        }
    }

    private interface TooltipDrawableFactory {
        TooltipDrawable createTooltipDrawable();
    }

    public BaseSlider(Context context) {
        this(context, null);
    }

    public BaseSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    public BaseSlider(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, DEF_STYLE_RES), attributeSet, i);
        this.labels = new ArrayList();
        this.changeListeners = new ArrayList();
        this.touchListeners = new ArrayList();
        this.labelsAreAnimatedIn = false;
        this.thumbIsPressed = false;
        this.values = new ArrayList<>();
        this.activeThumbIdx = -1;
        this.focusedThumbIdx = -1;
        this.stepSize = 0.0f;
        this.tickVisible = true;
        this.isLongPress = false;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.defaultThumbDrawable = materialShapeDrawable;
        this.customThumbDrawablesForValues = Collections.emptyList();
        this.separationUnit = 0;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.inactiveTrackPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        Paint paint2 = new Paint();
        this.activeTrackPaint = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        Paint paint3 = new Paint(1);
        this.thumbPaint = paint3;
        paint3.setStyle(Paint.Style.FILL);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint4 = new Paint(1);
        this.haloPaint = paint4;
        paint4.setStyle(Paint.Style.FILL);
        Paint paint5 = new Paint();
        this.inactiveTicksPaint = paint5;
        paint5.setStyle(Paint.Style.STROKE);
        paint5.setStrokeCap(Paint.Cap.ROUND);
        Paint paint6 = new Paint();
        this.activeTicksPaint = paint6;
        paint6.setStyle(Paint.Style.STROKE);
        paint6.setStrokeCap(Paint.Cap.ROUND);
        loadResources(context2.getResources());
        this.labelMaker = new TooltipDrawableFactory(this, attributeSet, i) { // from class: com.google.android.material.slider.BaseSlider.1
            final BaseSlider this$0;
            final AttributeSet val$attrs;
            final int val$defStyleAttr;

            {
                this.this$0 = this;
                this.val$attrs = attributeSet;
                this.val$defStyleAttr = i;
            }

            @Override // com.google.android.material.slider.BaseSlider.TooltipDrawableFactory
            public TooltipDrawable createTooltipDrawable() {
                TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(this.this$0.getContext(), this.val$attrs, R.styleable.Slider, this.val$defStyleAttr, BaseSlider.DEF_STYLE_RES, new int[0]);
                TooltipDrawable labelDrawable = BaseSlider.parseLabelDrawable(this.this$0.getContext(), typedArrayObtainStyledAttributes);
                typedArrayObtainStyledAttributes.recycle();
                return labelDrawable;
            }
        };
        processAttributes(context2, attributeSet, i);
        setFocusable(true);
        setClickable(true);
        materialShapeDrawable.setShadowCompatibilityMode(2);
        this.scaledTouchSlop = ViewConfiguration.get(context2).getScaledTouchSlop();
        AccessibilityHelper accessibilityHelper = new AccessibilityHelper(this);
        this.accessibilityHelper = accessibilityHelper;
        ViewCompat.setAccessibilityDelegate(this, accessibilityHelper);
        this.accessibilityManager = (AccessibilityManager) getContext().getSystemService(NPStringFog.decode(new byte[]{85, 83, 81, 82, 69, 69, 93, 82, 91, 91, 95, 66, 77}, "402766", -1.156492926E9d));
    }

    private void adjustCustomThumbDrawableBounds(Drawable drawable) {
        int i = this.thumbRadius * 2;
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, i, i);
        } else {
            float fMax = i / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * fMax), (int) (fMax * intrinsicHeight));
        }
    }

    private void attachLabelToContentView(TooltipDrawable tooltipDrawable) {
        tooltipDrawable.setRelativeToView(ViewUtils.getContentView(this));
    }

    private Float calculateIncrementForKey(int i) {
        float fCalculateStepIncrement = this.isLongPress ? calculateStepIncrement(20) : calculateStepIncrement();
        switch (i) {
            case 21:
                if (!isRtl()) {
                    fCalculateStepIncrement = -fCalculateStepIncrement;
                }
                return Float.valueOf(fCalculateStepIncrement);
            case 22:
                if (isRtl()) {
                    fCalculateStepIncrement = -fCalculateStepIncrement;
                }
                return Float.valueOf(fCalculateStepIncrement);
            case 69:
                return Float.valueOf(-fCalculateStepIncrement);
            case 70:
            case 81:
                return Float.valueOf(fCalculateStepIncrement);
            default:
                return null;
        }
    }

    private float calculateStepIncrement() {
        float f = this.stepSize;
        if (f == 0.0f) {
            return 1.0f;
        }
        return f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float calculateStepIncrement(int i) {
        float fCalculateStepIncrement = calculateStepIncrement();
        return (this.valueTo - this.valueFrom) / fCalculateStepIncrement <= ((float) i) ? fCalculateStepIncrement : fCalculateStepIncrement * Math.round(r1 / i);
    }

    private int calculateTop() {
        return ((this.labelBehavior == 1 || shouldAlwaysShowLabel()) ? this.labels.get(0).getIntrinsicHeight() : 0) + this.trackTop;
    }

    private ValueAnimator createLabelAnimator(boolean z) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(getAnimatorCurrentValueOrDefault(z ? this.labelsOutAnimator : this.labelsInAnimator, z ? 0.0f : 1.0f), z ? 1.0f : 0.0f);
        valueAnimatorOfFloat.setDuration(z ? LABEL_ANIMATION_ENTER_DURATION : LABEL_ANIMATION_EXIT_DURATION);
        valueAnimatorOfFloat.setInterpolator(z ? AnimationUtils.DECELERATE_INTERPOLATOR : AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.google.android.material.slider.BaseSlider.2
            final BaseSlider this$0;

            {
                this.this$0 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                Iterator it = this.this$0.labels.iterator();
                while (it.hasNext()) {
                    ((TooltipDrawable) it.next()).setRevealFraction(fFloatValue);
                }
                ViewCompat.postInvalidateOnAnimation(this.this$0);
            }
        });
        return valueAnimatorOfFloat;
    }

    private void createLabelPool() {
        if (this.labels.size() > this.values.size()) {
            List<TooltipDrawable> listSubList = this.labels.subList(this.values.size(), this.labels.size());
            for (TooltipDrawable tooltipDrawable : listSubList) {
                if (ViewCompat.isAttachedToWindow(this)) {
                    detachLabelFromContentView(tooltipDrawable);
                }
            }
            listSubList.clear();
        }
        while (this.labels.size() < this.values.size()) {
            TooltipDrawable tooltipDrawableCreateTooltipDrawable = this.labelMaker.createTooltipDrawable();
            this.labels.add(tooltipDrawableCreateTooltipDrawable);
            if (ViewCompat.isAttachedToWindow(this)) {
                attachLabelToContentView(tooltipDrawableCreateTooltipDrawable);
            }
        }
        int i = this.labels.size() == 1 ? 0 : 1;
        Iterator<TooltipDrawable> it = this.labels.iterator();
        while (it.hasNext()) {
            it.next().setStrokeWidth(i);
        }
    }

    private void detachLabelFromContentView(TooltipDrawable tooltipDrawable) {
        ViewOverlayImpl contentViewOverlay = ViewUtils.getContentViewOverlay(this);
        if (contentViewOverlay != null) {
            contentViewOverlay.remove(tooltipDrawable);
            tooltipDrawable.detachView(ViewUtils.getContentView(this));
        }
    }

    private float dimenToValue(float f) {
        if (f == 0.0f) {
            return 0.0f;
        }
        float f2 = (f - this.trackSidePadding) / this.trackWidth;
        float f3 = this.valueFrom;
        return (f2 * (f3 - this.valueTo)) + f3;
    }

    private void dispatchOnChangedFromUser(int i) {
        Iterator<L> it = this.changeListeners.iterator();
        while (it.hasNext()) {
            it.next().onValueChange(this, this.values.get(i).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        scheduleAccessibilityEventSender(i);
    }

    private void dispatchOnChangedProgrammatically() {
        for (L l : this.changeListeners) {
            Iterator<Float> it = this.values.iterator();
            while (it.hasNext()) {
                l.onValueChange(this, it.next().floatValue(), false);
            }
        }
    }

    private void drawActiveTrack(Canvas canvas, int i, int i2) {
        float[] activeRange = getActiveRange();
        int i3 = this.trackSidePadding;
        canvas.drawLine(i3 + (activeRange[0] * i), i2, i3 + (activeRange[1] * i), i2, this.activeTrackPaint);
    }

    private void drawInactiveTrack(Canvas canvas, int i, int i2) {
        float[] activeRange = getActiveRange();
        float f = this.trackSidePadding + (activeRange[1] * i);
        if (f < r0 + i) {
            canvas.drawLine(f, i2, r0 + i, i2, this.inactiveTrackPaint);
        }
        int i3 = this.trackSidePadding;
        float f2 = i3 + (activeRange[0] * i);
        if (f2 > i3) {
            canvas.drawLine(i3, i2, f2, i2, this.inactiveTrackPaint);
        }
    }

    private void drawThumbDrawable(Canvas canvas, int i, int i2, float f, Drawable drawable) {
        canvas.save();
        canvas.translate((this.trackSidePadding + ((int) (normalizeValue(f) * i))) - (drawable.getBounds().width() / 2.0f), i2 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    private void drawThumbs(Canvas canvas, int i, int i2) {
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= this.values.size()) {
                return;
            }
            float fFloatValue = this.values.get(i4).floatValue();
            Drawable drawable = this.customThumbDrawable;
            if (drawable != null) {
                drawThumbDrawable(canvas, i, i2, fFloatValue, drawable);
            } else if (i4 < this.customThumbDrawablesForValues.size()) {
                drawThumbDrawable(canvas, i, i2, fFloatValue, this.customThumbDrawablesForValues.get(i4));
            } else {
                if (!isEnabled()) {
                    canvas.drawCircle(this.trackSidePadding + (normalizeValue(fFloatValue) * i), i2, this.thumbRadius, this.thumbPaint);
                }
                drawThumbDrawable(canvas, i, i2, fFloatValue, this.defaultThumbDrawable);
            }
            i3 = i4 + 1;
        }
    }

    private void ensureLabelsAdded() {
        if (this.labelBehavior == 2) {
            return;
        }
        if (!this.labelsAreAnimatedIn) {
            this.labelsAreAnimatedIn = true;
            ValueAnimator valueAnimatorCreateLabelAnimator = createLabelAnimator(true);
            this.labelsInAnimator = valueAnimatorCreateLabelAnimator;
            this.labelsOutAnimator = null;
            valueAnimatorCreateLabelAnimator.start();
        }
        Iterator<TooltipDrawable> it = this.labels.iterator();
        for (int i = 0; i < this.values.size() && it.hasNext(); i++) {
            if (i != this.focusedThumbIdx) {
                setValueForLabel(it.next(), this.values.get(i).floatValue());
            }
        }
        if (!it.hasNext()) {
            throw new IllegalStateException(String.format(NPStringFog.decode(new byte[]{126, 88, 64, 68, 84, 89, 95, 66, 83, 12, 17, 91, 81, 85, 81, 8, 66, 31, 21, 83, 29, 68, 69, 88, 16, 83, 93, 23, 65, 91, 81, 78, 20, 5, 93, 91, 16, 67, 92, 1, 17, 65, 81, 91, 65, 1, 66, 31, 21, 83, 29}, "074d17", false, true), Integer.valueOf(this.labels.size()), Integer.valueOf(this.values.size())));
        }
        setValueForLabel(it.next(), this.values.get(this.focusedThumbIdx).floatValue());
    }

    private void ensureLabelsRemoved() {
        if (this.labelsAreAnimatedIn) {
            this.labelsAreAnimatedIn = false;
            ValueAnimator valueAnimatorCreateLabelAnimator = createLabelAnimator(false);
            this.labelsOutAnimator = valueAnimatorCreateLabelAnimator;
            this.labelsInAnimator = null;
            valueAnimatorCreateLabelAnimator.addListener(new AnimatorListenerAdapter(this) { // from class: com.google.android.material.slider.BaseSlider.3
                final BaseSlider this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    Iterator it = this.this$0.labels.iterator();
                    while (it.hasNext()) {
                        ViewUtils.getContentViewOverlay(this.this$0).remove((TooltipDrawable) it.next());
                    }
                }
            });
            this.labelsOutAnimator.start();
        }
    }

    private void focusThumbOnFocusGained(int i) {
        switch (i) {
            case 1:
                moveFocus(Integer.MAX_VALUE);
                break;
            case 2:
                moveFocus(Integer.MIN_VALUE);
                break;
            case 17:
                moveFocusInAbsoluteDirection(Integer.MAX_VALUE);
                break;
            case 66:
                moveFocusInAbsoluteDirection(Integer.MIN_VALUE);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatValue(float f) {
        if (hasLabelFormatter()) {
            return this.formatter.getFormattedValue(f);
        }
        return String.format(((float) ((int) f)) == f ? NPStringFog.decode(new byte[]{71, 22, 9, 83}, "b89596", false) : NPStringFog.decode(new byte[]{65, 76, 11, 0}, "db9f09", true, true), Float.valueOf(f));
    }

    private float[] getActiveRange() {
        float fFloatValue = ((Float) Collections.max(getValues())).floatValue();
        float fFloatValue2 = ((Float) Collections.min(getValues())).floatValue();
        if (this.values.size() == 1) {
            fFloatValue2 = this.valueFrom;
        }
        float fNormalizeValue = normalizeValue(fFloatValue2);
        float fNormalizeValue2 = normalizeValue(fFloatValue);
        return isRtl() ? new float[]{fNormalizeValue2, fNormalizeValue} : new float[]{fNormalizeValue, fNormalizeValue2};
    }

    private static float getAnimatorCurrentValueOrDefault(ValueAnimator valueAnimator, float f) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return f;
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        valueAnimator.cancel();
        return fFloatValue;
    }

    private float getClampedValue(int i, float f) {
        float minSeparation = getMinSeparation();
        if (this.separationUnit == 0) {
            minSeparation = dimenToValue(minSeparation);
        }
        float f2 = isRtl() ? -minSeparation : minSeparation;
        return MathUtils.clamp(f, i + (-1) < 0 ? this.valueFrom : this.values.get(i - 1).floatValue() + f2, i + 1 >= this.values.size() ? this.valueTo : this.values.get(i + 1).floatValue() - f2);
    }

    private int getColorForState(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    private float getValueOfTouchPosition() {
        double dSnapPosition = snapPosition(this.touchPosition);
        if (isRtl()) {
            dSnapPosition = 1.0d - dSnapPosition;
        }
        float f = this.valueTo;
        float f2 = this.valueFrom;
        double d = f - f2;
        Double.isNaN(d);
        double d2 = f2;
        Double.isNaN(d2);
        return (float) ((dSnapPosition * d) + d2);
    }

    private float getValueOfTouchPositionAbsolute() {
        float f = this.touchPosition;
        if (isRtl()) {
            f = 1.0f - f;
        }
        float f2 = this.valueTo;
        float f3 = this.valueFrom;
        return (f * (f2 - f3)) + f3;
    }

    private Drawable initializeCustomThumbDrawable(Drawable drawable) {
        Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
        adjustCustomThumbDrawableBounds(drawableNewDrawable);
        return drawableNewDrawable;
    }

    private void invalidateTrack() {
        this.inactiveTrackPaint.setStrokeWidth(this.trackHeight);
        this.activeTrackPaint.setStrokeWidth(this.trackHeight);
        this.inactiveTicksPaint.setStrokeWidth(this.trackHeight / 2.0f);
        this.activeTicksPaint.setStrokeWidth(this.trackHeight / 2.0f);
    }

    private boolean isInVerticalScrollingContainer() {
        for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    private boolean isMultipleOfStepSize(float f) {
        double dDoubleValue = new BigDecimal(Float.toString(f)).divide(new BigDecimal(Float.toString(this.stepSize)), MathContext.DECIMAL64).doubleValue();
        double dRound = Math.round(dDoubleValue);
        Double.isNaN(dRound);
        return Math.abs(dRound - dDoubleValue) < THRESHOLD;
    }

    private void loadResources(Resources resources) {
        this.widgetHeight = resources.getDimensionPixelSize(R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_side_padding);
        this.minTrackSidePadding = dimensionPixelOffset;
        this.trackSidePadding = dimensionPixelOffset;
        this.defaultThumbRadius = resources.getDimensionPixelSize(R.dimen.mtrl_slider_thumb_radius);
        this.trackTop = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_top);
        this.labelPadding = resources.getDimensionPixelSize(R.dimen.mtrl_slider_label_padding);
    }

    private void maybeCalculateTicksCoordinates() {
        if (this.stepSize <= 0.0f) {
            return;
        }
        validateConfigurationIfDirty();
        int iMin = Math.min((int) (((this.valueTo - this.valueFrom) / this.stepSize) + 1.0f), (this.trackWidth / (this.trackHeight * 2)) + 1);
        float[] fArr = this.ticksCoordinates;
        if (fArr == null || fArr.length != iMin * 2) {
            this.ticksCoordinates = new float[iMin * 2];
        }
        float f = this.trackWidth / (iMin - 1);
        for (int i = 0; i < iMin * 2; i += 2) {
            float[] fArr2 = this.ticksCoordinates;
            fArr2[i] = this.trackSidePadding + ((i / 2) * f);
            fArr2[i + 1] = calculateTop();
        }
    }

    private void maybeDrawHalo(Canvas canvas, int i, int i2) {
        if (shouldDrawCompatHalo()) {
            int iNormalizeValue = (int) ((normalizeValue(this.values.get(this.focusedThumbIdx).floatValue()) * i) + this.trackSidePadding);
            if (Build.VERSION.SDK_INT < 28) {
                int i3 = this.haloRadius;
                canvas.clipRect(iNormalizeValue - i3, i2 - i3, iNormalizeValue + i3, i3 + i2, Region.Op.UNION);
            }
            canvas.drawCircle(iNormalizeValue, i2, this.haloRadius, this.haloPaint);
        }
    }

    private void maybeDrawTicks(Canvas canvas) {
        if (!this.tickVisible || this.stepSize <= 0.0f) {
            return;
        }
        float[] activeRange = getActiveRange();
        int iPivotIndex = pivotIndex(this.ticksCoordinates, activeRange[0]);
        int iPivotIndex2 = pivotIndex(this.ticksCoordinates, activeRange[1]);
        canvas.drawPoints(this.ticksCoordinates, 0, iPivotIndex * 2, this.inactiveTicksPaint);
        canvas.drawPoints(this.ticksCoordinates, iPivotIndex * 2, (iPivotIndex2 * 2) - (iPivotIndex * 2), this.activeTicksPaint);
        float[] fArr = this.ticksCoordinates;
        canvas.drawPoints(fArr, iPivotIndex2 * 2, fArr.length - (iPivotIndex2 * 2), this.inactiveTicksPaint);
    }

    private void maybeIncreaseTrackSidePadding() {
        this.trackSidePadding = Math.max(this.thumbRadius - this.defaultThumbRadius, 0) + this.minTrackSidePadding;
        if (ViewCompat.isLaidOut(this)) {
            updateTrackWidth(getWidth());
        }
    }

    private boolean moveFocus(int i) {
        int i2 = this.focusedThumbIdx;
        int iClamp = (int) MathUtils.clamp(((long) i2) + ((long) i), 0L, this.values.size() - 1);
        this.focusedThumbIdx = iClamp;
        if (iClamp == i2) {
            return false;
        }
        if (this.activeThumbIdx != -1) {
            this.activeThumbIdx = iClamp;
        }
        updateHaloHotspot();
        postInvalidate();
        return true;
    }

    private boolean moveFocusInAbsoluteDirection(int i) {
        return moveFocus(isRtl() ? i == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i : i);
    }

    private float normalizeValue(float f) {
        float f2 = this.valueFrom;
        float f3 = (f - f2) / (this.valueTo - f2);
        return isRtl() ? 1.0f - f3 : f3;
    }

    private Boolean onKeyDownNoActiveThumb(int i, KeyEvent keyEvent) {
        switch (i) {
            case 21:
                moveFocusInAbsoluteDirection(-1);
                break;
            case 22:
                moveFocusInAbsoluteDirection(1);
                break;
            case 23:
            case 66:
                this.activeThumbIdx = this.focusedThumbIdx;
                postInvalidate();
                break;
            case 61:
                if (!keyEvent.hasNoModifiers()) {
                    if (!keyEvent.isShiftPressed()) {
                    }
                }
                break;
            case 69:
                moveFocus(-1);
                break;
            case 70:
            case 81:
                moveFocus(1);
                break;
        }
        return true;
    }

    private void onStartTrackingTouch() {
        Iterator<T> it = this.touchListeners.iterator();
        while (it.hasNext()) {
            it.next().onStartTrackingTouch(this);
        }
    }

    private void onStopTrackingTouch() {
        Iterator<T> it = this.touchListeners.iterator();
        while (it.hasNext()) {
            it.next().onStopTrackingTouch(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TooltipDrawable parseLabelDrawable(Context context, TypedArray typedArray) {
        return TooltipDrawable.createFromAttributes(context, null, 0, typedArray.getResourceId(R.styleable.Slider_labelStyle, R.style.Widget_MaterialComponents_Tooltip));
    }

    private static int pivotIndex(float[] fArr, float f) {
        return Math.round(((fArr.length / 2) - 1) * f);
    }

    private void processAttributes(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.Slider, i, DEF_STYLE_RES, new int[0]);
        this.valueFrom = typedArrayObtainStyledAttributes.getFloat(R.styleable.Slider_android_valueFrom, 0.0f);
        this.valueTo = typedArrayObtainStyledAttributes.getFloat(R.styleable.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.valueFrom));
        this.stepSize = typedArrayObtainStyledAttributes.getFloat(R.styleable.Slider_android_stepSize, 0.0f);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R.styleable.Slider_trackColor);
        int i2 = zHasValue ? R.styleable.Slider_trackColor : R.styleable.Slider_trackColorInactive;
        int i3 = zHasValue ? R.styleable.Slider_trackColor : R.styleable.Slider_trackColorActive;
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, i2);
        if (colorStateList == null) {
            colorStateList = AppCompatResources.getColorStateList(context, R.color.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(colorStateList);
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, i3);
        if (colorStateList2 == null) {
            colorStateList2 = AppCompatResources.getColorStateList(context, R.color.material_slider_active_track_color);
        }
        setTrackActiveTintList(colorStateList2);
        this.defaultThumbDrawable.setFillColor(MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.Slider_thumbColor));
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Slider_thumbStrokeColor)) {
            setThumbStrokeColor(MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.Slider_thumbStrokeColor));
        }
        setThumbStrokeWidth(typedArrayObtainStyledAttributes.getDimension(R.styleable.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList colorStateList3 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.Slider_haloColor);
        if (colorStateList3 == null) {
            colorStateList3 = AppCompatResources.getColorStateList(context, R.color.material_slider_halo_color);
        }
        setHaloTintList(colorStateList3);
        this.tickVisible = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Slider_tickVisible, true);
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(R.styleable.Slider_tickColor);
        int i4 = zHasValue2 ? R.styleable.Slider_tickColor : R.styleable.Slider_tickColorInactive;
        int i5 = zHasValue2 ? R.styleable.Slider_tickColor : R.styleable.Slider_tickColorActive;
        ColorStateList colorStateList4 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, i4);
        if (colorStateList4 == null) {
            colorStateList4 = AppCompatResources.getColorStateList(context, R.color.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(colorStateList4);
        ColorStateList colorStateList5 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, i5);
        if (colorStateList5 == null) {
            colorStateList5 = AppCompatResources.getColorStateList(context, R.color.material_slider_active_tick_marks_color);
        }
        setTickActiveTintList(colorStateList5);
        setThumbRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Slider_thumbRadius, 0));
        setHaloRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Slider_haloRadius, 0));
        setThumbElevation(typedArrayObtainStyledAttributes.getDimension(R.styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Slider_trackHeight, 0));
        setLabelBehavior(typedArrayObtainStyledAttributes.getInt(R.styleable.Slider_labelBehavior, 0));
        if (!typedArrayObtainStyledAttributes.getBoolean(R.styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void scheduleAccessibilityEventSender(int i) {
        BaseSlider<S, L, T>.AccessibilityEventSender accessibilityEventSender = this.accessibilityEventSender;
        if (accessibilityEventSender == null) {
            this.accessibilityEventSender = new AccessibilityEventSender();
        } else {
            removeCallbacks(accessibilityEventSender);
        }
        this.accessibilityEventSender.setVirtualViewId(i);
        postDelayed(this.accessibilityEventSender, 200L);
    }

    private void setValueForLabel(TooltipDrawable tooltipDrawable, float f) {
        tooltipDrawable.setText(formatValue(f));
        int iNormalizeValue = (this.trackSidePadding + ((int) (normalizeValue(f) * this.trackWidth))) - (tooltipDrawable.getIntrinsicWidth() / 2);
        int iCalculateTop = calculateTop() - (this.labelPadding + this.thumbRadius);
        tooltipDrawable.setBounds(iNormalizeValue, iCalculateTop - tooltipDrawable.getIntrinsicHeight(), tooltipDrawable.getIntrinsicWidth() + iNormalizeValue, iCalculateTop);
        Rect rect = new Rect(tooltipDrawable.getBounds());
        DescendantOffsetUtils.offsetDescendantRect(ViewUtils.getContentView(this), this, rect);
        tooltipDrawable.setBounds(rect);
        ViewUtils.getContentViewOverlay(this).add(tooltipDrawable);
    }

    private void setValuesInternal(ArrayList<Float> arrayList) {
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{120, 67, 18, 8, 3, 84, 74, 67, 18, 11, 8, 80, 25, 65, 83, 8, 19, 80, 25, 90, 71, 23, 18, 21, 91, 82, 18, 23, 3, 65}, "972df5", 816938009L));
        }
        Collections.sort(arrayList);
        if (this.values.size() == arrayList.size() && this.values.equals(arrayList)) {
            return;
        }
        this.values = arrayList;
        this.dirtyConfig = true;
        this.focusedThumbIdx = 0;
        updateHaloHotspot();
        createLabelPool();
        dispatchOnChangedProgrammatically();
        postInvalidate();
    }

    private boolean shouldAlwaysShowLabel() {
        return this.labelBehavior == 3;
    }

    private boolean shouldDrawCompatHalo() {
        return this.forceDrawCompatHalo || Build.VERSION.SDK_INT < 21 || !(getBackground() instanceof RippleDrawable);
    }

    private boolean snapActiveThumbToValue(float f) {
        return snapThumbToValue(this.activeThumbIdx, f);
    }

    private double snapPosition(float f) {
        float f2 = this.stepSize;
        if (f2 <= 0.0f) {
            return f;
        }
        int i = (int) ((this.valueTo - this.valueFrom) / f2);
        double dRound = Math.round(i * f);
        double d = i;
        Double.isNaN(dRound);
        Double.isNaN(d);
        return dRound / d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean snapThumbToValue(int i, float f) {
        this.focusedThumbIdx = i;
        if (Math.abs(f - this.values.get(i).floatValue()) < THRESHOLD) {
            return false;
        }
        this.values.set(i, Float.valueOf(getClampedValue(i, f)));
        dispatchOnChangedFromUser(i);
        return true;
    }

    private boolean snapTouchPosition() {
        return snapActiveThumbToValue(getValueOfTouchPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHaloHotspot() {
        if (shouldDrawCompatHalo() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int iNormalizeValue = (int) ((normalizeValue(this.values.get(this.focusedThumbIdx).floatValue()) * this.trackWidth) + this.trackSidePadding);
            int iCalculateTop = calculateTop();
            int i = this.haloRadius;
            DrawableCompat.setHotspotBounds(background, iNormalizeValue - i, iCalculateTop - i, iNormalizeValue + i, iCalculateTop + i);
        }
    }

    private void updateTrackWidth(int i) {
        this.trackWidth = Math.max(i - (this.trackSidePadding * 2), 0);
        maybeCalculateTicksCoordinates();
    }

    private void validateConfigurationIfDirty() {
        if (this.dirtyConfig) {
            validateValueFrom();
            validateValueTo();
            validateStepSize();
            validateValues();
            validateMinSeparation();
            warnAboutFloatingPointError();
            this.dirtyConfig = false;
        }
    }

    private void validateMinSeparation() {
        float minSeparation = getMinSeparation();
        if (minSeparation < 0.0f) {
            throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_MIN_SEPARATION, Float.valueOf(minSeparation)));
        }
        float f = this.stepSize;
        if (f <= 0.0f || minSeparation <= 0.0f) {
            return;
        }
        if (this.separationUnit != 1) {
            throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE_UNIT, Float.valueOf(minSeparation), Float.valueOf(this.stepSize)));
        }
        if (minSeparation < f || !isMultipleOfStepSize(minSeparation)) {
            throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE, Float.valueOf(minSeparation), Float.valueOf(this.stepSize), Float.valueOf(this.stepSize)));
        }
    }

    private void validateStepSize() {
        if (this.stepSize > 0.0f && !valueLandsOnTick(this.valueTo)) {
            throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_STEP_SIZE, Float.valueOf(this.stepSize), Float.valueOf(this.valueFrom), Float.valueOf(this.valueTo)));
        }
    }

    private void validateValueFrom() {
        if (this.valueFrom >= this.valueTo) {
            throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_VALUE_FROM, Float.valueOf(this.valueFrom), Float.valueOf(this.valueTo)));
        }
    }

    private void validateValueTo() {
        if (this.valueTo <= this.valueFrom) {
            throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_VALUE_TO, Float.valueOf(this.valueTo), Float.valueOf(this.valueFrom)));
        }
    }

    private void validateValues() {
        for (Float f : this.values) {
            if (f.floatValue() < this.valueFrom || f.floatValue() > this.valueTo) {
                throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_VALUE, f, Float.valueOf(this.valueFrom), Float.valueOf(this.valueTo)));
            }
            if (this.stepSize > 0.0f && !valueLandsOnTick(f.floatValue())) {
                throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_DISCRETE_VALUE, f, Float.valueOf(this.valueFrom), Float.valueOf(this.stepSize), Float.valueOf(this.stepSize)));
            }
        }
    }

    private boolean valueLandsOnTick(float f) {
        return isMultipleOfStepSize(f - this.valueFrom);
    }

    private float valueToX(float f) {
        return (normalizeValue(f) * this.trackWidth) + this.trackSidePadding;
    }

    private void warnAboutFloatingPointError() {
        float f = this.stepSize;
        if (f == 0.0f) {
            return;
        }
        if (((int) f) != f) {
            Log.w(TAG, String.format(WARNING_FLOATING_POINT_ERROR, NPStringFog.decode(new byte[]{16, 68, 93, 73, 103, 91, 25, 85}, "c08942", 9.24857376E8d), Float.valueOf(f)));
        }
        float f2 = this.valueFrom;
        if (((int) f2) != f2) {
            Log.w(TAG, String.format(WARNING_FLOATING_POINT_ERROR, NPStringFog.decode(new byte[]{68, 86, 93, 66, 6, 34, 64, 88, 92}, "2717cd", false), Float.valueOf(f2)));
        }
        float f3 = this.valueTo;
        if (((int) f3) != f3) {
            Log.w(TAG, String.format(WARNING_FLOATING_POINT_ERROR, NPStringFog.decode(new byte[]{21, 2, 93, 66, 83, 48, 12}, "cc176d", false, false), Float.valueOf(f3)));
        }
    }

    public void addOnChangeListener(L l) {
        this.changeListeners.add(l);
    }

    public void addOnSliderTouchListener(T t) {
        this.touchListeners.add(t);
    }

    public void clearOnChangeListeners() {
        this.changeListeners.clear();
    }

    public void clearOnSliderTouchListeners() {
        this.touchListeners.clear();
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.accessibilityHelper.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.inactiveTrackPaint.setColor(getColorForState(this.trackColorInactive));
        this.activeTrackPaint.setColor(getColorForState(this.trackColorActive));
        this.inactiveTicksPaint.setColor(getColorForState(this.tickColorInactive));
        this.activeTicksPaint.setColor(getColorForState(this.tickColorActive));
        for (TooltipDrawable tooltipDrawable : this.labels) {
            if (tooltipDrawable.isStateful()) {
                tooltipDrawable.setState(getDrawableState());
            }
        }
        if (this.defaultThumbDrawable.isStateful()) {
            this.defaultThumbDrawable.setState(getDrawableState());
        }
        this.haloPaint.setColor(getColorForState(this.haloColor));
        this.haloPaint.setAlpha(63);
    }

    void forceDrawCompatHalo(boolean z) {
        this.forceDrawCompatHalo = z;
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    final int getAccessibilityFocusedVirtualViewId() {
        return this.accessibilityHelper.getAccessibilityFocusedVirtualViewId();
    }

    public int getActiveThumbIndex() {
        return this.activeThumbIdx;
    }

    public int getFocusedThumbIndex() {
        return this.focusedThumbIdx;
    }

    public int getHaloRadius() {
        return this.haloRadius;
    }

    public ColorStateList getHaloTintList() {
        return this.haloColor;
    }

    public int getLabelBehavior() {
        return this.labelBehavior;
    }

    protected float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.stepSize;
    }

    public float getThumbElevation() {
        return this.defaultThumbDrawable.getElevation();
    }

    public int getThumbRadius() {
        return this.thumbRadius;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.defaultThumbDrawable.getStrokeColor();
    }

    public float getThumbStrokeWidth() {
        return this.defaultThumbDrawable.getStrokeWidth();
    }

    public ColorStateList getThumbTintList() {
        return this.defaultThumbDrawable.getFillColor();
    }

    public ColorStateList getTickActiveTintList() {
        return this.tickColorActive;
    }

    public ColorStateList getTickInactiveTintList() {
        return this.tickColorInactive;
    }

    public ColorStateList getTickTintList() {
        if (this.tickColorInactive.equals(this.tickColorActive)) {
            return this.tickColorActive;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{97, 89, 4, 67, 12, 95, 84, 82, 21, 10, 19, 84, 21, 80, 15, 7, 69, 80, 86, 69, 8, 21, 0, 17, 65, 88, 2, 8, 22, 17, 84, 67, 4, 67, 1, 88, 83, 87, 4, 17, 0, 95, 65, 17, 2, 12, 9, 94, 71, 66, 79, 67, 48, 66, 80, 17, 21, 11, 0, 17, 82, 84, 21, 55, 12, 82, 94, 114, 14, 15, 10, 67, 124, 95, 0, 0, 17, 88, 67, 84, 73, 74, 69, 80, 91, 85, 65, 4, 0, 69, 97, 88, 2, 8, 38, 94, 89, 94, 19, 34, 6, 69, 92, 71, 4, 75, 76, 17, 88, 84, 21, 11, 10, 85, 70, 17, 8, 13, 22, 69, 80, 80, 5, 77}, "51ace1", -12959));
    }

    public ColorStateList getTrackActiveTintList() {
        return this.trackColorActive;
    }

    public int getTrackHeight() {
        return this.trackHeight;
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.trackColorInactive;
    }

    public int getTrackSidePadding() {
        return this.trackSidePadding;
    }

    public ColorStateList getTrackTintList() {
        if (this.trackColorInactive.equals(this.trackColorActive)) {
            return this.trackColorActive;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{54, 94, 92, 68, 10, 11, 3, 85, 77, 13, 21, 0, 66, 87, 87, 0, 67, 4, 1, 66, 80, 18, 6, 69, 18, 87, 75, 16, 16, 69, 13, 80, 25, 16, 11, 0, 66, 66, 75, 5, 0, 14, 66, 87, 75, 1, 67, 1, 11, 80, 95, 1, 17, 0, 12, 66, 25, 7, 12, 9, 13, 68, 74, 74, 67, 48, 17, 83, 25, 16, 11, 0, 66, 81, 92, 16, 42, 11, 3, 85, 77, 13, 21, 0, 54, 68, 88, 7, 8, 38, 13, 90, 86, 22, 75, 76, 66, 87, 87, 0, 67, 2, 7, 66, 120, 7, 23, 12, 20, 83, 109, 22, 2, 6, 9, 117, 86, 8, 12, 23, 74, 31, 25, 9, 6, 17, 10, 89, 93, 23, 67, 12, 12, 69, 77, 1, 2, 1, 76}, "b69dce", -5200));
    }

    public int getTrackWidth() {
        return this.trackWidth;
    }

    public float getValueFrom() {
        return this.valueFrom;
    }

    public float getValueTo() {
        return this.valueTo;
    }

    List<Float> getValues() {
        return new ArrayList(this.values);
    }

    public boolean hasLabelFormatter() {
        return this.formatter != null;
    }

    final boolean isRtl() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public boolean isTickVisible() {
        return this.tickVisible;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Iterator<TooltipDrawable> it = this.labels.iterator();
        while (it.hasNext()) {
            attachLabelToContentView(it.next());
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        BaseSlider<S, L, T>.AccessibilityEventSender accessibilityEventSender = this.accessibilityEventSender;
        if (accessibilityEventSender != null) {
            removeCallbacks(accessibilityEventSender);
        }
        this.labelsAreAnimatedIn = false;
        Iterator<TooltipDrawable> it = this.labels.iterator();
        while (it.hasNext()) {
            detachLabelFromContentView(it.next());
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.dirtyConfig) {
            validateConfigurationIfDirty();
            maybeCalculateTicksCoordinates();
        }
        super.onDraw(canvas);
        int iCalculateTop = calculateTop();
        drawInactiveTrack(canvas, this.trackWidth, iCalculateTop);
        if (((Float) Collections.max(getValues())).floatValue() > this.valueFrom) {
            drawActiveTrack(canvas, this.trackWidth, iCalculateTop);
        }
        maybeDrawTicks(canvas);
        if ((this.thumbIsPressed || isFocused() || shouldAlwaysShowLabel()) && isEnabled()) {
            maybeDrawHalo(canvas, this.trackWidth, iCalculateTop);
            if (this.activeThumbIdx != -1 || shouldAlwaysShowLabel()) {
                ensureLabelsAdded();
            } else {
                ensureLabelsRemoved();
            }
        } else {
            ensureLabelsRemoved();
        }
        drawThumbs(canvas, this.trackWidth, iCalculateTop);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            focusThumbOnFocusGained(i);
            this.accessibilityHelper.requestKeyboardFocusForVirtualView(this.focusedThumbIdx);
        } else {
            this.activeThumbIdx = -1;
            this.accessibilityHelper.clearKeyboardFocusForVirtualView(this.focusedThumbIdx);
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.values.size() == 1) {
            this.activeThumbIdx = 0;
        }
        if (this.activeThumbIdx == -1) {
            Boolean boolOnKeyDownNoActiveThumb = onKeyDownNoActiveThumb(i, keyEvent);
            return boolOnKeyDownNoActiveThumb != null ? boolOnKeyDownNoActiveThumb.booleanValue() : super.onKeyDown(i, keyEvent);
        }
        this.isLongPress |= keyEvent.isLongPress();
        Float fCalculateIncrementForKey = calculateIncrementForKey(i);
        if (fCalculateIncrementForKey != null) {
            if (snapActiveThumbToValue(this.values.get(this.activeThumbIdx).floatValue() + fCalculateIncrementForKey.floatValue())) {
                updateHaloHotspot();
                postInvalidate();
            }
            return true;
        }
        switch (i) {
            case 23:
            case 66:
                this.activeThumbIdx = -1;
                postInvalidate();
                return true;
            case 61:
                if (keyEvent.hasNoModifiers()) {
                    return moveFocus(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return moveFocus(-1);
                }
                return false;
            default:
                return super.onKeyDown(i, keyEvent);
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.isLongPress = false;
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(((this.labelBehavior == 1 || shouldAlwaysShowLabel()) ? this.labels.get(0).getIntrinsicHeight() : 0) + this.widgetHeight, BasicMeasure.EXACTLY));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.valueFrom = sliderState.valueFrom;
        this.valueTo = sliderState.valueTo;
        setValuesInternal(sliderState.values);
        this.stepSize = sliderState.stepSize;
        if (sliderState.hasFocus) {
            requestFocus();
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.valueFrom = this.valueFrom;
        sliderState.valueTo = this.valueTo;
        sliderState.values = new ArrayList<>(this.values);
        sliderState.stepSize = this.stepSize;
        sliderState.hasFocus = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        updateTrackWidth(i);
        updateHaloHotspot();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float x = motionEvent.getX();
        float f = (x - this.trackSidePadding) / this.trackWidth;
        this.touchPosition = f;
        float fMax = Math.max(0.0f, f);
        this.touchPosition = fMax;
        this.touchPosition = Math.min(1.0f, fMax);
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.touchDownX = x;
                if (!isInVerticalScrollingContainer()) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    if (pickActiveThumb()) {
                        requestFocus();
                        this.thumbIsPressed = true;
                        snapTouchPosition();
                        updateHaloHotspot();
                        invalidate();
                        onStartTrackingTouch();
                    }
                }
                break;
            case 1:
                this.thumbIsPressed = false;
                MotionEvent motionEvent2 = this.lastEvent;
                if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.lastEvent.getX() - motionEvent.getX()) <= this.scaledTouchSlop && Math.abs(this.lastEvent.getY() - motionEvent.getY()) <= this.scaledTouchSlop && pickActiveThumb()) {
                    onStartTrackingTouch();
                }
                if (this.activeThumbIdx != -1) {
                    snapTouchPosition();
                    this.activeThumbIdx = -1;
                    onStopTrackingTouch();
                }
                invalidate();
                break;
            case 2:
                if (!this.thumbIsPressed) {
                    if (isInVerticalScrollingContainer() && Math.abs(x - this.touchDownX) < this.scaledTouchSlop) {
                        return false;
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                    onStartTrackingTouch();
                }
                if (pickActiveThumb()) {
                    this.thumbIsPressed = true;
                    snapTouchPosition();
                    updateHaloHotspot();
                    invalidate();
                }
                break;
        }
        setPressed(this.thumbIsPressed);
        this.lastEvent = MotionEvent.obtain(motionEvent);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean pickActiveThumb() {
        /*
            r12 = this;
            r11 = 0
            r10 = -1
            r3 = 1
            r4 = 0
            int r0 = r12.activeThumbIdx
            if (r0 == r10) goto L9
        L8:
            return r3
        L9:
            float r6 = r12.getValueOfTouchPositionAbsolute()
            float r7 = r12.valueToX(r6)
            r12.activeThumbIdx = r4
            java.util.ArrayList<java.lang.Float> r0 = r12.values
            java.lang.Object r0 = r0.get(r4)
            java.lang.Float r0 = (java.lang.Float) r0
            float r0 = r0.floatValue()
            float r0 = r0 - r6
            float r0 = java.lang.Math.abs(r0)
            r1 = r0
            r2 = r3
        L26:
            java.util.ArrayList<java.lang.Float> r0 = r12.values
            int r0 = r0.size()
            if (r2 >= r0) goto L55
            java.util.ArrayList<java.lang.Float> r0 = r12.values
            java.lang.Object r0 = r0.get(r2)
            java.lang.Float r0 = (java.lang.Float) r0
            float r0 = r0.floatValue()
            float r0 = r0 - r6
            float r5 = java.lang.Math.abs(r0)
            java.util.ArrayList<java.lang.Float> r0 = r12.values
            java.lang.Object r0 = r0.get(r2)
            java.lang.Float r0 = (java.lang.Float) r0
            float r0 = r0.floatValue()
            float r8 = r12.valueToX(r0)
            int r0 = java.lang.Float.compare(r5, r1)
            if (r0 <= r3) goto L5b
        L55:
            int r0 = r12.activeThumbIdx
            if (r0 != r10) goto L8
            r3 = r4
            goto L8
        L5b:
            boolean r0 = r12.isRtl()
            if (r0 == 0) goto L76
            float r0 = r8 - r7
            int r0 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
            if (r0 <= 0) goto L7c
        L67:
            r0 = r3
        L68:
            int r9 = java.lang.Float.compare(r5, r1)
            if (r9 >= 0) goto L7e
            r12.activeThumbIdx = r2
            r0 = r5
        L71:
            int r1 = r2 + 1
            r2 = r1
            r1 = r0
            goto L26
        L76:
            float r0 = r8 - r7
            int r0 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
            if (r0 < 0) goto L67
        L7c:
            r0 = r4
            goto L68
        L7e:
            int r9 = java.lang.Float.compare(r5, r1)
            if (r9 != 0) goto L9b
            float r8 = r8 - r7
            float r8 = java.lang.Math.abs(r8)
            int r9 = r12.scaledTouchSlop
            float r9 = (float) r9
            int r8 = (r8 > r9 ? 1 : (r8 == r9 ? 0 : -1))
            if (r8 >= 0) goto L95
            r12.activeThumbIdx = r10
            r3 = r4
            goto L8
        L95:
            if (r0 == 0) goto L9b
            r12.activeThumbIdx = r2
            r0 = r5
            goto L71
        L9b:
            r0 = r1
            goto L71
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.pickActiveThumb():boolean");
    }

    public void removeOnChangeListener(L l) {
        this.changeListeners.remove(l);
    }

    public void removeOnSliderTouchListener(T t) {
        this.touchListeners.remove(t);
    }

    protected void setActiveThumbIndex(int i) {
        this.activeThumbIdx = i;
    }

    void setCustomThumbDrawable(int i) {
        setCustomThumbDrawable(getResources().getDrawable(i));
    }

    void setCustomThumbDrawable(Drawable drawable) {
        this.customThumbDrawable = initializeCustomThumbDrawable(drawable);
        this.customThumbDrawablesForValues.clear();
        postInvalidate();
    }

    void setCustomThumbDrawablesForValues(int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            drawableArr[i] = getResources().getDrawable(iArr[i]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    void setCustomThumbDrawablesForValues(Drawable... drawableArr) {
        this.customThumbDrawable = null;
        this.customThumbDrawablesForValues = new ArrayList();
        for (Drawable drawable : drawableArr) {
            this.customThumbDrawablesForValues.add(initializeCustomThumbDrawable(drawable));
        }
        postInvalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i) {
        if (i < 0 || i >= this.values.size()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{92, 90, 5, 7, 28, 65, 90, 65, 21, 66, 11, 7, 21, 70, 0, 12, 3, 4}, "54abda", false, true));
        }
        this.focusedThumbIdx = i;
        this.accessibilityHelper.requestKeyboardFocusForVirtualView(i);
        postInvalidate();
    }

    public void setHaloRadius(int i) {
        if (i == this.haloRadius) {
            return;
        }
        this.haloRadius = i;
        Drawable background = getBackground();
        if (shouldDrawCompatHalo() || !(background instanceof RippleDrawable)) {
            postInvalidate();
        } else {
            DrawableUtils.setRippleDrawableRadius((RippleDrawable) background, this.haloRadius);
        }
    }

    public void setHaloRadiusResource(int i) {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.haloColor)) {
            return;
        }
        this.haloColor = colorStateList;
        Drawable background = getBackground();
        if (!shouldDrawCompatHalo() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.haloPaint.setColor(getColorForState(colorStateList));
        this.haloPaint.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i) {
        if (this.labelBehavior != i) {
            this.labelBehavior = i;
            requestLayout();
        }
    }

    public void setLabelFormatter(LabelFormatter labelFormatter) {
        this.formatter = labelFormatter;
    }

    protected void setSeparationUnit(int i) {
        this.separationUnit = i;
        this.dirtyConfig = true;
        postInvalidate();
    }

    public void setStepSize(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException(String.format(EXCEPTION_ILLEGAL_STEP_SIZE, Float.valueOf(f), Float.valueOf(this.valueFrom), Float.valueOf(this.valueTo)));
        }
        if (this.stepSize != f) {
            this.stepSize = f;
            this.dirtyConfig = true;
            postInvalidate();
        }
    }

    public void setThumbElevation(float f) {
        this.defaultThumbDrawable.setElevation(f);
    }

    public void setThumbElevationResource(int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    public void setThumbRadius(int i) {
        if (i == this.thumbRadius) {
            return;
        }
        this.thumbRadius = i;
        maybeIncreaseTrackSidePadding();
        this.defaultThumbDrawable.setShapeAppearanceModel(ShapeAppearanceModel.builder().setAllCorners(0, this.thumbRadius).build());
        MaterialShapeDrawable materialShapeDrawable = this.defaultThumbDrawable;
        int i2 = this.thumbRadius;
        materialShapeDrawable.setBounds(0, 0, i2 * 2, i2 * 2);
        Drawable drawable = this.customThumbDrawable;
        if (drawable != null) {
            adjustCustomThumbDrawableBounds(drawable);
        }
        Iterator<Drawable> it = this.customThumbDrawablesForValues.iterator();
        while (it.hasNext()) {
            adjustCustomThumbDrawableBounds(it.next());
        }
        postInvalidate();
    }

    public void setThumbRadiusResource(int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.defaultThumbDrawable.setStrokeColor(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(int i) {
        if (i != 0) {
            setThumbStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public void setThumbStrokeWidth(float f) {
        this.defaultThumbDrawable.setStrokeWidth(f);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.defaultThumbDrawable.getFillColor())) {
            return;
        }
        this.defaultThumbDrawable.setFillColor(colorStateList);
        invalidate();
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.tickColorActive)) {
            return;
        }
        this.tickColorActive = colorStateList;
        this.activeTicksPaint.setColor(getColorForState(colorStateList));
        invalidate();
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.tickColorInactive)) {
            return;
        }
        this.tickColorInactive = colorStateList;
        this.inactiveTicksPaint.setColor(getColorForState(colorStateList));
        invalidate();
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z) {
        if (this.tickVisible != z) {
            this.tickVisible = z;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.trackColorActive)) {
            return;
        }
        this.trackColorActive = colorStateList;
        this.activeTrackPaint.setColor(getColorForState(colorStateList));
        invalidate();
    }

    public void setTrackHeight(int i) {
        if (this.trackHeight != i) {
            this.trackHeight = i;
            invalidateTrack();
            postInvalidate();
        }
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.trackColorInactive)) {
            return;
        }
        this.trackColorInactive = colorStateList;
        this.inactiveTrackPaint.setColor(getColorForState(colorStateList));
        invalidate();
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f) {
        this.valueFrom = f;
        this.dirtyConfig = true;
        postInvalidate();
    }

    public void setValueTo(float f) {
        this.valueTo = f;
        this.dirtyConfig = true;
        postInvalidate();
    }

    void setValues(List<Float> list) {
        setValuesInternal(new ArrayList<>(list));
    }

    void setValues(Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        setValuesInternal(arrayList);
    }

    void updateBoundsForVirturalViewId(int i, Rect rect) {
        int iNormalizeValue = ((int) (normalizeValue(getValues().get(i).floatValue()) * this.trackWidth)) + this.trackSidePadding;
        int iCalculateTop = calculateTop();
        int i2 = this.thumbRadius;
        rect.set(iNormalizeValue - i2, iCalculateTop - i2, iNormalizeValue + i2, iCalculateTop + i2);
    }
}
