package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.LinearLayout;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.GravityCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Set;
import java.util.function.IntFunction;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
public class LinearLayoutCompat extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = NPStringFog.decode(new byte[]{85, 94, 81, 16, 13, 91, 80, 72, 27, 3, 18, 66, 87, 95, 88, 18, 3, 70, 26, 71, 92, 6, 5, 87, 64, 30, 121, 11, 12, 87, 85, 66, 121, 3, 27, 93, 65, 68, 118, 13, 15, 66, 85, 68}, "405bb2", -1116062030L);
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DividerMode {
    }

    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<LinearLayoutCompat> {
        private int mBaselineAlignedChildIndexId;
        private int mBaselineAlignedId;
        private int mDividerId;
        private int mDividerPaddingId;
        private int mGravityId;
        private int mMeasureWithLargestChildId;
        private int mOrientationId;
        private boolean mPropertiesMapped = false;
        private int mShowDividersId;
        private int mWeightSumId;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(PropertyMapper propertyMapper) {
            this.mBaselineAlignedId = propertyMapper.mapBoolean(NPStringFog.decode(new byte[]{80, 89, 70, 3, 15, 10, 92, 93, 116, 10, 10, 4, 92, 93, 81}, "285fcc", -1.8359725E9f), R.attr.baselineAligned);
            this.mBaselineAlignedChildIndexId = propertyMapper.mapInt(NPStringFog.decode(new byte[]{90, 86, 18, 0, 91, 80, 86, 82, 32, 9, 94, 94, 86, 82, 5, 38, 95, 80, 84, 83, 40, 11, 83, 92, 64}, "87ae79", 1545590308L), R.attr.baselineAlignedChildIndex);
            this.mGravityId = propertyMapper.mapGravity(NPStringFog.decode(new byte[]{1, 67, 3, 71, 10, 71, 31}, "f1b1c3", true, true), R.attr.gravity);
            this.mOrientationId = propertyMapper.mapIntEnum(NPStringFog.decode(new byte[]{13, 67, 90, 4, 10, 22, 3, 69, 90, 14, 10}, "b13adb", -388734320L), R.attr.orientation, new IntFunction<String>(this) { // from class: androidx.appcompat.widget.LinearLayoutCompat.InspectionCompanion.1
                final InspectionCompanion this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.util.function.IntFunction
                public String apply(int i) {
                    switch (i) {
                        case 0:
                            return NPStringFog.decode(new byte[]{13, 10, 64, 13, 25, 10, 11, 17, 83, 8}, "ee2dce", false, true);
                        case 1:
                            return NPStringFog.decode(new byte[]{66, 86, 19, 67, 80, 82, 85, 95}, "43a791", -1.9392716E9f);
                        default:
                            return String.valueOf(i);
                    }
                }
            });
            this.mWeightSumId = propertyMapper.mapFloat(NPStringFog.decode(new byte[]{70, 84, 91, 87, 88, 65, 98, 68, 95}, "112005", -4218), R.attr.weightSum);
            this.mDividerId = propertyMapper.mapObject(NPStringFog.decode(new byte[]{0, 95, 67, 80, 6, 87, 22}, "d659b2", true, false), androidx.appcompat.R.attr.divider);
            this.mDividerPaddingId = propertyMapper.mapInt(NPStringFog.decode(new byte[]{83, 13, 18, 89, 83, 7, 69, 52, 5, 84, 83, 11, 89, 3}, "7dd07b", -9149), androidx.appcompat.R.attr.dividerPadding);
            this.mMeasureWithLargestChildId = propertyMapper.mapBoolean(NPStringFog.decode(new byte[]{95, 93, 84, 16, 67, 67, 87, 111, 92, 23, 94, 125, 83, 74, 82, 6, 69, 69, 113, 80, 92, 15, 82}, "285c61", true, true), androidx.appcompat.R.attr.measureWithLargestChild);
            this.mShowDividersId = propertyMapper.mapIntFlag(NPStringFog.decode(new byte[]{68, 13, 94, 19, 38, 15, 65, 12, 85, 1, 16, 21}, "7e1dbf", -13561), androidx.appcompat.R.attr.showDividers, new IntFunction<Set<String>>(this) { // from class: androidx.appcompat.widget.LinearLayoutCompat.InspectionCompanion.2
                final InspectionCompanion this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.util.function.IntFunction
                public Set<String> apply(int i) {
                    HashSet hashSet = new HashSet();
                    if (i == 0) {
                        hashSet.add(NPStringFog.decode(new byte[]{93, 89, 89, 3}, "367fc2", false, false));
                    }
                    if (i == 1) {
                        hashSet.add(NPStringFog.decode(new byte[]{82, 0, 3, 95, 93, 11, 89, 11, 3}, "0ed63e", false, false));
                    }
                    if (i == 2) {
                        hashSet.add(NPStringFog.decode(new byte[]{85, 91, 2, 5, 91, 7}, "82fa7b", 940619226L));
                    }
                    if (i == 4) {
                        hashSet.add(NPStringFog.decode(new byte[]{82, 8, 7}, "7fc79a", false, false));
                    }
                    return hashSet;
                }
            });
            this.mPropertiesMapped = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(LinearLayoutCompat linearLayoutCompat, PropertyReader propertyReader) {
            if (!this.mPropertiesMapped) {
                throw new InspectionCompanion.UninitializedPropertyMapException();
            }
            propertyReader.readBoolean(this.mBaselineAlignedId, linearLayoutCompat.isBaselineAligned());
            propertyReader.readInt(this.mBaselineAlignedChildIndexId, linearLayoutCompat.getBaselineAlignedChildIndex());
            propertyReader.readGravity(this.mGravityId, linearLayoutCompat.getGravity());
            propertyReader.readIntEnum(this.mOrientationId, linearLayoutCompat.getOrientation());
            propertyReader.readFloat(this.mWeightSumId, linearLayoutCompat.getWeightSum());
            propertyReader.readObject(this.mDividerId, linearLayoutCompat.getDividerDrawable());
            propertyReader.readInt(this.mDividerPaddingId, linearLayoutCompat.getDividerPadding());
            propertyReader.readBoolean(this.mMeasureWithLargestChildId, linearLayoutCompat.isMeasureWithLargestChildEnabled());
            propertyReader.readIntFlag(this.mShowDividersId, linearLayoutCompat.getShowDividers());
        }
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2, f);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, androidx.appcompat.R.styleable.LinearLayoutCompat, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, androidx.appcompat.R.styleable.LinearLayoutCompat, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i, 0);
        int i2 = tintTypedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = tintTypedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = tintTypedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = tintTypedArrayObtainStyledAttributes.getFloat(androidx.appcompat.R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = tintTypedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = tintTypedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = tintTypedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.LinearLayoutCompat_dividerPadding, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    private void forceUniformHeight(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), BasicMeasure.EXACTLY);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i4 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, iMakeMeasureSpec, 0);
                    layoutParams.width = i4;
                }
            }
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), BasicMeasure.EXACTLY);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, iMakeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i + i3, i2 + i4);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    void drawDividersHorizontal(Canvas canvas) {
        int left;
        int virtualChildCount = getVirtualChildCount();
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, zIsLayoutRtl ? layoutParams.rightMargin + virtualChildAt.getRight() : (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                left = zIsLayoutRtl ? getPaddingLeft() : (getWidth() - getPaddingRight()) - this.mDividerWidth;
            } else {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                left = zIsLayoutRtl ? (virtualChildAt2.getLeft() - layoutParams2.leftMargin) - this.mDividerWidth : layoutParams2.rightMargin + virtualChildAt2.getRight();
            }
            drawVerticalDivider(canvas, left);
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            drawHorizontalDivider(canvas, virtualChildAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : ((LayoutParams) virtualChildAt2.getLayoutParams()).bottomMargin + virtualChildAt2.getBottom());
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.mOrientation;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.View
    public int getBaseline() {
        int bottom;
        int i;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.mBaselineAlignedChildIndex;
        if (childCount <= i2) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{91, 114, 4, 65, 82, 94, 95, 94, 0, 115, 91, 91, 81, 94, 0, 86, 116, 90, 95, 92, 1, 123, 89, 86, 83, 72, 69, 93, 81, 18, 122, 89, 11, 87, 86, 64, 122, 81, 28, 93, 66, 70, 22, 67, 0, 70, 23, 70, 89, 16, 4, 92, 23, 91, 88, 84, 0, 74, 23, 70, 94, 81, 17, 18, 94, 65, 22, 95, 16, 70, 23, 93, 80, 16, 7, 93, 66, 92, 82, 67, 75}, "60e272", -7.11392094E8d));
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex != 0) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{93, 117, 0, 69, 1, 85, 89, 89, 4, 119, 8, 80, 87, 89, 4, 82, 39, 81, 89, 91, 5, 127, 10, 93, 85, 79, 65, 89, 2, 25, 124, 94, 15, 83, 5, 75, 124, 86, 24, 89, 17, 77, 16, 71, 14, 95, 10, 77, 67, 23, 21, 89, 68, 88, 16, 97, 8, 83, 19, 25, 68, 95, 0, 66, 68, 93, 95, 82, 18, 88, 67, 77, 16, 92, 15, 89, 19, 25, 88, 88, 22, 22, 16, 86, 16, 80, 4, 66, 68, 80, 68, 68, 65, 84, 5, 74, 85, 91, 8, 88, 1, 23}, "07a6d9", -27570));
            }
            return -1;
        }
        int i3 = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i = this.mGravity & 112) != 48) {
            switch (i) {
                case 16:
                    bottom = i3 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2);
                    break;
                case 80:
                    bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
                    break;
                default:
                    bottom = i3;
                    break;
            }
        } else {
            bottom = i3;
        }
        return ((LayoutParams) childAt.getLayoutParams()).topMargin + bottom + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    public int getGravity() {
        return this.mGravity;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    protected boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            if ((this.mShowDividers & 1) != 0) {
                return true;
            }
        } else if (i != getChildCount()) {
            if ((this.mShowDividers & 2) == 0) {
                return false;
            }
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (getChildAt(i2).getVisibility() != 8) {
                    return true;
                }
            }
        } else if ((this.mShowDividers & 4) != 0) {
            return true;
        }
        return false;
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    void layoutHorizontal(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        int childrenSkipCount;
        int measuredHeight;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i7 = i4 - i2;
        int paddingBottom = i7 - getPaddingBottom();
        int paddingBottom2 = getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i8 = this.mGravity;
        boolean z = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        switch (GravityCompat.getAbsoluteGravity(8388615 & i8, ViewCompat.getLayoutDirection(this))) {
            case 1:
                paddingLeft = (((i3 - i) - this.mTotalLength) / 2) + getPaddingLeft();
                break;
            case 5:
                paddingLeft = ((getPaddingLeft() + i3) - i) - this.mTotalLength;
                break;
            default:
                paddingLeft = getPaddingLeft();
                break;
        }
        if (zIsLayoutRtl) {
            i5 = -1;
            i6 = virtualChildCount - 1;
        } else {
            i5 = 1;
            i6 = 0;
        }
        int i9 = 0;
        while (i9 < virtualChildCount) {
            int i10 = i6 + (i5 * i9);
            View virtualChildAt = getVirtualChildAt(i10);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i10);
                childrenSkipCount = i9;
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight2 = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int baseline = (!z || layoutParams.height == -1) ? -1 : virtualChildAt.getBaseline();
                int i11 = layoutParams.gravity;
                if (i11 < 0) {
                    i11 = i8 & 112;
                }
                switch (i11 & 112) {
                    case 16:
                        measuredHeight = ((((((i7 - paddingTop) - paddingBottom2) - measuredHeight2) / 2) + paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                        break;
                    case 48:
                        measuredHeight = layoutParams.topMargin + paddingTop;
                        if (baseline != -1) {
                            measuredHeight += iArr[1] - baseline;
                        }
                        break;
                    case 80:
                        measuredHeight = (paddingBottom - measuredHeight2) - layoutParams.bottomMargin;
                        if (baseline != -1) {
                            measuredHeight -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                        }
                        break;
                    default:
                        measuredHeight = paddingTop;
                        break;
                }
                int i12 = (hasDividerBeforeChildAt(i10) ? this.mDividerWidth + paddingLeft : paddingLeft) + layoutParams.leftMargin;
                setChildFrame(virtualChildAt, i12 + getLocationOffset(virtualChildAt), measuredHeight, measuredWidth, measuredHeight2);
                int i13 = layoutParams.rightMargin;
                int nextLocationOffset = getNextLocationOffset(virtualChildAt);
                childrenSkipCount = getChildrenSkipCount(virtualChildAt, i10) + i9;
                paddingLeft = i12 + measuredWidth + i13 + nextLocationOffset;
            } else {
                childrenSkipCount = i9;
            }
            i9 = childrenSkipCount + 1;
        }
    }

    void layoutVertical(int i, int i2, int i3, int i4) {
        int paddingTop;
        int childrenSkipCount;
        int i5;
        int paddingLeft = getPaddingLeft();
        int i6 = i3 - i;
        int paddingRight = getPaddingRight();
        int paddingRight2 = getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i7 = this.mGravity;
        switch (i7 & 112) {
            case 16:
                paddingTop = getPaddingTop() + (((i4 - i2) - this.mTotalLength) / 2);
                break;
            case 80:
                paddingTop = ((getPaddingTop() + i4) - i2) - this.mTotalLength;
                break;
            default:
                paddingTop = getPaddingTop();
                break;
        }
        int i8 = 0;
        int iMeasureNullChild = paddingTop;
        while (i8 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i8);
            if (virtualChildAt == null) {
                iMeasureNullChild += measureNullChild(i8);
                childrenSkipCount = i8;
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int i9 = layoutParams.gravity;
                if (i9 < 0) {
                    i9 = 8388615 & i7;
                }
                switch (GravityCompat.getAbsoluteGravity(i9, ViewCompat.getLayoutDirection(this)) & 7) {
                    case 1:
                        i5 = ((((((i6 - paddingLeft) - paddingRight2) - measuredWidth) / 2) + paddingLeft) + layoutParams.leftMargin) - layoutParams.rightMargin;
                        break;
                    case 5:
                        i5 = ((i6 - paddingRight) - measuredWidth) - layoutParams.rightMargin;
                        break;
                    default:
                        i5 = layoutParams.leftMargin + paddingLeft;
                        break;
                }
                int i10 = (hasDividerBeforeChildAt(i8) ? this.mDividerHeight + iMeasureNullChild : iMeasureNullChild) + layoutParams.topMargin;
                setChildFrame(virtualChildAt, i5, i10 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                int i11 = layoutParams.bottomMargin;
                int nextLocationOffset = getNextLocationOffset(virtualChildAt);
                childrenSkipCount = getChildrenSkipCount(virtualChildAt, i8) + i8;
                iMeasureNullChild = i10 + measuredHeight + i11 + nextLocationOffset;
            } else {
                childrenSkipCount = i8;
            }
            i8 = childrenSkipCount + 1;
        }
    }

    void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    void measureHorizontal(int i, int i2) {
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6;
        float f;
        int i7;
        int i8;
        float f2;
        int i9;
        int iCombineMeasuredStates;
        int baseline;
        int childrenSkipCount;
        int i10;
        boolean z2;
        boolean z3;
        int iMax;
        int iMax2;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z4;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z5 = this.mBaselineAligned;
        boolean z6 = this.mUseLargestChild;
        boolean z7 = mode == 1073741824;
        int i15 = 0;
        int i16 = 0;
        float f3 = 0.0f;
        int i17 = 0;
        int iMax3 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = true;
        int i18 = 0;
        int i19 = 0;
        while (i15 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i15);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i15);
                z3 = z10;
                z4 = z8;
                i11 = iMax3;
                i14 = i16;
                i12 = i15;
                i13 = i17;
            } else if (virtualChildAt.getVisibility() == 8) {
                int childrenSkipCount2 = i15 + getChildrenSkipCount(virtualChildAt, i15);
                z3 = z10;
                z4 = z8;
                i11 = iMax3;
                i14 = i16;
                i12 = childrenSkipCount2;
                i13 = i17;
            } else {
                if (hasDividerBeforeChildAt(i15)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                float f4 = f3 + layoutParams.weight;
                if (mode == 1073741824 && layoutParams.width == 0 && layoutParams.weight > 0.0f) {
                    if (z7) {
                        this.mTotalLength += layoutParams.leftMargin + layoutParams.rightMargin;
                    } else {
                        int i20 = this.mTotalLength;
                        this.mTotalLength = Math.max(i20, layoutParams.leftMargin + i20 + layoutParams.rightMargin);
                    }
                    if (z5) {
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        virtualChildAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    } else {
                        z8 = true;
                    }
                } else {
                    if (layoutParams.width != 0 || layoutParams.weight <= 0.0f) {
                        i10 = Integer.MIN_VALUE;
                    } else {
                        layoutParams.width = -2;
                        i10 = 0;
                    }
                    measureChildBeforeLayout(virtualChildAt, i15, i, f4 == 0.0f ? this.mTotalLength : 0, i2, 0);
                    if (i10 != Integer.MIN_VALUE) {
                        layoutParams.width = i10;
                    }
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    if (z7) {
                        this.mTotalLength += layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                    } else {
                        int i21 = this.mTotalLength;
                        this.mTotalLength = Math.max(i21, i21 + measuredWidth + layoutParams.leftMargin + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt));
                    }
                    if (z6) {
                        iMax3 = Math.max(measuredWidth, iMax3);
                    }
                }
                boolean z11 = false;
                if (mode2 == 1073741824 || layoutParams.height != -1) {
                    z2 = z9;
                } else {
                    z2 = true;
                    z11 = true;
                }
                int i22 = layoutParams.bottomMargin + layoutParams.topMargin;
                int measuredHeight = virtualChildAt.getMeasuredHeight() + i22;
                int iCombineMeasuredStates2 = View.combineMeasuredStates(i17, virtualChildAt.getMeasuredState());
                if (z5) {
                    int baseline2 = virtualChildAt.getBaseline();
                    if (baseline2 != -1) {
                        int i23 = ((((layoutParams.gravity < 0 ? this.mGravity : layoutParams.gravity) & 112) >> 4) & (-2)) >> 1;
                        iArr[i23] = Math.max(iArr[i23], baseline2);
                        iArr2[i23] = Math.max(iArr2[i23], measuredHeight - baseline2);
                    }
                }
                int iMax4 = Math.max(i16, measuredHeight);
                z3 = z10 && layoutParams.height == -1;
                if (layoutParams.weight > 0.0f) {
                    iMax2 = Math.max(i19, z11 ? i22 : measuredHeight);
                    iMax = i18;
                } else {
                    if (!z11) {
                        i22 = measuredHeight;
                    }
                    iMax = Math.max(i18, i22);
                    iMax2 = i19;
                }
                int childrenSkipCount3 = i15 + getChildrenSkipCount(virtualChildAt, i15);
                i19 = iMax2;
                i18 = iMax;
                i11 = iMax3;
                i12 = childrenSkipCount3;
                i13 = iCombineMeasuredStates2;
                i14 = iMax4;
                z4 = z8;
                z9 = z2;
                f3 = f4;
            }
            z10 = z3;
            z8 = z4;
            iMax3 = i11;
            i17 = i13;
            i16 = i14;
            i15 = i12 + 1;
        }
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        int iMax5 = (iArr[1] == -1 && iArr[0] == -1 && iArr[2] == -1 && iArr[3] == -1) ? i16 : Math.max(i16, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
        if (z6 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int i24 = 0;
            while (i24 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i24);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i24);
                    childrenSkipCount = i24;
                } else if (virtualChildAt2.getVisibility() == 8) {
                    childrenSkipCount = getChildrenSkipCount(virtualChildAt2, i24) + i24;
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (z7) {
                        this.mTotalLength = layoutParams2.rightMargin + layoutParams2.leftMargin + iMax3 + getNextLocationOffset(virtualChildAt2) + this.mTotalLength;
                        childrenSkipCount = i24;
                    } else {
                        int i25 = this.mTotalLength;
                        this.mTotalLength = Math.max(i25, layoutParams2.rightMargin + i25 + iMax3 + layoutParams2.leftMargin + getNextLocationOffset(virtualChildAt2));
                        childrenSkipCount = i24;
                    }
                }
                i24 = childrenSkipCount + 1;
            }
        }
        this.mTotalLength += getPaddingLeft() + getPaddingRight();
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumWidth()), i, 0);
        int i26 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z8 || (i26 != 0 && f3 > 0.0f)) {
            float f5 = this.mWeightSum;
            if (f5 > 0.0f) {
                f3 = f5;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.mTotalLength = 0;
            boolean z12 = z10;
            float f6 = f3;
            int i27 = i18;
            int i28 = i17;
            int iMax6 = -1;
            int i29 = 0;
            while (i29 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i29);
                if (virtualChildAt3 == null) {
                    i5 = i28;
                    z = z12;
                    i6 = i26;
                    f = f6;
                    i7 = iMax6;
                    i8 = i27;
                } else if (virtualChildAt3.getVisibility() == 8) {
                    i5 = i28;
                    z = z12;
                    i6 = i26;
                    f = f6;
                    i7 = iMax6;
                    i8 = i27;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f7 = layoutParams3.weight;
                    if (f7 > 0.0f) {
                        int i30 = (int) ((i26 * f7) / f6);
                        int childMeasureSpec = getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + layoutParams3.topMargin + layoutParams3.bottomMargin, layoutParams3.height);
                        if (layoutParams3.width == 0 && mode == 1073741824) {
                            virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i30 > 0 ? i30 : 0, BasicMeasure.EXACTLY), childMeasureSpec);
                        } else {
                            int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i30;
                            if (measuredWidth2 < 0) {
                                measuredWidth2 = 0;
                            }
                            virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, BasicMeasure.EXACTLY), childMeasureSpec);
                        }
                        f2 = f6 - f7;
                        i9 = i26 - i30;
                        iCombineMeasuredStates = View.combineMeasuredStates(i28, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                    } else {
                        f2 = f6;
                        i9 = i26;
                        iCombineMeasuredStates = i28;
                    }
                    if (z7) {
                        this.mTotalLength += virtualChildAt3.getMeasuredWidth() + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3);
                    } else {
                        int i31 = this.mTotalLength;
                        this.mTotalLength = Math.max(i31, virtualChildAt3.getMeasuredWidth() + i31 + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3));
                    }
                    boolean z13 = mode2 != 1073741824 && layoutParams3.height == -1;
                    int i32 = layoutParams3.topMargin + layoutParams3.bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i32;
                    int iMax7 = Math.max(iMax6, measuredHeight2);
                    int iMax8 = Math.max(i27, z13 ? i32 : measuredHeight2);
                    z = z12 && layoutParams3.height == -1;
                    if (z5 && (baseline = virtualChildAt3.getBaseline()) != -1) {
                        int i33 = ((((layoutParams3.gravity < 0 ? this.mGravity : layoutParams3.gravity) & 112) >> 4) & (-2)) >> 1;
                        iArr[i33] = Math.max(iArr[i33], baseline);
                        iArr2[i33] = Math.max(iArr2[i33], measuredHeight2 - baseline);
                    }
                    i5 = iCombineMeasuredStates;
                    f = f2;
                    i8 = iMax8;
                    i7 = iMax7;
                    i6 = i9;
                }
                i29++;
                iMax6 = i7;
                i27 = i8;
                f6 = f;
                z12 = z;
                i26 = i6;
                i28 = i5;
            }
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            if (iArr[1] != -1 || iArr[0] != -1 || iArr[2] != -1 || iArr[3] != -1) {
                iMax6 = Math.max(iMax6, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
            }
            i3 = iMax6;
            z10 = z12;
            i4 = i27;
            i17 = i28;
        } else {
            int iMax9 = Math.max(i18, i19);
            if (z6 && mode != 1073741824) {
                int i34 = 0;
                while (true) {
                    int i35 = i34;
                    if (i35 >= virtualChildCount) {
                        break;
                    }
                    View virtualChildAt4 = getVirtualChildAt(i35);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(iMax3, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), BasicMeasure.EXACTLY));
                    }
                    i34 = i35 + 1;
                }
            }
            i3 = iMax5;
            i4 = iMax9;
        }
        if (z10 || mode2 == 1073741824) {
            i4 = i3;
        }
        setMeasuredDimension(((-16777216) & i17) | iResolveSizeAndState, View.resolveSizeAndState(Math.max(i4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, i17 << 16));
        if (z9) {
            forceUniformHeight(virtualChildCount, i);
        }
    }

    int measureNullChild(int i) {
        return 0;
    }

    void measureVertical(int i, int i2) {
        int i3;
        int i4;
        int iCombineMeasuredStates;
        int i5;
        float f;
        boolean z;
        int i6;
        int i7;
        float f2;
        int childrenSkipCount;
        int i8;
        boolean z2;
        boolean z3;
        int iMax;
        int iMax2;
        int i9;
        boolean z4;
        int i10;
        int i11;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i12 = this.mBaselineAlignedChildIndex;
        boolean z5 = this.mUseLargestChild;
        boolean z6 = false;
        int i13 = 0;
        float f3 = 0.0f;
        int i14 = 0;
        int childrenSkipCount2 = 0;
        boolean z7 = false;
        int i15 = 0;
        int i16 = 0;
        int iMax3 = 0;
        boolean z8 = true;
        while (childrenSkipCount2 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount2);
                z3 = z8;
                i10 = iMax3;
                i9 = i15;
                i11 = i13;
                z4 = z6;
            } else if (virtualChildAt.getVisibility() == 8) {
                childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                z3 = z8;
                i10 = iMax3;
                i9 = i15;
                i11 = i13;
                z4 = z6;
            } else {
                if (hasDividerBeforeChildAt(childrenSkipCount2)) {
                    this.mTotalLength += this.mDividerHeight;
                }
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                float f4 = f3 + layoutParams.weight;
                if (mode2 == 1073741824 && layoutParams.height == 0 && layoutParams.weight > 0.0f) {
                    int i17 = this.mTotalLength;
                    this.mTotalLength = Math.max(i17, layoutParams.topMargin + i17 + layoutParams.bottomMargin);
                    z6 = true;
                } else {
                    if (layoutParams.height != 0 || layoutParams.weight <= 0.0f) {
                        i8 = Integer.MIN_VALUE;
                    } else {
                        layoutParams.height = -2;
                        i8 = 0;
                    }
                    measureChildBeforeLayout(virtualChildAt, childrenSkipCount2, i, 0, i2, f4 == 0.0f ? this.mTotalLength : 0);
                    if (i8 != Integer.MIN_VALUE) {
                        layoutParams.height = i8;
                    }
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    int i18 = this.mTotalLength;
                    this.mTotalLength = Math.max(i18, i18 + measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt));
                    if (z5) {
                        iMax3 = Math.max(measuredHeight, iMax3);
                    }
                }
                if (i12 >= 0 && i12 == childrenSkipCount2 + 1) {
                    this.mBaselineChildTop = this.mTotalLength;
                }
                if (childrenSkipCount2 < i12 && layoutParams.weight > 0.0f) {
                    throw new RuntimeException(NPStringFog.decode(new byte[]{116, 24, 6, 89, 81, 10, 81, 24, 10, 87, 24, 42, 92, 86, 0, 80, 74, 42, 84, 65, 10, 68, 76, 70, 66, 81, 17, 89, 24, 15, 91, 92, 0, 73, 24, 10, 80, 75, 22, 17, 76, 14, 84, 86, 69, 92, 122, 7, 70, 93, 9, 88, 86, 3, 116, 84, 12, 86, 86, 3, 81, 123, 13, 88, 84, 2, 124, 86, 1, 84, 64, 70, 93, 89, 22, 17, 79, 3, 92, 95, 13, 69, 24, 88, 21, 8, 73, 17, 79, 14, 92, 91, 13, 17, 79, 9, 91, 31, 17, 17, 79, 9, 71, 83, 75, 17, 24, 35, 92, 76, 13, 84, 74, 70, 71, 93, 8, 94, 78, 3, 21, 76, 13, 84, 24, 17, 80, 81, 2, 89, 76, 74, 21, 87, 23, 17, 92, 9, 91, 31, 17, 17, 75, 3, 65, 24, 8, 115, 89, 21, 80, 84, 12, 95, 93, 39, 89, 81, 2, 95, 93, 2, 118, 80, 12, 93, 92, 47, 91, 92, 0, 73, 22}, "58e18f", 235));
                }
                boolean z9 = false;
                if (mode == 1073741824 || layoutParams.width != -1) {
                    z2 = z7;
                } else {
                    z2 = true;
                    z9 = true;
                }
                int i19 = layoutParams.rightMargin + layoutParams.leftMargin;
                int measuredWidth = virtualChildAt.getMeasuredWidth() + i19;
                int iMax4 = Math.max(i13, measuredWidth);
                int iCombineMeasuredStates2 = View.combineMeasuredStates(i15, virtualChildAt.getMeasuredState());
                z3 = z8 && layoutParams.width == -1;
                if (layoutParams.weight > 0.0f) {
                    iMax2 = Math.max(i16, z9 ? i19 : measuredWidth);
                    iMax = i14;
                } else {
                    if (!z9) {
                        i19 = measuredWidth;
                    }
                    iMax = Math.max(i14, i19);
                    iMax2 = i16;
                }
                childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                i16 = iMax2;
                i9 = iCombineMeasuredStates2;
                i14 = iMax;
                z4 = z6;
                i10 = iMax3;
                i11 = iMax4;
                z7 = z2;
                f3 = f4;
            }
            childrenSkipCount2++;
            z8 = z3;
            iMax3 = i10;
            i15 = i9;
            i13 = i11;
            z6 = z4;
        }
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerHeight;
        }
        if (z5 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.mTotalLength = 0;
            int i20 = 0;
            while (i20 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i20);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i20);
                    childrenSkipCount = i20;
                } else if (virtualChildAt2.getVisibility() == 8) {
                    childrenSkipCount = getChildrenSkipCount(virtualChildAt2, i20) + i20;
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    int i21 = this.mTotalLength;
                    this.mTotalLength = Math.max(i21, layoutParams2.bottomMargin + i21 + iMax3 + layoutParams2.topMargin + getNextLocationOffset(virtualChildAt2));
                    childrenSkipCount = i20;
                }
                i20 = childrenSkipCount + 1;
            }
        }
        this.mTotalLength += getPaddingTop() + getPaddingBottom();
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), i2, 0);
        int i22 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z6 || (i22 != 0 && f3 > 0.0f)) {
            float f5 = this.mWeightSum;
            if (f5 > 0.0f) {
                f3 = f5;
            }
            this.mTotalLength = 0;
            boolean z10 = z8;
            int i23 = i15;
            int i24 = i14;
            float f6 = f3;
            int i25 = i22;
            int i26 = i13;
            int i27 = 0;
            while (i27 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i27);
                if (virtualChildAt3.getVisibility() == 8) {
                    i6 = i24;
                    f2 = f6;
                    i7 = i26;
                    z = z10;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f7 = layoutParams3.weight;
                    if (f7 > 0.0f) {
                        int i28 = (int) ((i25 * f7) / f6);
                        int i29 = i25 - i28;
                        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams3.leftMargin + layoutParams3.rightMargin, layoutParams3.width);
                        if (layoutParams3.height == 0 && mode2 == 1073741824) {
                            if (i28 <= 0) {
                                i28 = 0;
                            }
                            virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i28, BasicMeasure.EXACTLY));
                        } else {
                            int measuredHeight2 = i28 + virtualChildAt3.getMeasuredHeight();
                            if (measuredHeight2 < 0) {
                                measuredHeight2 = 0;
                            }
                            virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, BasicMeasure.EXACTLY));
                        }
                        iCombineMeasuredStates = View.combineMeasuredStates(i23, virtualChildAt3.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                        f = f6 - f7;
                        i5 = i29;
                    } else {
                        iCombineMeasuredStates = i23;
                        i5 = i25;
                        f = f6;
                    }
                    int i30 = layoutParams3.leftMargin + layoutParams3.rightMargin;
                    int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i30;
                    int iMax5 = Math.max(i26, measuredWidth2);
                    if (!(mode != 1073741824 && layoutParams3.width == -1)) {
                        i30 = measuredWidth2;
                    }
                    int iMax6 = Math.max(i24, i30);
                    z = z10 && layoutParams3.width == -1;
                    int i31 = this.mTotalLength;
                    this.mTotalLength = Math.max(i31, layoutParams3.bottomMargin + virtualChildAt3.getMeasuredHeight() + i31 + layoutParams3.topMargin + getNextLocationOffset(virtualChildAt3));
                    i6 = iMax6;
                    i7 = iMax5;
                    int i32 = iCombineMeasuredStates;
                    f2 = f;
                    i25 = i5;
                    i23 = i32;
                }
                i24 = i6;
                i26 = i7;
                i27++;
                z10 = z;
                f6 = f2;
            }
            this.mTotalLength += getPaddingTop() + getPaddingBottom();
            z8 = z10;
            i15 = i23;
            i3 = i24;
            i4 = i26;
        } else {
            int iMax7 = Math.max(i14, i16);
            if (z5 && mode2 != 1073741824) {
                int i33 = 0;
                while (true) {
                    int i34 = i33;
                    if (i34 >= virtualChildCount) {
                        break;
                    }
                    View virtualChildAt4 = getVirtualChildAt(i34);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredWidth(), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(iMax3, BasicMeasure.EXACTLY));
                    }
                    i33 = i34 + 1;
                }
            }
            i3 = iMax7;
            i4 = i13;
        }
        if (z8 || mode == 1073741824) {
            i3 = i4;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, i15), iResolveSizeAndState);
        if (z7) {
            forceUniformWidth(virtualChildCount, i2);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.mBaselineAlignedChildIndex = i;
            return;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{81, 89, 68, 4, 20, 3, 95, 81, 80, 15, 81, 6, 19, 91, 95, 8, 88, 6, 19, 81, 89, 5, 81, 26, 19, 87, 66, 21, 20, 13, 85, 24, 69, 0, 90, 5, 86, 24, 31, 81, 24, 66}, "387a4b", 17329) + getChildCount() + NPStringFog.decode(new byte[]{25}, "09052c", 1.5204059E9f));
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            int i2 = (8388615 & i) == 0 ? 8388611 | i : i;
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.mGravity = i2;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i3 = this.mGravity;
        if ((8388615 & i3) != i2) {
            this.mGravity = i2 | (i3 & (-8388616));
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.mGravity;
        if ((i3 & 112) != i2) {
            this.mGravity = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
