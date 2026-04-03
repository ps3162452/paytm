package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class Barrier extends HelperWidget {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;
    private static final boolean USE_RELAX_GONE = false;
    private static final boolean USE_RESOLUTION = true;
    private int mBarrierType = 0;
    private boolean mAllowsGoneWidget = USE_RESOLUTION;
    private int mMargin = 0;
    boolean resolved = false;

    public Barrier() {
    }

    public Barrier(String str) {
        setDebugName(str);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z) {
        boolean z2;
        int i;
        this.mListAnchors[0] = this.mLeft;
        this.mListAnchors[2] = this.mTop;
        this.mListAnchors[1] = this.mRight;
        this.mListAnchors[3] = this.mBottom;
        for (int i2 = 0; i2 < this.mListAnchors.length; i2++) {
            this.mListAnchors[i2].mSolverVariable = linearSystem.createObjectVariable(this.mListAnchors[i2]);
        }
        int i3 = this.mBarrierType;
        if (i3 < 0 || i3 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor = this.mListAnchors[this.mBarrierType];
        if (!this.resolved) {
            allSolved();
        }
        if (this.resolved) {
            this.resolved = false;
            int i4 = this.mBarrierType;
            if (i4 == 0 || i4 == 1) {
                linearSystem.addEquality(this.mLeft.mSolverVariable, this.mX);
                linearSystem.addEquality(this.mRight.mSolverVariable, this.mX);
                return;
            } else {
                if (i4 == 2 || i4 == 3) {
                    linearSystem.addEquality(this.mTop.mSolverVariable, this.mY);
                    linearSystem.addEquality(this.mBottom.mSolverVariable, this.mY);
                    return;
                }
                return;
            }
        }
        int i5 = 0;
        while (true) {
            if (i5 >= this.mWidgetsCount) {
                z2 = false;
                break;
            }
            ConstraintWidget constraintWidget = this.mWidgets[i5];
            if (this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) {
                int i6 = this.mBarrierType;
                if ((i6 == 0 || i6 == 1) && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) {
                    z2 = true;
                    break;
                }
                int i7 = this.mBarrierType;
                if ((i7 == 2 || i7 == 3) && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null) {
                    z2 = true;
                    break;
                }
            }
            i5++;
        }
        boolean z3 = this.mLeft.hasCenteredDependents() || this.mRight.hasCenteredDependents();
        boolean z4 = this.mTop.hasCenteredDependents() || this.mBottom.hasCenteredDependents();
        int i8 = !z2 && (((i = this.mBarrierType) == 0 && z3) || ((i == 2 && z4) || ((i == 1 && z3) || (i == 3 && z4)))) ? 5 : 4;
        for (int i9 = 0; i9 < this.mWidgetsCount; i9++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i9];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.mBarrierType]);
                constraintWidget2.mListAnchors[this.mBarrierType].mSolverVariable = solverVariableCreateObjectVariable;
                int i10 = (constraintWidget2.mListAnchors[this.mBarrierType].mTarget == null || constraintWidget2.mListAnchors[this.mBarrierType].mTarget.mOwner != this) ? 0 : constraintWidget2.mListAnchors[this.mBarrierType].mMargin + 0;
                int i11 = this.mBarrierType;
                if (i11 == 0 || i11 == 2) {
                    linearSystem.addLowerBarrier(constraintAnchor.mSolverVariable, solverVariableCreateObjectVariable, this.mMargin - i10, z2);
                } else {
                    linearSystem.addGreaterBarrier(constraintAnchor.mSolverVariable, solverVariableCreateObjectVariable, this.mMargin + i10, z2);
                }
                linearSystem.addEquality(constraintAnchor.mSolverVariable, solverVariableCreateObjectVariable, i10 + this.mMargin, i8);
            }
        }
        int i12 = this.mBarrierType;
        if (i12 == 0) {
            linearSystem.addEquality(this.mRight.mSolverVariable, this.mLeft.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 0);
            return;
        }
        if (i12 == 1) {
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mRight.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 0);
        } else if (i12 == 2) {
            linearSystem.addEquality(this.mBottom.mSolverVariable, this.mTop.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 0);
        } else if (i12 == 3) {
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mBottom.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 0);
        }
    }

    public boolean allSolved() {
        boolean z = true;
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget = this.mWidgets[i];
            if (this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) {
                int i2 = this.mBarrierType;
                if ((i2 == 0 || i2 == 1) && !constraintWidget.isResolvedHorizontally()) {
                    z = false;
                } else {
                    int i3 = this.mBarrierType;
                    if ((i3 == 2 || i3 == 3) && !constraintWidget.isResolvedVertically()) {
                        z = false;
                    }
                }
            }
        }
        if (!z || this.mWidgetsCount <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z2 = false;
        for (int i4 = 0; i4 < this.mWidgetsCount; i4++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i4];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                if (!z2) {
                    int i5 = this.mBarrierType;
                    if (i5 == 0) {
                        iMax = constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT).getFinalValue();
                    } else if (i5 == 1) {
                        iMax = constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getFinalValue();
                    } else if (i5 == 2) {
                        iMax = constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP).getFinalValue();
                    } else if (i5 == 3) {
                        iMax = constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getFinalValue();
                    }
                    z2 = true;
                }
                int i6 = this.mBarrierType;
                if (i6 == 0) {
                    iMax = Math.min(iMax, constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT).getFinalValue());
                } else if (i6 == 1) {
                    iMax = Math.max(iMax, constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getFinalValue());
                } else if (i6 == 2) {
                    iMax = Math.min(iMax, constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP).getFinalValue());
                } else if (i6 == 3) {
                    iMax = Math.max(iMax, constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getFinalValue());
                }
            }
        }
        int i7 = iMax + this.mMargin;
        int i8 = this.mBarrierType;
        if (i8 == 0 || i8 == 1) {
            setFinalHorizontal(i7, i7);
        } else {
            setFinalVertical(i7, i7);
        }
        this.resolved = USE_RESOLUTION;
        return USE_RESOLUTION;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return USE_RESOLUTION;
    }

    @Deprecated
    public boolean allowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.copy(constraintWidget, map);
        Barrier barrier = (Barrier) constraintWidget;
        this.mBarrierType = barrier.mBarrierType;
        this.mAllowsGoneWidget = barrier.mAllowsGoneWidget;
        this.mMargin = barrier.mMargin;
    }

    public boolean getAllowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    public int getBarrierType() {
        return this.mBarrierType;
    }

    public int getMargin() {
        return this.mMargin;
    }

    public int getOrientation() {
        switch (this.mBarrierType) {
            case 0:
            case 1:
                return 0;
            case 2:
            case 3:
                return 1;
            default:
                return -1;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedHorizontally() {
        return this.resolved;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedVertically() {
        return this.resolved;
    }

    protected void markWidgets() {
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget = this.mWidgets[i];
            if (this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) {
                int i2 = this.mBarrierType;
                if (i2 == 0 || i2 == 1) {
                    constraintWidget.setInBarrier(0, USE_RESOLUTION);
                } else if (i2 == 2 || i2 == 3) {
                    constraintWidget.setInBarrier(1, USE_RESOLUTION);
                }
            }
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.mAllowsGoneWidget = z;
    }

    public void setBarrierType(int i) {
        this.mBarrierType = i;
    }

    public void setMargin(int i) {
        this.mMargin = i;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String toString() {
        String str = NPStringFog.decode(new byte[]{99, 118, 80, 68, 17, 95, 93, 70, 108, 22}, "8416c6", -4.32471586E8d) + getDebugName() + NPStringFog.decode(new byte[]{22, 72}, "630f39", false, USE_RESOLUTION);
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget = this.mWidgets[i];
            if (i > 0) {
                str = str + NPStringFog.decode(new byte[]{28, 70}, "0ff0f8", -8.33625E8f);
            }
            str = str + constraintWidget.getDebugName();
        }
        return str + NPStringFog.decode(new byte[]{25}, "d62ba7", false, false);
    }
}
