package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes40.dex */
public class ChainHead {
    private boolean mDefined;
    protected ConstraintWidget mFirst;
    protected ConstraintWidget mFirstMatchConstraintWidget;
    protected ConstraintWidget mFirstVisibleWidget;
    protected boolean mHasComplexMatchWeights;
    protected boolean mHasDefinedWeights;
    protected boolean mHasRatio;
    protected boolean mHasUndefinedWeights;
    protected ConstraintWidget mHead;
    private boolean mIsRtl;
    protected ConstraintWidget mLast;
    protected ConstraintWidget mLastMatchConstraintWidget;
    protected ConstraintWidget mLastVisibleWidget;
    boolean mOptimizable;
    private int mOrientation;
    int mTotalMargins;
    int mTotalSize;
    protected float mTotalWeight = 0.0f;
    int mVisibleWidgets;
    protected ArrayList<ConstraintWidget> mWeightedMatchConstraintsWidgets;
    protected int mWidgetsCount;
    protected int mWidgetsMatchCount;

    public ChainHead(ConstraintWidget constraintWidget, int i, boolean z) {
        this.mIsRtl = false;
        this.mFirst = constraintWidget;
        this.mOrientation = i;
        this.mIsRtl = z;
    }

    private void defineChainProperties() {
        ConstraintWidget constraintWidget;
        int i = this.mOrientation * 2;
        ConstraintWidget constraintWidget2 = this.mFirst;
        this.mOptimizable = true;
        ConstraintWidget constraintWidget3 = this.mFirst;
        ConstraintWidget constraintWidget4 = this.mFirst;
        ConstraintWidget constraintWidget5 = constraintWidget2;
        boolean z = false;
        while (!z) {
            this.mWidgetsCount++;
            constraintWidget3.mNextChainWidget[this.mOrientation] = null;
            constraintWidget3.mListNextMatchConstraintsWidget[this.mOrientation] = null;
            if (constraintWidget3.getVisibility() != 8) {
                this.mVisibleWidgets++;
                if (constraintWidget3.getDimensionBehaviour(this.mOrientation) != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mTotalSize += constraintWidget3.getLength(this.mOrientation);
                }
                int margin = this.mTotalSize + constraintWidget3.mListAnchors[i].getMargin();
                this.mTotalSize = margin;
                this.mTotalSize = margin + constraintWidget3.mListAnchors[i + 1].getMargin();
                int margin2 = this.mTotalMargins + constraintWidget3.mListAnchors[i].getMargin();
                this.mTotalMargins = margin2;
                this.mTotalMargins = margin2 + constraintWidget3.mListAnchors[i + 1].getMargin();
                if (this.mFirstVisibleWidget == null) {
                    this.mFirstVisibleWidget = constraintWidget3;
                }
                this.mLastVisibleWidget = constraintWidget3;
                if (constraintWidget3.mListDimensionBehaviors[this.mOrientation] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    if (constraintWidget3.mResolvedMatchConstraintDefault[this.mOrientation] == 0 || constraintWidget3.mResolvedMatchConstraintDefault[this.mOrientation] == 3 || constraintWidget3.mResolvedMatchConstraintDefault[this.mOrientation] == 2) {
                        this.mWidgetsMatchCount++;
                        float f = constraintWidget3.mWeight[this.mOrientation];
                        if (f > 0.0f) {
                            this.mTotalWeight += constraintWidget3.mWeight[this.mOrientation];
                        }
                        if (isMatchConstraintEqualityCandidate(constraintWidget3, this.mOrientation)) {
                            if (f < 0.0f) {
                                this.mHasUndefinedWeights = true;
                            } else {
                                this.mHasDefinedWeights = true;
                            }
                            if (this.mWeightedMatchConstraintsWidgets == null) {
                                this.mWeightedMatchConstraintsWidgets = new ArrayList<>();
                            }
                            this.mWeightedMatchConstraintsWidgets.add(constraintWidget3);
                        }
                        if (this.mFirstMatchConstraintWidget == null) {
                            this.mFirstMatchConstraintWidget = constraintWidget3;
                        }
                        ConstraintWidget constraintWidget6 = this.mLastMatchConstraintWidget;
                        if (constraintWidget6 != null) {
                            constraintWidget6.mListNextMatchConstraintsWidget[this.mOrientation] = constraintWidget3;
                        }
                        this.mLastMatchConstraintWidget = constraintWidget3;
                    }
                    if (this.mOrientation == 0) {
                        if (constraintWidget3.mMatchConstraintDefaultWidth != 0 || constraintWidget3.mMatchConstraintMinWidth != 0 || constraintWidget3.mMatchConstraintMaxWidth != 0) {
                            this.mOptimizable = false;
                        }
                    } else if (constraintWidget3.mMatchConstraintDefaultHeight != 0 || constraintWidget3.mMatchConstraintMinHeight != 0 || constraintWidget3.mMatchConstraintMaxHeight != 0) {
                        this.mOptimizable = false;
                    }
                    if (constraintWidget3.mDimensionRatio != 0.0f) {
                        this.mOptimizable = false;
                        this.mHasRatio = true;
                    }
                }
            }
            if (constraintWidget5 != constraintWidget3) {
                constraintWidget5.mNextChainWidget[this.mOrientation] = constraintWidget3;
            }
            ConstraintAnchor constraintAnchor = constraintWidget3.mListAnchors[i + 1].mTarget;
            if (constraintAnchor != null) {
                constraintWidget = constraintAnchor.mOwner;
                if (constraintWidget.mListAnchors[i].mTarget == null || constraintWidget.mListAnchors[i].mTarget.mOwner != constraintWidget3) {
                    constraintWidget = null;
                }
            } else {
                constraintWidget = null;
            }
            if (constraintWidget == null) {
                z = true;
                constraintWidget = constraintWidget3;
            }
            ConstraintWidget constraintWidget7 = constraintWidget;
            constraintWidget5 = constraintWidget3;
            constraintWidget3 = constraintWidget7;
        }
        ConstraintWidget constraintWidget8 = this.mFirstVisibleWidget;
        if (constraintWidget8 != null) {
            this.mTotalSize -= constraintWidget8.mListAnchors[i].getMargin();
        }
        ConstraintWidget constraintWidget9 = this.mLastVisibleWidget;
        if (constraintWidget9 != null) {
            this.mTotalSize -= constraintWidget9.mListAnchors[i + 1].getMargin();
        }
        this.mLast = constraintWidget3;
        if (this.mOrientation == 0 && this.mIsRtl) {
            this.mHead = constraintWidget3;
        } else {
            this.mHead = this.mFirst;
        }
        this.mHasComplexMatchWeights = this.mHasDefinedWeights && this.mHasUndefinedWeights;
    }

    private static boolean isMatchConstraintEqualityCandidate(ConstraintWidget constraintWidget, int i) {
        return constraintWidget.getVisibility() != 8 && constraintWidget.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && (constraintWidget.mResolvedMatchConstraintDefault[i] == 0 || constraintWidget.mResolvedMatchConstraintDefault[i] == 3);
    }

    public void define() {
        if (!this.mDefined) {
            defineChainProperties();
        }
        this.mDefined = true;
    }

    public ConstraintWidget getFirst() {
        return this.mFirst;
    }

    public ConstraintWidget getFirstMatchConstraintWidget() {
        return this.mFirstMatchConstraintWidget;
    }

    public ConstraintWidget getFirstVisibleWidget() {
        return this.mFirstVisibleWidget;
    }

    public ConstraintWidget getHead() {
        return this.mHead;
    }

    public ConstraintWidget getLast() {
        return this.mLast;
    }

    public ConstraintWidget getLastMatchConstraintWidget() {
        return this.mLastMatchConstraintWidget;
    }

    public ConstraintWidget getLastVisibleWidget() {
        return this.mLastVisibleWidget;
    }

    public float getTotalWeight() {
        return this.mTotalWeight;
    }
}
