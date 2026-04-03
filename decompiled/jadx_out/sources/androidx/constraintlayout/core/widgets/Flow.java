package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes40.dex */
public class Flow extends VirtualLayout {
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_NONE = 0;
    private ConstraintWidget[] mDisplayedWidgets;
    private int mHorizontalStyle = -1;
    private int mVerticalStyle = -1;
    private int mFirstHorizontalStyle = -1;
    private int mFirstVerticalStyle = -1;
    private int mLastHorizontalStyle = -1;
    private int mLastVerticalStyle = -1;
    private float mHorizontalBias = 0.5f;
    private float mVerticalBias = 0.5f;
    private float mFirstHorizontalBias = 0.5f;
    private float mFirstVerticalBias = 0.5f;
    private float mLastHorizontalBias = 0.5f;
    private float mLastVerticalBias = 0.5f;
    private int mHorizontalGap = 0;
    private int mVerticalGap = 0;
    private int mHorizontalAlign = 2;
    private int mVerticalAlign = 2;
    private int mWrapMode = 0;
    private int mMaxElementsWrap = -1;
    private int mOrientation = 0;
    private ArrayList<WidgetsList> mChainList = new ArrayList<>();
    private ConstraintWidget[] mAlignedBiggestElementsInRows = null;
    private ConstraintWidget[] mAlignedBiggestElementsInCols = null;
    private int[] mAlignedDimensions = null;
    private int mDisplayedWidgetsCount = 0;

    private class WidgetsList {
        private ConstraintAnchor mBottom;
        private ConstraintAnchor mLeft;
        private int mMax;
        private int mOrientation;
        private int mPaddingBottom;
        private int mPaddingLeft;
        private int mPaddingRight;
        private int mPaddingTop;
        private ConstraintAnchor mRight;
        private ConstraintAnchor mTop;
        final Flow this$0;
        private ConstraintWidget biggest = null;
        int biggestDimension = 0;
        private int mWidth = 0;
        private int mHeight = 0;
        private int mStartIndex = 0;
        private int mCount = 0;
        private int mNbMatchConstraintsWidgets = 0;

        public WidgetsList(Flow flow, int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2) {
            this.this$0 = flow;
            this.mOrientation = 0;
            this.mPaddingLeft = 0;
            this.mPaddingTop = 0;
            this.mPaddingRight = 0;
            this.mPaddingBottom = 0;
            this.mMax = 0;
            this.mOrientation = i;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = flow.getPaddingLeft();
            this.mPaddingTop = flow.getPaddingTop();
            this.mPaddingRight = flow.getPaddingRight();
            this.mPaddingBottom = flow.getPaddingBottom();
            this.mMax = i2;
        }

        private void recomputeDimensions() {
            this.mWidth = 0;
            this.mHeight = 0;
            this.biggest = null;
            this.biggestDimension = 0;
            int i = this.mCount;
            for (int i2 = 0; i2 < i && this.mStartIndex + i2 < this.this$0.mDisplayedWidgetsCount; i2++) {
                ConstraintWidget constraintWidget = this.this$0.mDisplayedWidgets[this.mStartIndex + i2];
                if (this.mOrientation == 0) {
                    int width = constraintWidget.getWidth();
                    int i3 = this.this$0.mHorizontalGap;
                    if (constraintWidget.getVisibility() == 8) {
                        i3 = 0;
                    }
                    this.mWidth = i3 + width + this.mWidth;
                    int widgetHeight = this.this$0.getWidgetHeight(constraintWidget, this.mMax);
                    if (this.biggest == null || this.biggestDimension < widgetHeight) {
                        this.biggest = constraintWidget;
                        this.biggestDimension = widgetHeight;
                        this.mHeight = widgetHeight;
                    }
                } else {
                    int widgetWidth = this.this$0.getWidgetWidth(constraintWidget, this.mMax);
                    int widgetHeight2 = this.this$0.getWidgetHeight(constraintWidget, this.mMax);
                    int i4 = this.this$0.mVerticalGap;
                    if (constraintWidget.getVisibility() == 8) {
                        i4 = 0;
                    }
                    this.mHeight = i4 + widgetHeight2 + this.mHeight;
                    if (this.biggest == null || this.biggestDimension < widgetWidth) {
                        this.biggest = constraintWidget;
                        this.biggestDimension = widgetWidth;
                        this.mWidth = widgetWidth;
                    }
                }
            }
        }

        public void add(ConstraintWidget constraintWidget) {
            if (this.mOrientation == 0) {
                int widgetWidth = this.this$0.getWidgetWidth(constraintWidget, this.mMax);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetWidth = 0;
                }
                this.mWidth = widgetWidth + (constraintWidget.getVisibility() != 8 ? this.this$0.mHorizontalGap : 0) + this.mWidth;
                int widgetHeight = this.this$0.getWidgetHeight(constraintWidget, this.mMax);
                if (this.biggest == null || this.biggestDimension < widgetHeight) {
                    this.biggest = constraintWidget;
                    this.biggestDimension = widgetHeight;
                    this.mHeight = widgetHeight;
                }
            } else {
                int widgetWidth2 = this.this$0.getWidgetWidth(constraintWidget, this.mMax);
                int widgetHeight2 = this.this$0.getWidgetHeight(constraintWidget, this.mMax);
                if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetHeight2 = 0;
                }
                this.mHeight = widgetHeight2 + (constraintWidget.getVisibility() != 8 ? this.this$0.mVerticalGap : 0) + this.mHeight;
                if (this.biggest == null || this.biggestDimension < widgetWidth2) {
                    this.biggest = constraintWidget;
                    this.biggestDimension = widgetWidth2;
                    this.mWidth = widgetWidth2;
                }
            }
            this.mCount++;
        }

        public void clear() {
            this.biggestDimension = 0;
            this.biggest = null;
            this.mWidth = 0;
            this.mHeight = 0;
            this.mStartIndex = 0;
            this.mCount = 0;
            this.mNbMatchConstraintsWidgets = 0;
        }

        public void createConstraints(boolean z, int i, boolean z2) {
            ConstraintWidget constraintWidget;
            int i2;
            int i3 = this.mCount;
            for (int i4 = 0; i4 < i3 && this.mStartIndex + i4 < this.this$0.mDisplayedWidgetsCount; i4++) {
                ConstraintWidget constraintWidget2 = this.this$0.mDisplayedWidgets[this.mStartIndex + i4];
                if (constraintWidget2 != null) {
                    constraintWidget2.resetAnchors();
                }
            }
            if (i3 == 0 || this.biggest == null) {
                return;
            }
            boolean z3 = z2 && i == 0;
            int i5 = -1;
            int i6 = -1;
            int i7 = 0;
            while (i7 < i3) {
                int i8 = z ? (i3 - 1) - i7 : i7;
                if (this.mStartIndex + i8 >= this.this$0.mDisplayedWidgetsCount) {
                    break;
                }
                ConstraintWidget constraintWidget3 = this.this$0.mDisplayedWidgets[i8 + this.mStartIndex];
                if (constraintWidget3 == null || constraintWidget3.getVisibility() != 0) {
                    i2 = i6;
                } else {
                    i5 = i5 == -1 ? i7 : i5;
                    i2 = i7;
                }
                i7++;
                i6 = i2;
            }
            ConstraintWidget constraintWidget4 = null;
            if (this.mOrientation != 0) {
                ConstraintWidget constraintWidget5 = this.biggest;
                constraintWidget5.setHorizontalChainStyle(this.this$0.mHorizontalStyle);
                int i9 = this.mPaddingLeft;
                if (i > 0) {
                    i9 += this.this$0.mHorizontalGap;
                }
                if (z) {
                    constraintWidget5.mRight.connect(this.mRight, i9);
                    if (z2) {
                        constraintWidget5.mLeft.connect(this.mLeft, this.mPaddingRight);
                    }
                    if (i > 0) {
                        this.mRight.mOwner.mLeft.connect(constraintWidget5.mRight, 0);
                    }
                } else {
                    constraintWidget5.mLeft.connect(this.mLeft, i9);
                    if (z2) {
                        constraintWidget5.mRight.connect(this.mRight, this.mPaddingRight);
                    }
                    if (i > 0) {
                        this.mLeft.mOwner.mRight.connect(constraintWidget5.mLeft, 0);
                    }
                }
                for (int i10 = 0; i10 < i3 && this.mStartIndex + i10 < this.this$0.mDisplayedWidgetsCount; i10++) {
                    ConstraintWidget constraintWidget6 = this.this$0.mDisplayedWidgets[this.mStartIndex + i10];
                    if (constraintWidget6 != null) {
                        if (i10 == 0) {
                            constraintWidget6.connect(constraintWidget6.mTop, this.mTop, this.mPaddingTop);
                            int i11 = this.this$0.mVerticalStyle;
                            float f = this.this$0.mVerticalBias;
                            if (this.mStartIndex == 0 && this.this$0.mFirstVerticalStyle != -1) {
                                i11 = this.this$0.mFirstVerticalStyle;
                                f = this.this$0.mFirstVerticalBias;
                            } else if (z2 && this.this$0.mLastVerticalStyle != -1) {
                                i11 = this.this$0.mLastVerticalStyle;
                                f = this.this$0.mLastVerticalBias;
                            }
                            constraintWidget6.setVerticalChainStyle(i11);
                            constraintWidget6.setVerticalBiasPercent(f);
                        }
                        if (i10 == i3 - 1) {
                            constraintWidget6.connect(constraintWidget6.mBottom, this.mBottom, this.mPaddingBottom);
                        }
                        if (constraintWidget4 != null) {
                            constraintWidget6.mTop.connect(constraintWidget4.mBottom, this.this$0.mVerticalGap);
                            if (i10 == i5) {
                                constraintWidget6.mTop.setGoneMargin(this.mPaddingTop);
                            }
                            constraintWidget4.mBottom.connect(constraintWidget6.mTop, 0);
                            if (i10 == i6 + 1) {
                                constraintWidget4.mBottom.setGoneMargin(this.mPaddingBottom);
                            }
                        }
                        if (constraintWidget6 != constraintWidget5) {
                            if (!z) {
                                switch (this.this$0.mHorizontalAlign) {
                                    case 0:
                                        constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                        break;
                                    case 1:
                                        constraintWidget6.mRight.connect(constraintWidget5.mRight, 0);
                                        break;
                                    case 2:
                                        if (z3) {
                                            constraintWidget6.mLeft.connect(this.mLeft, this.mPaddingLeft);
                                            constraintWidget6.mRight.connect(this.mRight, this.mPaddingRight);
                                        } else {
                                            constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                            constraintWidget6.mRight.connect(constraintWidget5.mRight, 0);
                                        }
                                        break;
                                }
                            } else {
                                switch (this.this$0.mHorizontalAlign) {
                                    case 0:
                                        constraintWidget6.mRight.connect(constraintWidget5.mRight, 0);
                                        break;
                                    case 1:
                                        constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                        break;
                                    case 2:
                                        constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                        constraintWidget6.mRight.connect(constraintWidget5.mRight, 0);
                                        break;
                                }
                            }
                        }
                        constraintWidget4 = constraintWidget6;
                    }
                }
                return;
            }
            ConstraintWidget constraintWidget7 = this.biggest;
            constraintWidget7.setVerticalChainStyle(this.this$0.mVerticalStyle);
            int i12 = this.mPaddingTop;
            if (i > 0) {
                i12 += this.this$0.mVerticalGap;
            }
            constraintWidget7.mTop.connect(this.mTop, i12);
            if (z2) {
                constraintWidget7.mBottom.connect(this.mBottom, this.mPaddingBottom);
            }
            if (i > 0) {
                this.mTop.mOwner.mBottom.connect(constraintWidget7.mTop, 0);
            }
            if (this.this$0.mVerticalAlign != 3 || constraintWidget7.hasBaseline()) {
                constraintWidget = constraintWidget7;
            } else {
                for (int i13 = 0; i13 < i3; i13++) {
                    int i14 = z ? (i3 - 1) - i13 : i13;
                    if (this.mStartIndex + i14 >= this.this$0.mDisplayedWidgetsCount) {
                        constraintWidget = constraintWidget7;
                        break;
                    } else {
                        constraintWidget = this.this$0.mDisplayedWidgets[i14 + this.mStartIndex];
                        if (constraintWidget.hasBaseline()) {
                            break;
                        }
                    }
                }
                constraintWidget = constraintWidget7;
            }
            ConstraintWidget constraintWidget8 = null;
            for (int i15 = 0; i15 < i3; i15++) {
                int i16 = z ? (i3 - 1) - i15 : i15;
                if (this.mStartIndex + i16 >= this.this$0.mDisplayedWidgetsCount) {
                    return;
                }
                ConstraintWidget constraintWidget9 = this.this$0.mDisplayedWidgets[this.mStartIndex + i16];
                if (constraintWidget9 != null) {
                    if (i15 == 0) {
                        constraintWidget9.connect(constraintWidget9.mLeft, this.mLeft, this.mPaddingLeft);
                    }
                    if (i16 == 0) {
                        int i17 = this.this$0.mHorizontalStyle;
                        float f2 = this.this$0.mHorizontalBias;
                        if (z) {
                            f2 = 1.0f - f2;
                        }
                        if (this.mStartIndex == 0 && this.this$0.mFirstHorizontalStyle != -1) {
                            i17 = this.this$0.mFirstHorizontalStyle;
                            f2 = this.this$0.mFirstHorizontalBias;
                            if (z) {
                                f2 = 1.0f - f2;
                            }
                        } else if (z2 && this.this$0.mLastHorizontalStyle != -1) {
                            i17 = this.this$0.mLastHorizontalStyle;
                            f2 = this.this$0.mLastHorizontalBias;
                            if (z) {
                                f2 = 1.0f - f2;
                            }
                        }
                        constraintWidget9.setHorizontalChainStyle(i17);
                        constraintWidget9.setHorizontalBiasPercent(f2);
                    }
                    if (i15 == i3 - 1) {
                        constraintWidget9.connect(constraintWidget9.mRight, this.mRight, this.mPaddingRight);
                    }
                    if (constraintWidget8 != null) {
                        constraintWidget9.mLeft.connect(constraintWidget8.mRight, this.this$0.mHorizontalGap);
                        if (i15 == i5) {
                            constraintWidget9.mLeft.setGoneMargin(this.mPaddingLeft);
                        }
                        constraintWidget8.mRight.connect(constraintWidget9.mLeft, 0);
                        if (i15 == i6 + 1) {
                            constraintWidget8.mRight.setGoneMargin(this.mPaddingRight);
                        }
                    }
                    if (constraintWidget9 != constraintWidget7) {
                        if (this.this$0.mVerticalAlign != 3 || !constraintWidget.hasBaseline() || constraintWidget9 == constraintWidget || !constraintWidget9.hasBaseline()) {
                            switch (this.this$0.mVerticalAlign) {
                                case 0:
                                    constraintWidget9.mTop.connect(constraintWidget7.mTop, 0);
                                    break;
                                case 1:
                                    constraintWidget9.mBottom.connect(constraintWidget7.mBottom, 0);
                                    break;
                                default:
                                    if (z3) {
                                        constraintWidget9.mTop.connect(this.mTop, this.mPaddingTop);
                                        constraintWidget9.mBottom.connect(this.mBottom, this.mPaddingBottom);
                                    } else {
                                        constraintWidget9.mTop.connect(constraintWidget7.mTop, 0);
                                        constraintWidget9.mBottom.connect(constraintWidget7.mBottom, 0);
                                    }
                                    break;
                            }
                        } else {
                            constraintWidget9.mBaseline.connect(constraintWidget.mBaseline, 0);
                        }
                    }
                    constraintWidget8 = constraintWidget9;
                }
            }
        }

        public int getHeight() {
            return this.mOrientation == 1 ? this.mHeight - this.this$0.mVerticalGap : this.mHeight;
        }

        public int getWidth() {
            return this.mOrientation == 0 ? this.mWidth - this.this$0.mHorizontalGap : this.mWidth;
        }

        public void measureMatchConstraints(int i) {
            int i2 = this.mNbMatchConstraintsWidgets;
            if (i2 == 0) {
                return;
            }
            int i3 = this.mCount;
            int i4 = i / i2;
            for (int i5 = 0; i5 < i3 && this.mStartIndex + i5 < this.this$0.mDisplayedWidgetsCount; i5++) {
                ConstraintWidget constraintWidget = this.this$0.mDisplayedWidgets[this.mStartIndex + i5];
                if (this.mOrientation == 0) {
                    if (constraintWidget != null && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                        this.this$0.measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i4, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                    }
                } else if (constraintWidget != null && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                    this.this$0.measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i4);
                }
            }
            recomputeDimensions();
        }

        public void setStartIndex(int i) {
            this.mStartIndex = i;
        }

        public void setup(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2, int i3, int i4, int i5, int i6) {
            this.mOrientation = i;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = i2;
            this.mPaddingTop = i3;
            this.mPaddingRight = i4;
            this.mPaddingBottom = i5;
            this.mMax = i6;
        }
    }

    private void createAlignedConstraints(boolean z) {
        ConstraintWidget constraintWidget;
        float f;
        int i;
        if (this.mAlignedDimensions == null || this.mAlignedBiggestElementsInCols == null || this.mAlignedBiggestElementsInRows == null) {
            return;
        }
        for (int i2 = 0; i2 < this.mDisplayedWidgetsCount; i2++) {
            this.mDisplayedWidgets[i2].resetAnchors();
        }
        int[] iArr = this.mAlignedDimensions;
        int i3 = iArr[0];
        int i4 = iArr[1];
        ConstraintWidget constraintWidget2 = null;
        float f2 = this.mHorizontalBias;
        int i5 = 0;
        while (i5 < i3) {
            if (z) {
                i = (i3 - i5) - 1;
                f = 1.0f - this.mHorizontalBias;
            } else {
                f = f2;
                i = i5;
            }
            ConstraintWidget constraintWidget3 = this.mAlignedBiggestElementsInCols[i];
            if (constraintWidget3 == null) {
                constraintWidget3 = constraintWidget2;
            } else if (constraintWidget3.getVisibility() == 8) {
                constraintWidget3 = constraintWidget2;
            } else {
                if (i5 == 0) {
                    constraintWidget3.connect(constraintWidget3.mLeft, this.mLeft, getPaddingLeft());
                    constraintWidget3.setHorizontalChainStyle(this.mHorizontalStyle);
                    constraintWidget3.setHorizontalBiasPercent(f);
                }
                if (i5 == i3 - 1) {
                    constraintWidget3.connect(constraintWidget3.mRight, this.mRight, getPaddingRight());
                }
                if (i5 > 0 && constraintWidget2 != null) {
                    constraintWidget3.connect(constraintWidget3.mLeft, constraintWidget2.mRight, this.mHorizontalGap);
                    constraintWidget2.connect(constraintWidget2.mRight, constraintWidget3.mLeft, 0);
                }
            }
            i5++;
            constraintWidget2 = constraintWidget3;
            f2 = f;
        }
        ConstraintWidget constraintWidget4 = constraintWidget2;
        for (int i6 = 0; i6 < i4; i6++) {
            ConstraintWidget constraintWidget5 = this.mAlignedBiggestElementsInRows[i6];
            if (constraintWidget5 != null && constraintWidget5.getVisibility() != 8) {
                if (i6 == 0) {
                    constraintWidget5.connect(constraintWidget5.mTop, this.mTop, getPaddingTop());
                    constraintWidget5.setVerticalChainStyle(this.mVerticalStyle);
                    constraintWidget5.setVerticalBiasPercent(this.mVerticalBias);
                }
                if (i6 == i4 - 1) {
                    constraintWidget5.connect(constraintWidget5.mBottom, this.mBottom, getPaddingBottom());
                }
                if (i6 > 0 && constraintWidget4 != null) {
                    constraintWidget5.connect(constraintWidget5.mTop, constraintWidget4.mBottom, this.mVerticalGap);
                    constraintWidget4.connect(constraintWidget4.mBottom, constraintWidget5.mTop, 0);
                }
                constraintWidget4 = constraintWidget5;
            }
        }
        for (int i7 = 0; i7 < i3; i7++) {
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = (i8 * i3) + i7;
                if (this.mOrientation == 1) {
                    i9 = (i7 * i4) + i8;
                }
                ConstraintWidget[] constraintWidgetArr = this.mDisplayedWidgets;
                if (i9 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i9]) != null && constraintWidget.getVisibility() != 8) {
                    ConstraintWidget constraintWidget6 = this.mAlignedBiggestElementsInCols[i7];
                    ConstraintWidget constraintWidget7 = this.mAlignedBiggestElementsInRows[i8];
                    if (constraintWidget != constraintWidget6) {
                        constraintWidget.connect(constraintWidget.mLeft, constraintWidget6.mLeft, 0);
                        constraintWidget.connect(constraintWidget.mRight, constraintWidget6.mRight, 0);
                    }
                    if (constraintWidget != constraintWidget7) {
                        constraintWidget.connect(constraintWidget.mTop, constraintWidget7.mTop, 0);
                        constraintWidget.connect(constraintWidget.mBottom, constraintWidget7.mBottom, 0);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getWidgetHeight(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            if (constraintWidget.mMatchConstraintDefaultHeight == 0) {
                return 0;
            }
            if (constraintWidget.mMatchConstraintDefaultHeight == 2) {
                int i2 = (int) (constraintWidget.mMatchConstraintPercentHeight * i);
                if (i2 == constraintWidget.getHeight()) {
                    return i2;
                }
                constraintWidget.setMeasureRequested(true);
                measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i2);
                return i2;
            }
            if (constraintWidget.mMatchConstraintDefaultHeight == 1) {
                return constraintWidget.getHeight();
            }
            if (constraintWidget.mMatchConstraintDefaultHeight == 3) {
                return (int) ((constraintWidget.getWidth() * constraintWidget.mDimensionRatio) + 0.5f);
            }
        }
        return constraintWidget.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getWidgetWidth(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            if (constraintWidget.mMatchConstraintDefaultWidth == 0) {
                return 0;
            }
            if (constraintWidget.mMatchConstraintDefaultWidth == 2) {
                int i2 = (int) (constraintWidget.mMatchConstraintPercentWidth * i);
                if (i2 == constraintWidget.getWidth()) {
                    return i2;
                }
                constraintWidget.setMeasureRequested(true);
                measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i2, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                return i2;
            }
            if (constraintWidget.mMatchConstraintDefaultWidth == 1) {
                return constraintWidget.getWidth();
            }
            if (constraintWidget.mMatchConstraintDefaultWidth == 3) {
                return (int) ((constraintWidget.getHeight() * constraintWidget.mDimensionRatio) + 0.5f);
            }
        }
        return constraintWidget.getWidth();
    }

    private void measureAligned(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        int i4;
        int i5;
        int iCeil;
        int iCeil2;
        boolean z;
        ConstraintWidget constraintWidget;
        int i6;
        int i7;
        boolean z2 = false;
        if (i2 == 0) {
            i5 = this.mMaxElementsWrap;
            if (i5 <= 0) {
                i5 = 0;
                int i8 = 0;
                int i9 = 0;
                while (i8 < i) {
                    if (i8 > 0) {
                        i9 += this.mHorizontalGap;
                    }
                    ConstraintWidget constraintWidget2 = constraintWidgetArr[i8];
                    if (constraintWidget2 == null) {
                        int i10 = i5;
                        i7 = i9;
                        i6 = i10;
                    } else {
                        int widgetWidth = getWidgetWidth(constraintWidget2, i3) + i9;
                        if (widgetWidth > i3) {
                            break;
                        }
                        i6 = i5 + 1;
                        i7 = widgetWidth;
                    }
                    i8++;
                    int i11 = i6;
                    i9 = i7;
                    i5 = i11;
                }
                i4 = 0;
            } else {
                i4 = 0;
            }
        } else {
            int i12 = this.mMaxElementsWrap;
            if (i12 <= 0) {
                int widgetHeight = 0;
                i12 = 0;
                for (int i13 = 0; i13 < i; i13++) {
                    if (i13 > 0) {
                        widgetHeight += this.mVerticalGap;
                    }
                    ConstraintWidget constraintWidget3 = constraintWidgetArr[i13];
                    if (constraintWidget3 != null) {
                        widgetHeight += getWidgetHeight(constraintWidget3, i3);
                        if (widgetHeight > i3) {
                            i4 = i12;
                            i5 = 0;
                            break;
                        }
                        i12++;
                    }
                }
                i4 = i12;
                i5 = 0;
            } else {
                i4 = i12;
                i5 = 0;
            }
        }
        if (this.mAlignedDimensions == null) {
            this.mAlignedDimensions = new int[2];
        }
        if ((i4 == 0 && i2 == 1) || (i5 == 0 && i2 == 0)) {
            z2 = true;
            int i14 = i5;
            iCeil = i4;
            iCeil2 = i14;
        } else {
            int i15 = i5;
            iCeil = i4;
            iCeil2 = i15;
        }
        while (!z2) {
            if (i2 == 0) {
                iCeil = (int) Math.ceil(i / iCeil2);
            } else {
                iCeil2 = (int) Math.ceil(i / iCeil);
            }
            ConstraintWidget[] constraintWidgetArr2 = this.mAlignedBiggestElementsInCols;
            if (constraintWidgetArr2 == null || constraintWidgetArr2.length < iCeil2) {
                this.mAlignedBiggestElementsInCols = new ConstraintWidget[iCeil2];
            } else {
                Arrays.fill(constraintWidgetArr2, (Object) null);
            }
            ConstraintWidget[] constraintWidgetArr3 = this.mAlignedBiggestElementsInRows;
            if (constraintWidgetArr3 == null || constraintWidgetArr3.length < iCeil) {
                this.mAlignedBiggestElementsInRows = new ConstraintWidget[iCeil];
            } else {
                Arrays.fill(constraintWidgetArr3, (Object) null);
            }
            for (int i16 = 0; i16 < iCeil2; i16++) {
                for (int i17 = 0; i17 < iCeil; i17++) {
                    int i18 = (i17 * iCeil2) + i16;
                    if (i2 == 1) {
                        i18 = (i16 * iCeil) + i17;
                    }
                    if (i18 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i18]) != null) {
                        int widgetWidth2 = getWidgetWidth(constraintWidget, i3);
                        ConstraintWidget[] constraintWidgetArr4 = this.mAlignedBiggestElementsInCols;
                        if (constraintWidgetArr4[i16] == null || constraintWidgetArr4[i16].getWidth() < widgetWidth2) {
                            this.mAlignedBiggestElementsInCols[i16] = constraintWidget;
                        }
                        int widgetHeight2 = getWidgetHeight(constraintWidget, i3);
                        ConstraintWidget[] constraintWidgetArr5 = this.mAlignedBiggestElementsInRows;
                        if (constraintWidgetArr5[i17] == null || constraintWidgetArr5[i17].getHeight() < widgetHeight2) {
                            this.mAlignedBiggestElementsInRows[i17] = constraintWidget;
                        }
                    }
                }
            }
            int widgetWidth3 = 0;
            for (int i19 = 0; i19 < iCeil2; i19++) {
                ConstraintWidget constraintWidget4 = this.mAlignedBiggestElementsInCols[i19];
                if (constraintWidget4 != null) {
                    if (i19 > 0) {
                        widgetWidth3 += this.mHorizontalGap;
                    }
                    widgetWidth3 += getWidgetWidth(constraintWidget4, i3);
                }
            }
            int widgetHeight3 = 0;
            for (int i20 = 0; i20 < iCeil; i20++) {
                ConstraintWidget constraintWidget5 = this.mAlignedBiggestElementsInRows[i20];
                if (constraintWidget5 != null) {
                    if (i20 > 0) {
                        widgetHeight3 += this.mVerticalGap;
                    }
                    widgetHeight3 += getWidgetHeight(constraintWidget5, i3);
                }
            }
            iArr[0] = widgetWidth3;
            iArr[1] = widgetHeight3;
            if (i2 == 0) {
                if (widgetWidth3 <= i3) {
                    z = true;
                } else if (iCeil2 > 1) {
                    iCeil2--;
                    z = z2;
                } else {
                    z = true;
                }
            } else if (widgetHeight3 <= i3) {
                z = true;
            } else if (iCeil > 1) {
                iCeil--;
                z = z2;
            } else {
                z = true;
            }
            z2 = z;
        }
        int[] iArr2 = this.mAlignedDimensions;
        iArr2[0] = iCeil2;
        iArr2[1] = iCeil;
    }

    private void measureChainWrap(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        int i4;
        int i5;
        int i6;
        int width;
        int iMax;
        int i7;
        int i8;
        if (i == 0) {
            return;
        }
        this.mChainList.clear();
        WidgetsList widgetsList = new WidgetsList(this, i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
        this.mChainList.add(widgetsList);
        int i9 = 0;
        if (i2 != 0) {
            int i10 = 0;
            int i11 = 0;
            WidgetsList widgetsList2 = widgetsList;
            while (true) {
                i4 = i9;
                if (i11 >= i) {
                    break;
                }
                ConstraintWidget constraintWidget = constraintWidgetArr[i11];
                int widgetHeight = getWidgetHeight(constraintWidget, i3);
                i9 = constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? i4 + 1 : i4;
                boolean z = (i10 == i3 || (this.mVerticalGap + i10) + widgetHeight > i3) && widgetsList2.biggest != null;
                if (!z && i11 > 0 && (i6 = this.mMaxElementsWrap) > 0 && i11 % i6 == 0) {
                    z = true;
                }
                if (z) {
                    WidgetsList widgetsList3 = new WidgetsList(this, i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
                    widgetsList3.setStartIndex(i11);
                    this.mChainList.add(widgetsList3);
                    widgetsList2 = widgetsList3;
                    i5 = widgetHeight;
                } else {
                    i5 = i11 > 0 ? this.mVerticalGap + widgetHeight + i10 : widgetHeight;
                }
                widgetsList2.add(constraintWidget);
                i11++;
                i10 = i5;
            }
        } else {
            int i12 = 0;
            int i13 = 0;
            WidgetsList widgetsList4 = widgetsList;
            i4 = 0;
            while (i13 < i) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i13];
                int widgetWidth = getWidgetWidth(constraintWidget2, i3);
                int i14 = constraintWidget2.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? i4 + 1 : i4;
                boolean z2 = (i12 == i3 || (this.mHorizontalGap + i12) + widgetWidth > i3) && widgetsList4.biggest != null;
                if (!z2 && i13 > 0 && (i8 = this.mMaxElementsWrap) > 0 && i13 % i8 == 0) {
                    z2 = true;
                }
                if (z2) {
                    WidgetsList widgetsList5 = new WidgetsList(this, i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
                    widgetsList5.setStartIndex(i13);
                    this.mChainList.add(widgetsList5);
                    widgetsList4 = widgetsList5;
                    i7 = widgetWidth;
                } else {
                    i7 = i13 > 0 ? this.mHorizontalGap + widgetWidth + i12 : widgetWidth;
                }
                widgetsList4.add(constraintWidget2);
                i13++;
                i12 = i7;
                i4 = i14;
            }
        }
        int size = this.mChainList.size();
        ConstraintAnchor constraintAnchor = this.mLeft;
        ConstraintAnchor constraintAnchor2 = this.mTop;
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = this.mBottom;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        boolean z3 = getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i4 > 0 && z3) {
            int i15 = 0;
            while (true) {
                int i16 = i15;
                if (i16 >= size) {
                    break;
                }
                WidgetsList widgetsList6 = this.mChainList.get(i16);
                if (i2 == 0) {
                    widgetsList6.measureMatchConstraints(i3 - widgetsList6.getWidth());
                } else {
                    widgetsList6.measureMatchConstraints(i3 - widgetsList6.getHeight());
                }
                i15 = i16 + 1;
            }
        }
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        ConstraintAnchor constraintAnchor5 = constraintAnchor2;
        while (i17 < size) {
            WidgetsList widgetsList7 = this.mChainList.get(i17);
            if (i2 == 0) {
                if (i17 < size - 1) {
                    constraintAnchor4 = this.mChainList.get(i17 + 1).biggest.mTop;
                    paddingBottom = 0;
                } else {
                    constraintAnchor4 = this.mBottom;
                    paddingBottom = getPaddingBottom();
                }
                ConstraintAnchor constraintAnchor6 = widgetsList7.biggest.mBottom;
                widgetsList7.setup(i2, constraintAnchor, constraintAnchor5, constraintAnchor3, constraintAnchor4, paddingLeft, paddingTop, paddingRight, paddingBottom, i3);
                paddingTop = 0;
                width = Math.max(i19, widgetsList7.getWidth());
                iMax = widgetsList7.getHeight() + i18;
                if (i17 > 0) {
                    iMax += this.mVerticalGap;
                }
                constraintAnchor5 = constraintAnchor6;
            } else {
                if (i17 < size - 1) {
                    constraintAnchor3 = this.mChainList.get(i17 + 1).biggest.mLeft;
                    paddingRight = 0;
                } else {
                    constraintAnchor3 = this.mRight;
                    paddingRight = getPaddingRight();
                }
                ConstraintAnchor constraintAnchor7 = widgetsList7.biggest.mRight;
                widgetsList7.setup(i2, constraintAnchor, constraintAnchor5, constraintAnchor3, constraintAnchor4, paddingLeft, paddingTop, paddingRight, paddingBottom, i3);
                paddingLeft = 0;
                width = widgetsList7.getWidth() + i19;
                iMax = Math.max(i18, widgetsList7.getHeight());
                if (i17 > 0) {
                    width += this.mHorizontalGap;
                    constraintAnchor = constraintAnchor7;
                } else {
                    constraintAnchor = constraintAnchor7;
                }
            }
            i17++;
            i18 = iMax;
            i19 = width;
        }
        iArr[0] = i19;
        iArr[1] = i18;
    }

    private void measureNoWrap(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        WidgetsList widgetsList;
        if (i == 0) {
            return;
        }
        if (this.mChainList.size() == 0) {
            widgetsList = new WidgetsList(this, i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
            this.mChainList.add(widgetsList);
        } else {
            widgetsList = this.mChainList.get(0);
            widgetsList.clear();
            widgetsList.setup(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom(), i3);
        }
        for (int i4 = 0; i4 < i; i4++) {
            widgetsList.add(constraintWidgetArr[i4]);
        }
        iArr[0] = widgetsList.getWidth();
        iArr[1] = widgetsList.getHeight();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z) {
        super.addToSolver(linearSystem, z);
        boolean z2 = getParent() != null && ((ConstraintWidgetContainer) getParent()).isRtl();
        switch (this.mWrapMode) {
            case 0:
                if (this.mChainList.size() > 0) {
                    this.mChainList.get(0).createConstraints(z2, 0, true);
                }
                break;
            case 1:
                int size = this.mChainList.size();
                int i = 0;
                while (i < size) {
                    this.mChainList.get(i).createConstraints(z2, i, i == size + (-1));
                    i++;
                }
                break;
            case 2:
                createAlignedConstraints(z2);
                break;
        }
        needsCallbackFromSolver(false);
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.copy(constraintWidget, map);
        Flow flow = (Flow) constraintWidget;
        this.mHorizontalStyle = flow.mHorizontalStyle;
        this.mVerticalStyle = flow.mVerticalStyle;
        this.mFirstHorizontalStyle = flow.mFirstHorizontalStyle;
        this.mFirstVerticalStyle = flow.mFirstVerticalStyle;
        this.mLastHorizontalStyle = flow.mLastHorizontalStyle;
        this.mLastVerticalStyle = flow.mLastVerticalStyle;
        this.mHorizontalBias = flow.mHorizontalBias;
        this.mVerticalBias = flow.mVerticalBias;
        this.mFirstHorizontalBias = flow.mFirstHorizontalBias;
        this.mFirstVerticalBias = flow.mFirstVerticalBias;
        this.mLastHorizontalBias = flow.mLastHorizontalBias;
        this.mLastVerticalBias = flow.mLastVerticalBias;
        this.mHorizontalGap = flow.mHorizontalGap;
        this.mVerticalGap = flow.mVerticalGap;
        this.mHorizontalAlign = flow.mHorizontalAlign;
        this.mVerticalAlign = flow.mVerticalAlign;
        this.mWrapMode = flow.mWrapMode;
        this.mMaxElementsWrap = flow.mMaxElementsWrap;
        this.mOrientation = flow.mOrientation;
    }

    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public void measure(int i, int i2, int i3, int i4) {
        ConstraintWidget[] constraintWidgetArr;
        int i5;
        if (this.mWidgetsCount > 0 && !measureChildren()) {
            setMeasure(0, 0);
            needsCallbackFromSolver(false);
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int[] iArr = new int[2];
        int i6 = this.mOrientation;
        int i7 = i6 == 1 ? (i4 - paddingTop) - paddingBottom : (i2 - paddingLeft) - paddingRight;
        if (i6 == 0) {
            if (this.mHorizontalStyle == -1) {
                this.mHorizontalStyle = 0;
            }
            if (this.mVerticalStyle == -1) {
                this.mVerticalStyle = 0;
            }
        } else {
            if (this.mHorizontalStyle == -1) {
                this.mHorizontalStyle = 0;
            }
            if (this.mVerticalStyle == -1) {
                this.mVerticalStyle = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr2 = this.mWidgets;
        int i8 = 0;
        for (int i9 = 0; i9 < this.mWidgetsCount; i9++) {
            if (this.mWidgets[i9].getVisibility() == 8) {
                i8++;
            }
        }
        int i10 = this.mWidgetsCount;
        if (i8 > 0) {
            ConstraintWidget[] constraintWidgetArr3 = new ConstraintWidget[this.mWidgetsCount - i8];
            int i11 = 0;
            for (int i12 = 0; i12 < this.mWidgetsCount; i12++) {
                ConstraintWidget constraintWidget = this.mWidgets[i12];
                if (constraintWidget.getVisibility() != 8) {
                    constraintWidgetArr3[i11] = constraintWidget;
                    i11++;
                }
            }
            i5 = i11;
            constraintWidgetArr = constraintWidgetArr3;
        } else {
            constraintWidgetArr = constraintWidgetArr2;
            i5 = i10;
        }
        this.mDisplayedWidgets = constraintWidgetArr;
        this.mDisplayedWidgetsCount = i5;
        switch (this.mWrapMode) {
            case 0:
                measureNoWrap(constraintWidgetArr, i5, this.mOrientation, i7, iArr);
                break;
            case 1:
                measureChainWrap(constraintWidgetArr, i5, this.mOrientation, i7, iArr);
                break;
            case 2:
                measureAligned(constraintWidgetArr, i5, this.mOrientation, i7, iArr);
                break;
        }
        int i13 = iArr[0] + paddingLeft + paddingRight;
        int i14 = iArr[1] + paddingTop + paddingBottom;
        if (i != 1073741824) {
            i2 = i == Integer.MIN_VALUE ? Math.min(i13, i2) : i == 0 ? i13 : 0;
        }
        if (i3 != 1073741824) {
            i4 = i3 == Integer.MIN_VALUE ? Math.min(i14, i4) : i3 == 0 ? i14 : 0;
        }
        setMeasure(i2, i4);
        setWidth(i2);
        setHeight(i4);
        needsCallbackFromSolver(this.mWidgetsCount > 0);
    }

    public void setFirstHorizontalBias(float f) {
        this.mFirstHorizontalBias = f;
    }

    public void setFirstHorizontalStyle(int i) {
        this.mFirstHorizontalStyle = i;
    }

    public void setFirstVerticalBias(float f) {
        this.mFirstVerticalBias = f;
    }

    public void setFirstVerticalStyle(int i) {
        this.mFirstVerticalStyle = i;
    }

    public void setHorizontalAlign(int i) {
        this.mHorizontalAlign = i;
    }

    public void setHorizontalBias(float f) {
        this.mHorizontalBias = f;
    }

    public void setHorizontalGap(int i) {
        this.mHorizontalGap = i;
    }

    public void setHorizontalStyle(int i) {
        this.mHorizontalStyle = i;
    }

    public void setLastHorizontalBias(float f) {
        this.mLastHorizontalBias = f;
    }

    public void setLastHorizontalStyle(int i) {
        this.mLastHorizontalStyle = i;
    }

    public void setLastVerticalBias(float f) {
        this.mLastVerticalBias = f;
    }

    public void setLastVerticalStyle(int i) {
        this.mLastVerticalStyle = i;
    }

    public void setMaxElementsWrap(int i) {
        this.mMaxElementsWrap = i;
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
    }

    public void setVerticalAlign(int i) {
        this.mVerticalAlign = i;
    }

    public void setVerticalBias(float f) {
        this.mVerticalBias = f;
    }

    public void setVerticalGap(int i) {
        this.mVerticalGap = i;
    }

    public void setVerticalStyle(int i) {
        this.mVerticalStyle = i;
    }

    public void setWrapMode(int i) {
        this.mWrapMode = i;
    }
}
