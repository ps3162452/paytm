package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes40.dex */
public abstract class WidgetRun implements Dependency {
    protected ConstraintWidget.DimensionBehaviour dimensionBehavior;
    public int matchConstraintsType;
    RunGroup runGroup;
    ConstraintWidget widget;
    DimensionDependency dimension = new DimensionDependency(this);
    public int orientation = 0;
    boolean resolved = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);
    protected RunType mRunType = RunType.NONE;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.analyzer.WidgetRun$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.widget = constraintWidget;
    }

    private void resolveDimension(int i, int i2) {
        switch (this.matchConstraintsType) {
            case 0:
                this.dimension.resolve(getLimitedDimension(i2, i));
                break;
            case 1:
                this.dimension.resolve(Math.min(getLimitedDimension(this.dimension.wrapValue, i), i2));
                break;
            case 2:
                ConstraintWidget parent = this.widget.getParent();
                if (parent != null) {
                    if ((i == 0 ? parent.horizontalRun : parent.verticalRun).dimension.resolved) {
                        ConstraintWidget constraintWidget = this.widget;
                        this.dimension.resolve(getLimitedDimension((int) ((r0.dimension.value * (i == 0 ? constraintWidget.mMatchConstraintPercentWidth : constraintWidget.mMatchConstraintPercentHeight)) + 0.5f), i));
                    }
                }
                break;
            case 3:
                if (this.widget.horizontalRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.widget.horizontalRun.matchConstraintsType != 3 || this.widget.verticalRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.widget.verticalRun.matchConstraintsType != 3) {
                    ConstraintWidget constraintWidget2 = this.widget;
                    if ((i == 0 ? constraintWidget2.verticalRun : constraintWidget2.horizontalRun).dimension.resolved) {
                        float dimensionRatio = this.widget.getDimensionRatio();
                        this.dimension.resolve(i == 1 ? (int) ((r0.dimension.value / dimensionRatio) + 0.5f) : (int) ((r0.dimension.value * dimensionRatio) + 0.5f));
                    }
                }
                break;
        }
    }

    protected final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        dependencyNode.targets.add(dependencyNode2);
        dependencyNode.margin = i;
        dependencyNode2.dependencies.add(dependencyNode);
    }

    protected final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, DimensionDependency dimensionDependency) {
        dependencyNode.targets.add(dependencyNode2);
        dependencyNode.targets.add(this.dimension);
        dependencyNode.marginFactor = i;
        dependencyNode.marginDependency = dimensionDependency;
        dependencyNode2.dependencies.add(dependencyNode);
        dimensionDependency.dependencies.add(dependencyNode);
    }

    abstract void apply();

    abstract void applyToWidget();

    abstract void clear();

    protected final int getLimitedDimension(int i, int i2) {
        if (i2 == 0) {
            int i3 = this.widget.mMatchConstraintMaxWidth;
            int iMax = Math.max(this.widget.mMatchConstraintMinWidth, i);
            if (i3 > 0) {
                iMax = Math.min(i3, i);
            }
            return iMax != i ? iMax : i;
        }
        int i4 = this.widget.mMatchConstraintMaxHeight;
        int iMax2 = Math.max(this.widget.mMatchConstraintMinHeight, i);
        if (i4 > 0) {
            iMax2 = Math.min(i4, i);
        }
        return iMax2 != i ? iMax2 : i;
    }

    protected final DependencyNode getTarget(ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor.mTarget.mOwner;
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[constraintAnchor.mTarget.mType.ordinal()]) {
            case 1:
                return constraintWidget.horizontalRun.start;
            case 2:
                return constraintWidget.horizontalRun.end;
            case 3:
                return constraintWidget.verticalRun.start;
            case 4:
                return constraintWidget.verticalRun.baseline;
            case 5:
                return constraintWidget.verticalRun.end;
            default:
                return null;
        }
    }

    protected final DependencyNode getTarget(ConstraintAnchor constraintAnchor, int i) {
        DependencyNode dependencyNode;
        if (constraintAnchor.mTarget == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor.mTarget.mOwner;
        WidgetRun widgetRun = i == 0 ? constraintWidget.horizontalRun : constraintWidget.verticalRun;
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[constraintAnchor.mTarget.mType.ordinal()]) {
            case 1:
            case 3:
                dependencyNode = widgetRun.start;
                break;
            case 2:
            case 5:
                dependencyNode = widgetRun.end;
                break;
            case 4:
            default:
                dependencyNode = null;
                break;
        }
        return dependencyNode;
    }

    public long getWrapDimension() {
        if (this.dimension.resolved) {
            return this.dimension.value;
        }
        return 0L;
    }

    public boolean isCenterConnection() {
        int size = this.start.targets.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            int i3 = this.start.targets.get(i).run != this ? i2 + 1 : i2;
            i++;
            i2 = i3;
        }
        int size2 = this.end.targets.size();
        int i4 = 0;
        while (i4 < size2) {
            int i5 = this.end.targets.get(i4).run != this ? i2 + 1 : i2;
            i4++;
            i2 = i5;
        }
        return i2 >= 2;
    }

    public boolean isDimensionResolved() {
        return this.dimension.resolved;
    }

    public boolean isResolved() {
        return this.resolved;
    }

    abstract void reset();

    abstract boolean supportsWrapComputation();

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
    }

    protected void updateRunCenter(Dependency dependency, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        DependencyNode target = getTarget(constraintAnchor);
        DependencyNode target2 = getTarget(constraintAnchor2);
        if (target.resolved && target2.resolved) {
            int margin = target.value + constraintAnchor.getMargin();
            int margin2 = target2.value - constraintAnchor2.getMargin();
            int i2 = margin2 - margin;
            if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                resolveDimension(i, i2);
            }
            if (this.dimension.resolved) {
                if (this.dimension.value == i2) {
                    this.start.resolve(margin);
                    this.end.resolve(margin2);
                    return;
                }
                ConstraintWidget constraintWidget = this.widget;
                float horizontalBiasPercent = i == 0 ? constraintWidget.getHorizontalBiasPercent() : constraintWidget.getVerticalBiasPercent();
                if (target == target2) {
                    margin = target.value;
                    margin2 = target2.value;
                    horizontalBiasPercent = 0.5f;
                }
                this.start.resolve((int) ((horizontalBiasPercent * ((margin2 - margin) - this.dimension.value)) + 0.5f + margin));
                this.end.resolve(this.start.value + this.dimension.value);
            }
        }
    }

    protected void updateRunEnd(Dependency dependency) {
    }

    protected void updateRunStart(Dependency dependency) {
    }

    public long wrapSize(int i) {
        if (!this.dimension.resolved) {
            return 0L;
        }
        long j = this.dimension.value;
        return isCenterConnection() ? j + ((long) (this.start.margin - this.end.margin)) : i == 0 ? j + ((long) this.start.margin) : j - ((long) this.end.margin);
    }
}
