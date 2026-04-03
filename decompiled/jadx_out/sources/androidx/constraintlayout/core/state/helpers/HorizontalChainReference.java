package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.State;
import java.util.Iterator;

/* JADX INFO: loaded from: classes40.dex */
public class HorizontalChainReference extends ChainReference {

    /* JADX INFO: renamed from: androidx.constraintlayout.core.state.helpers.HorizontalChainReference$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$androidx$constraintlayout$core$state$State$Chain;

        static {
            int[] iArr = new int[State.Chain.values().length];
            $SwitchMap$androidx$constraintlayout$core$state$State$Chain = iArr;
            try {
                iArr[State.Chain.SPREAD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$state$State$Chain[State.Chain.SPREAD_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$state$State$Chain[State.Chain.PACKED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public HorizontalChainReference(State state) {
        super(state, State.Helper.HORIZONTAL_CHAIN);
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public void apply() {
        ConstraintReference constraintReference = null;
        Iterator<Object> it = this.mReferences.iterator();
        while (it.hasNext()) {
            this.mState.constraints(it.next()).clearHorizontal();
        }
        Iterator<Object> it2 = this.mReferences.iterator();
        ConstraintReference constraintReference2 = null;
        while (it2.hasNext()) {
            ConstraintReference constraintReferenceConstraints = this.mState.constraints(it2.next());
            if (constraintReference2 == null) {
                if (this.mStartToStart != null) {
                    constraintReferenceConstraints.startToStart(this.mStartToStart).margin(this.mMarginStart);
                    constraintReference2 = constraintReferenceConstraints;
                } else if (this.mStartToEnd != null) {
                    constraintReferenceConstraints.startToEnd(this.mStartToEnd).margin(this.mMarginStart);
                    constraintReference2 = constraintReferenceConstraints;
                } else {
                    constraintReferenceConstraints.startToStart(State.PARENT);
                    constraintReference2 = constraintReferenceConstraints;
                }
            }
            if (constraintReference != null) {
                constraintReference.endToStart(constraintReferenceConstraints.getKey());
                constraintReferenceConstraints.startToEnd(constraintReference.getKey());
            }
            constraintReference = constraintReferenceConstraints;
        }
        if (constraintReference != null) {
            if (this.mEndToStart != null) {
                constraintReference.endToStart(this.mEndToStart).margin(this.mMarginEnd);
            } else if (this.mEndToEnd != null) {
                constraintReference.endToEnd(this.mEndToEnd).margin(this.mMarginEnd);
            } else {
                constraintReference.endToEnd(State.PARENT);
            }
        }
        if (constraintReference2 == null) {
        }
        if (this.mBias != 0.5f) {
            constraintReference2.horizontalBias(this.mBias);
        }
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$state$State$Chain[this.mStyle.ordinal()]) {
            case 1:
                constraintReference2.setHorizontalChainStyle(0);
                break;
            case 2:
                constraintReference2.setHorizontalChainStyle(1);
                break;
            case 3:
                constraintReference2.setHorizontalChainStyle(2);
                break;
        }
    }
}
