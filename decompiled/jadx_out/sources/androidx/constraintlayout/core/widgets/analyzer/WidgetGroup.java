package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Chain;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class WidgetGroup {
    private static final boolean DEBUG = false;
    static int count = 0;
    int id;
    int orientation;
    ArrayList<ConstraintWidget> widgets = new ArrayList<>();
    boolean authoritative = false;
    ArrayList<MeasureResult> results = null;
    private int moveTo = -1;

    class MeasureResult {
        int baseline;
        int bottom;
        int left;
        int orientation;
        int right;
        final WidgetGroup this$0;
        int top;
        WeakReference<ConstraintWidget> widgetRef;

        public MeasureResult(WidgetGroup widgetGroup, ConstraintWidget constraintWidget, LinearSystem linearSystem, int i) {
            this.this$0 = widgetGroup;
            this.widgetRef = new WeakReference<>(constraintWidget);
            this.left = linearSystem.getObjectVariableValue(constraintWidget.mLeft);
            this.top = linearSystem.getObjectVariableValue(constraintWidget.mTop);
            this.right = linearSystem.getObjectVariableValue(constraintWidget.mRight);
            this.bottom = linearSystem.getObjectVariableValue(constraintWidget.mBottom);
            this.baseline = linearSystem.getObjectVariableValue(constraintWidget.mBaseline);
            this.orientation = i;
        }

        public void apply() {
            ConstraintWidget constraintWidget = this.widgetRef.get();
            if (constraintWidget != null) {
                constraintWidget.setFinalFrame(this.left, this.top, this.right, this.bottom, this.baseline, this.orientation);
            }
        }
    }

    public WidgetGroup(int i) {
        this.id = -1;
        this.orientation = 0;
        int i2 = count;
        count = i2 + 1;
        this.id = i2;
        this.orientation = i;
    }

    private boolean contains(ConstraintWidget constraintWidget) {
        return this.widgets.contains(constraintWidget);
    }

    private String getOrientationString() {
        int i = this.orientation;
        return i == 0 ? NPStringFog.decode(new byte[]{126, 87, 71, 91, 74, 95, 88, 76, 84, 94}, "685200", -1402525908L) : i == 1 ? NPStringFog.decode(new byte[]{98, 0, 22, 77, 15, 83, 85, 9}, "4ed9f0", 4.63246E8f) : i == 2 ? NPStringFog.decode(new byte[]{33, 13, 76, 94}, "cb862c", -8.65374E8f) : NPStringFog.decode(new byte[]{100, 13, 13, 90, 93, 20, 95}, "1cf42c", -1.392892561E9d);
    }

    private int measureWrap(int i, ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.getDimensionBehaviour(i);
        if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED) {
            return i == 0 ? constraintWidget.getWidth() : constraintWidget.getHeight();
        }
        return -1;
    }

    private int solverMeasure(LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i) {
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) arrayList.get(0).getParent();
        linearSystem.reset();
        constraintWidgetContainer.addToSolver(linearSystem, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2).addToSolver(linearSystem, false);
        }
        if (i == 0 && constraintWidgetContainer.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 0);
        }
        if (i == 1 && constraintWidgetContainer.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 1);
        }
        try {
            linearSystem.minimize();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.results = new ArrayList<>();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.results.add(new MeasureResult(this, arrayList.get(i3), linearSystem, i));
        }
        if (i == 0) {
            int objectVariableValue = linearSystem.getObjectVariableValue(constraintWidgetContainer.mLeft);
            int objectVariableValue2 = linearSystem.getObjectVariableValue(constraintWidgetContainer.mRight);
            linearSystem.reset();
            return objectVariableValue2 - objectVariableValue;
        }
        int objectVariableValue3 = linearSystem.getObjectVariableValue(constraintWidgetContainer.mTop);
        int objectVariableValue4 = linearSystem.getObjectVariableValue(constraintWidgetContainer.mBottom);
        linearSystem.reset();
        return objectVariableValue4 - objectVariableValue3;
    }

    public boolean add(ConstraintWidget constraintWidget) {
        if (this.widgets.contains(constraintWidget)) {
            return false;
        }
        this.widgets.add(constraintWidget);
        return true;
    }

    public void apply() {
        if (this.results == null || !this.authoritative) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.results.size()) {
                return;
            }
            this.results.get(i2).apply();
            i = i2 + 1;
        }
    }

    public void cleanup(ArrayList<WidgetGroup> arrayList) {
        int size = this.widgets.size();
        if (this.moveTo != -1 && size > 0) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= arrayList.size()) {
                    break;
                }
                WidgetGroup widgetGroup = arrayList.get(i2);
                if (this.moveTo == widgetGroup.id) {
                    moveTo(this.orientation, widgetGroup);
                }
                i = i2 + 1;
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public void clear() {
        this.widgets.clear();
    }

    public int getId() {
        return this.id;
    }

    public int getOrientation() {
        return this.orientation;
    }

    public boolean intersectWith(WidgetGroup widgetGroup) {
        for (int i = 0; i < this.widgets.size(); i++) {
            if (widgetGroup.contains(this.widgets.get(i))) {
                return true;
            }
        }
        return false;
    }

    public boolean isAuthoritative() {
        return this.authoritative;
    }

    public int measureWrap(LinearSystem linearSystem, int i) {
        if (this.widgets.size() == 0) {
            return 0;
        }
        return solverMeasure(linearSystem, this.widgets, i);
    }

    public void moveTo(int i, WidgetGroup widgetGroup) {
        for (ConstraintWidget constraintWidget : this.widgets) {
            widgetGroup.add(constraintWidget);
            if (i == 0) {
                constraintWidget.horizontalGroup = widgetGroup.getId();
            } else {
                constraintWidget.verticalGroup = widgetGroup.getId();
            }
        }
        this.moveTo = widgetGroup.id;
    }

    public void setAuthoritative(boolean z) {
        this.authoritative = z;
    }

    public void setOrientation(int i) {
        this.orientation = i;
    }

    public int size() {
        return this.widgets.size();
    }

    public String toString() {
        String str = getOrientationString() + NPStringFog.decode(new byte[]{19, 105}, "326650", 22299) + this.id + NPStringFog.decode(new byte[]{107, 20, 9}, "645717", -1.1713897E9f);
        Iterator<ConstraintWidget> it = this.widgets.iterator();
        while (true) {
            String str2 = str;
            if (!it.hasNext()) {
                return str2 + NPStringFog.decode(new byte[]{66, 10}, "b4410f", -4.57750445E8d);
            }
            str = str2 + " " + it.next().getDebugName();
        }
    }
}
