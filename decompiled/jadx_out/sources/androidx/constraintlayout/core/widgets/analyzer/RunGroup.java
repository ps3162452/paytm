package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes40.dex */
class RunGroup {
    public static final int BASELINE = 2;
    public static final int END = 1;
    public static final int START = 0;
    public static int index;
    int direction;
    WidgetRun firstRun;
    int groupIndex;
    WidgetRun lastRun;
    public int position = 0;
    public boolean dual = false;
    ArrayList<WidgetRun> runs = new ArrayList<>();

    public RunGroup(WidgetRun widgetRun, int i) {
        this.firstRun = null;
        this.lastRun = null;
        this.groupIndex = 0;
        int i2 = index;
        this.groupIndex = i2;
        index = i2 + 1;
        this.firstRun = widgetRun;
        this.lastRun = widgetRun;
        this.direction = i;
    }

    private boolean defineTerminalWidget(WidgetRun widgetRun, int i) {
        if (widgetRun.widget.isTerminalWidget[i]) {
            for (Dependency dependency : widgetRun.start.dependencies) {
                if (dependency instanceof DependencyNode) {
                    DependencyNode dependencyNode = (DependencyNode) dependency;
                    if (dependencyNode.run != widgetRun && dependencyNode == dependencyNode.run.start) {
                        if (widgetRun instanceof ChainRun) {
                            Iterator<WidgetRun> it = ((ChainRun) widgetRun).widgets.iterator();
                            while (it.hasNext()) {
                                defineTerminalWidget(it.next(), i);
                            }
                        } else if (!(widgetRun instanceof HelperReferences)) {
                            widgetRun.widget.isTerminalWidget[i] = false;
                        }
                        defineTerminalWidget(dependencyNode.run, i);
                    }
                }
            }
            for (Dependency dependency2 : widgetRun.end.dependencies) {
                if (dependency2 instanceof DependencyNode) {
                    DependencyNode dependencyNode2 = (DependencyNode) dependency2;
                    if (dependencyNode2.run != widgetRun && dependencyNode2 == dependencyNode2.run.start) {
                        if (widgetRun instanceof ChainRun) {
                            Iterator<WidgetRun> it2 = ((ChainRun) widgetRun).widgets.iterator();
                            while (it2.hasNext()) {
                                defineTerminalWidget(it2.next(), i);
                            }
                        } else if (!(widgetRun instanceof HelperReferences)) {
                            widgetRun.widget.isTerminalWidget[i] = false;
                        }
                        defineTerminalWidget(dependencyNode2.run, i);
                    }
                }
            }
        }
        return false;
    }

    private long traverseEnd(DependencyNode dependencyNode, long j) {
        long jMin;
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j;
        }
        int size = dependencyNode.dependencies.size();
        int i = 0;
        long jMin2 = j;
        while (i < size) {
            Dependency dependency = dependencyNode.dependencies.get(i);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                jMin = dependencyNode2.run == widgetRun ? jMin2 : Math.min(jMin2, traverseEnd(dependencyNode2, ((long) dependencyNode2.margin) + j));
            } else {
                jMin = jMin2;
            }
            i++;
            jMin2 = jMin;
        }
        if (dependencyNode == widgetRun.end) {
            long wrapDimension = widgetRun.getWrapDimension();
            jMin2 = Math.min(Math.min(jMin2, traverseEnd(widgetRun.start, j - wrapDimension)), (j - wrapDimension) - ((long) widgetRun.start.margin));
        }
        return jMin2;
    }

    private long traverseStart(DependencyNode dependencyNode, long j) {
        long jMax;
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j;
        }
        int size = dependencyNode.dependencies.size();
        int i = 0;
        long jMax2 = j;
        while (i < size) {
            Dependency dependency = dependencyNode.dependencies.get(i);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                jMax = dependencyNode2.run == widgetRun ? jMax2 : Math.max(jMax2, traverseStart(dependencyNode2, ((long) dependencyNode2.margin) + j));
            } else {
                jMax = jMax2;
            }
            i++;
            jMax2 = jMax;
        }
        if (dependencyNode == widgetRun.start) {
            long wrapDimension = widgetRun.getWrapDimension();
            jMax2 = Math.max(Math.max(jMax2, traverseStart(widgetRun.end, j + wrapDimension)), (wrapDimension + j) - ((long) widgetRun.end.margin));
        }
        return jMax2;
    }

    public void add(WidgetRun widgetRun) {
        this.runs.add(widgetRun);
        this.lastRun = widgetRun;
    }

    public long computeWrapSize(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        long jMax;
        WidgetRun widgetRun = this.firstRun;
        if (widgetRun instanceof ChainRun) {
            if (((ChainRun) widgetRun).orientation != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(widgetRun instanceof HorizontalWidgetRun)) {
                return 0L;
            }
        } else if (!(widgetRun instanceof VerticalWidgetRun)) {
            return 0L;
        }
        DependencyNode dependencyNode = i == 0 ? constraintWidgetContainer.horizontalRun.start : constraintWidgetContainer.verticalRun.start;
        DependencyNode dependencyNode2 = i == 0 ? constraintWidgetContainer.horizontalRun.end : constraintWidgetContainer.verticalRun.end;
        boolean zContains = this.firstRun.start.targets.contains(dependencyNode);
        boolean zContains2 = this.firstRun.end.targets.contains(dependencyNode2);
        long wrapDimension = this.firstRun.getWrapDimension();
        if (zContains && zContains2) {
            long jTraverseStart = traverseStart(this.firstRun.start, 0L);
            long jTraverseEnd = traverseEnd(this.firstRun.end, 0L);
            long j = jTraverseStart - wrapDimension;
            if (j >= (-this.firstRun.end.margin)) {
                j += (long) this.firstRun.end.margin;
            }
            long j2 = ((-jTraverseEnd) - wrapDimension) - ((long) this.firstRun.start.margin);
            if (j2 >= this.firstRun.start.margin) {
                j2 -= (long) this.firstRun.start.margin;
            }
            float biasPercent = this.firstRun.widget.getBiasPercent(i);
            long j3 = biasPercent > 0.0f ? (long) ((j / (1.0f - biasPercent)) + (j2 / biasPercent)) : 0L;
            jMax = ((((long) ((j3 * (1.0f - biasPercent)) + 0.5f)) + (((long) ((j3 * biasPercent) + 0.5f)) + wrapDimension)) + ((long) this.firstRun.start.margin)) - ((long) this.firstRun.end.margin);
        } else {
            jMax = zContains ? Math.max(traverseStart(this.firstRun.start, this.firstRun.start.margin), ((long) this.firstRun.start.margin) + wrapDimension) : zContains2 ? Math.max(-traverseEnd(this.firstRun.end, this.firstRun.end.margin), ((long) (-this.firstRun.end.margin)) + wrapDimension) : (((long) this.firstRun.start.margin) + this.firstRun.getWrapDimension()) - ((long) this.firstRun.end.margin);
        }
        return jMax;
    }

    public void defineTerminalWidgets(boolean z, boolean z2) {
        if (z) {
            WidgetRun widgetRun = this.firstRun;
            if (widgetRun instanceof HorizontalWidgetRun) {
                defineTerminalWidget(widgetRun, 0);
            }
        }
        if (z2) {
            WidgetRun widgetRun2 = this.firstRun;
            if (widgetRun2 instanceof VerticalWidgetRun) {
                defineTerminalWidget(widgetRun2, 1);
            }
        }
    }
}
