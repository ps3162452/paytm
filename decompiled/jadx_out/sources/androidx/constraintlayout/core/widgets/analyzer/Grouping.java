package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes40.dex */
public class Grouping {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_GROUPING = false;

    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.constraintlayout.core.widgets.analyzer.WidgetGroup findDependents(androidx.constraintlayout.core.widgets.ConstraintWidget r6, int r7, java.util.ArrayList<androidx.constraintlayout.core.widgets.analyzer.WidgetGroup> r8, androidx.constraintlayout.core.widgets.analyzer.WidgetGroup r9) {
        /*
            r2 = 0
            r5 = -1
            if (r7 != 0) goto L8b
            int r0 = r6.horizontalGroup
            r3 = r0
        L7:
            if (r3 == r5) goto L95
            if (r9 == 0) goto Lf
            int r0 = r9.id
            if (r3 == r0) goto L95
        Lf:
            r1 = r2
        L10:
            int r0 = r8.size()
            if (r1 >= r0) goto Lba
            java.lang.Object r0 = r8.get(r1)
            androidx.constraintlayout.core.widgets.analyzer.WidgetGroup r0 = (androidx.constraintlayout.core.widgets.analyzer.WidgetGroup) r0
            int r4 = r0.getId()
            if (r4 != r3) goto L90
            if (r9 == 0) goto L2a
            r9.moveTo(r7, r0)
            r8.remove(r9)
        L2a:
            r3 = r0
        L2b:
            if (r3 != 0) goto Lb5
            boolean r0 = r6 instanceof androidx.constraintlayout.core.widgets.HelperWidget
            if (r0 == 0) goto Lb3
            r0 = r6
            androidx.constraintlayout.core.widgets.HelperWidget r0 = (androidx.constraintlayout.core.widgets.HelperWidget) r0
            int r4 = r0.findGroupInDependents(r7)
            if (r4 == r5) goto Lb3
            r1 = r2
        L3b:
            int r0 = r8.size()
            if (r1 >= r0) goto Lb3
            java.lang.Object r0 = r8.get(r1)
            androidx.constraintlayout.core.widgets.analyzer.WidgetGroup r0 = (androidx.constraintlayout.core.widgets.analyzer.WidgetGroup) r0
            int r5 = r0.getId()
            if (r5 != r4) goto L99
        L4d:
            if (r0 != 0) goto L54
            androidx.constraintlayout.core.widgets.analyzer.WidgetGroup r0 = new androidx.constraintlayout.core.widgets.analyzer.WidgetGroup
            r0.<init>(r7)
        L54:
            r8.add(r0)
            r1 = r0
        L58:
            boolean r0 = r1.add(r6)
            if (r0 == 0) goto L8a
            boolean r0 = r6 instanceof androidx.constraintlayout.core.widgets.Guideline
            if (r0 == 0) goto L73
            r0 = r6
            androidx.constraintlayout.core.widgets.Guideline r0 = (androidx.constraintlayout.core.widgets.Guideline) r0
            androidx.constraintlayout.core.widgets.ConstraintAnchor r3 = r0.getAnchor()
            int r0 = r0.getOrientation()
            if (r0 != 0) goto L70
            r2 = 1
        L70:
            r3.findDependents(r2, r8, r1)
        L73:
            if (r7 != 0) goto L9d
            int r0 = r1.getId()
            r6.horizontalGroup = r0
            androidx.constraintlayout.core.widgets.ConstraintAnchor r0 = r6.mLeft
            r0.findDependents(r7, r8, r1)
            androidx.constraintlayout.core.widgets.ConstraintAnchor r0 = r6.mRight
            r0.findDependents(r7, r8, r1)
        L85:
            androidx.constraintlayout.core.widgets.ConstraintAnchor r0 = r6.mCenter
            r0.findDependents(r7, r8, r1)
        L8a:
            return r1
        L8b:
            int r0 = r6.verticalGroup
            r3 = r0
            goto L7
        L90:
            int r0 = r1 + 1
            r1 = r0
            goto L10
        L95:
            if (r3 == r5) goto Lb7
            r1 = r9
            goto L8a
        L99:
            int r0 = r1 + 1
            r1 = r0
            goto L3b
        L9d:
            int r0 = r1.getId()
            r6.verticalGroup = r0
            androidx.constraintlayout.core.widgets.ConstraintAnchor r0 = r6.mTop
            r0.findDependents(r7, r8, r1)
            androidx.constraintlayout.core.widgets.ConstraintAnchor r0 = r6.mBaseline
            r0.findDependents(r7, r8, r1)
            androidx.constraintlayout.core.widgets.ConstraintAnchor r0 = r6.mBottom
            r0.findDependents(r7, r8, r1)
            goto L85
        Lb3:
            r0 = r3
            goto L4d
        Lb5:
            r1 = r3
            goto L58
        Lb7:
            r3 = r9
            goto L2b
        Lba:
            r0 = r9
            goto L2a
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.Grouping.findDependents(androidx.constraintlayout.core.widgets.ConstraintWidget, int, java.util.ArrayList, androidx.constraintlayout.core.widgets.analyzer.WidgetGroup):androidx.constraintlayout.core.widgets.analyzer.WidgetGroup");
    }

    private static WidgetGroup findGroup(ArrayList<WidgetGroup> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            WidgetGroup widgetGroup = arrayList.get(i2);
            if (i == widgetGroup.id) {
                return widgetGroup;
            }
        }
        return null;
    }

    public static boolean simpleSolvingPass(ConstraintWidgetContainer constraintWidgetContainer, BasicMeasure.Measurer measurer) {
        WidgetGroup widgetGroup;
        WidgetGroup widgetGroup2;
        int i;
        WidgetGroup widgetGroup3;
        int i2;
        WidgetGroup widgetGroup4;
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        ArrayList<HelperWidget> arrayList3 = null;
        ArrayList<HelperWidget> arrayList4 = null;
        ArrayList arrayList5 = null;
        ArrayList arrayList6 = null;
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget constraintWidget = children.get(i3);
            if (!validInGroup(constraintWidgetContainer.getHorizontalDimensionBehaviour(), constraintWidgetContainer.getVerticalDimensionBehaviour(), constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getVerticalDimensionBehaviour()) || (constraintWidget instanceof Flow)) {
                return false;
            }
        }
        if (constraintWidgetContainer.mMetrics != null) {
            constraintWidgetContainer.mMetrics.grouping++;
        }
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget2 = children.get(i4);
            if (!validInGroup(constraintWidgetContainer.getHorizontalDimensionBehaviour(), constraintWidgetContainer.getVerticalDimensionBehaviour(), constraintWidget2.getHorizontalDimensionBehaviour(), constraintWidget2.getVerticalDimensionBehaviour())) {
                ConstraintWidgetContainer.measure(0, constraintWidget2, measurer, constraintWidgetContainer.mMeasure, BasicMeasure.Measure.SELF_DIMENSIONS);
            }
            if (constraintWidget2 instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget2;
                if (guideline.getOrientation() == 0) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(guideline);
                }
                if (guideline.getOrientation() == 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(guideline);
                }
            }
            if (constraintWidget2 instanceof HelperWidget) {
                if (constraintWidget2 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget2;
                    if (barrier.getOrientation() == 0) {
                        if (arrayList3 == null) {
                            arrayList3 = new ArrayList();
                        }
                        arrayList3.add(barrier);
                    }
                    if (barrier.getOrientation() == 1) {
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(barrier);
                    }
                } else {
                    HelperWidget helperWidget = (HelperWidget) constraintWidget2;
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(helperWidget);
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(helperWidget);
                }
            }
            if (constraintWidget2.mLeft.mTarget == null && constraintWidget2.mRight.mTarget == null && !(constraintWidget2 instanceof Guideline) && !(constraintWidget2 instanceof Barrier)) {
                ArrayList arrayList7 = arrayList5 == null ? new ArrayList() : arrayList5;
                arrayList7.add(constraintWidget2);
                arrayList5 = arrayList7;
            }
            if (constraintWidget2.mTop.mTarget == null && constraintWidget2.mBottom.mTarget == null && constraintWidget2.mBaseline.mTarget == null && !(constraintWidget2 instanceof Guideline) && !(constraintWidget2 instanceof Barrier)) {
                ArrayList arrayList8 = arrayList6 == null ? new ArrayList() : arrayList6;
                arrayList8.add(constraintWidget2);
                arrayList6 = arrayList8;
            }
        }
        ArrayList<WidgetGroup> arrayList9 = new ArrayList<>();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                findDependents((Guideline) it.next(), 0, arrayList9, null);
            }
        }
        if (arrayList3 != null) {
            for (HelperWidget helperWidget2 : arrayList3) {
                WidgetGroup widgetGroupFindDependents = findDependents(helperWidget2, 0, arrayList9, null);
                helperWidget2.addDependents(arrayList9, 0, widgetGroupFindDependents);
                widgetGroupFindDependents.cleanup(arrayList9);
            }
        }
        ConstraintAnchor anchor = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.LEFT);
        if (anchor.getDependents() != null) {
            Iterator<ConstraintAnchor> it2 = anchor.getDependents().iterator();
            while (it2.hasNext()) {
                findDependents(it2.next().mOwner, 0, arrayList9, null);
            }
        }
        ConstraintAnchor anchor2 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.RIGHT);
        if (anchor2.getDependents() != null) {
            Iterator<ConstraintAnchor> it3 = anchor2.getDependents().iterator();
            while (it3.hasNext()) {
                findDependents(it3.next().mOwner, 0, arrayList9, null);
            }
        }
        ConstraintAnchor anchor3 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.CENTER);
        if (anchor3.getDependents() != null) {
            Iterator<ConstraintAnchor> it4 = anchor3.getDependents().iterator();
            while (it4.hasNext()) {
                findDependents(it4.next().mOwner, 0, arrayList9, null);
            }
        }
        if (arrayList5 != null) {
            Iterator it5 = arrayList5.iterator();
            while (it5.hasNext()) {
                findDependents((ConstraintWidget) it5.next(), 0, arrayList9, null);
            }
        }
        if (arrayList2 != null) {
            Iterator it6 = arrayList2.iterator();
            while (it6.hasNext()) {
                findDependents((Guideline) it6.next(), 1, arrayList9, null);
            }
        }
        if (arrayList4 != null) {
            for (HelperWidget helperWidget3 : arrayList4) {
                WidgetGroup widgetGroupFindDependents2 = findDependents(helperWidget3, 1, arrayList9, null);
                helperWidget3.addDependents(arrayList9, 1, widgetGroupFindDependents2);
                widgetGroupFindDependents2.cleanup(arrayList9);
            }
        }
        ConstraintAnchor anchor4 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.TOP);
        if (anchor4.getDependents() != null) {
            Iterator<ConstraintAnchor> it7 = anchor4.getDependents().iterator();
            while (it7.hasNext()) {
                findDependents(it7.next().mOwner, 1, arrayList9, null);
            }
        }
        ConstraintAnchor anchor5 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.BASELINE);
        if (anchor5.getDependents() != null) {
            Iterator<ConstraintAnchor> it8 = anchor5.getDependents().iterator();
            while (it8.hasNext()) {
                findDependents(it8.next().mOwner, 1, arrayList9, null);
            }
        }
        ConstraintAnchor anchor6 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.BOTTOM);
        if (anchor6.getDependents() != null) {
            Iterator<ConstraintAnchor> it9 = anchor6.getDependents().iterator();
            while (it9.hasNext()) {
                findDependents(it9.next().mOwner, 1, arrayList9, null);
            }
        }
        ConstraintAnchor anchor7 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.CENTER);
        if (anchor7.getDependents() != null) {
            Iterator<ConstraintAnchor> it10 = anchor7.getDependents().iterator();
            while (it10.hasNext()) {
                findDependents(it10.next().mOwner, 1, arrayList9, null);
            }
        }
        if (arrayList6 != null) {
            Iterator it11 = arrayList6.iterator();
            while (it11.hasNext()) {
                findDependents((ConstraintWidget) it11.next(), 1, arrayList9, null);
            }
        }
        for (int i5 = 0; i5 < size; i5++) {
            ConstraintWidget constraintWidget3 = children.get(i5);
            if (constraintWidget3.oppositeDimensionsTied()) {
                WidgetGroup widgetGroupFindGroup = findGroup(arrayList9, constraintWidget3.horizontalGroup);
                WidgetGroup widgetGroupFindGroup2 = findGroup(arrayList9, constraintWidget3.verticalGroup);
                if (widgetGroupFindGroup != null && widgetGroupFindGroup2 != null) {
                    widgetGroupFindGroup.moveTo(0, widgetGroupFindGroup2);
                    widgetGroupFindGroup2.setOrientation(2);
                    arrayList9.remove(widgetGroupFindGroup);
                }
            }
        }
        if (arrayList9.size() <= 1) {
            return false;
        }
        if (constraintWidgetContainer.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            int i6 = 0;
            widgetGroup = null;
            for (WidgetGroup widgetGroup5 : arrayList9) {
                if (widgetGroup5.getOrientation() != 1) {
                    widgetGroup5.setAuthoritative(false);
                    int iMeasureWrap = widgetGroup5.measureWrap(constraintWidgetContainer.getSystem(), 0);
                    if (iMeasureWrap > i6) {
                        widgetGroup4 = widgetGroup5;
                        i2 = iMeasureWrap;
                    } else {
                        i2 = i6;
                        widgetGroup4 = widgetGroup;
                    }
                    i6 = i2;
                    widgetGroup = widgetGroup4;
                }
            }
            if (widgetGroup != null) {
                constraintWidgetContainer.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.setWidth(i6);
                widgetGroup.setAuthoritative(true);
            } else {
                widgetGroup = null;
            }
        } else {
            widgetGroup = null;
        }
        if (constraintWidgetContainer.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            int i7 = 0;
            widgetGroup2 = null;
            for (WidgetGroup widgetGroup6 : arrayList9) {
                if (widgetGroup6.getOrientation() != 0) {
                    widgetGroup6.setAuthoritative(false);
                    int iMeasureWrap2 = widgetGroup6.measureWrap(constraintWidgetContainer.getSystem(), 1);
                    if (iMeasureWrap2 > i7) {
                        widgetGroup3 = widgetGroup6;
                        i = iMeasureWrap2;
                    } else {
                        i = i7;
                        widgetGroup3 = widgetGroup2;
                    }
                    i7 = i;
                    widgetGroup2 = widgetGroup3;
                }
            }
            if (widgetGroup2 != null) {
                constraintWidgetContainer.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.setHeight(i7);
                widgetGroup2.setAuthoritative(true);
            } else {
                widgetGroup2 = null;
            }
        } else {
            widgetGroup2 = null;
        }
        return (widgetGroup == null && widgetGroup2 == null) ? false : true;
    }

    public static boolean validInGroup(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, ConstraintWidget.DimensionBehaviour dimensionBehaviour3, ConstraintWidget.DimensionBehaviour dimensionBehaviour4) {
        return (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) || (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour2 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT));
    }
}
