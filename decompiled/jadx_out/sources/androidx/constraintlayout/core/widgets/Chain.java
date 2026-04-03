package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes40.dex */
public class Chain {
    private static final boolean DEBUG = false;
    public static final boolean USE_CHAIN_OPTIMIZATION = false;

    /* JADX WARN: Removed duplicated region for block: B:129:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0275  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void applyChainConstraints(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r21, androidx.constraintlayout.core.LinearSystem r22, int r23, int r24, androidx.constraintlayout.core.widgets.ChainHead r25) {
        /*
            Method dump skipped, instruction units count: 1407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Chain.applyChainConstraints(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer, androidx.constraintlayout.core.LinearSystem, int, int, androidx.constraintlayout.core.widgets.ChainHead):void");
    }

    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i) {
        int i2;
        int i3;
        ChainHead[] chainHeadArr;
        if (i == 0) {
            i3 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i2 = 0;
        } else {
            i2 = 2;
            i3 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            ChainHead chainHead = chainHeadArr[i4];
            chainHead.define();
            if (arrayList == null || (arrayList != null && arrayList.contains(chainHead.mFirst))) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
            }
        }
    }
}
