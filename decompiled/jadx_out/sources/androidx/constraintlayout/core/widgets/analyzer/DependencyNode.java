package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class DependencyNode implements Dependency {
    int margin;
    WidgetRun run;
    public int value;
    public Dependency updateDelegate = null;
    public boolean delegateToWidgetRun = false;
    public boolean readyToSolve = false;
    Type type = Type.UNKNOWN;
    int marginFactor = 1;
    DimensionDependency marginDependency = null;
    public boolean resolved = false;
    List<Dependency> dependencies = new ArrayList();
    List<DependencyNode> targets = new ArrayList();

    enum Type {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.run = widgetRun;
    }

    public void addDependency(Dependency dependency) {
        this.dependencies.add(dependency);
        if (this.resolved) {
            dependency.update(dependency);
        }
    }

    public void clear() {
        this.targets.clear();
        this.dependencies.clear();
        this.resolved = false;
        this.value = 0;
        this.readyToSolve = false;
        this.delegateToWidgetRun = false;
    }

    public String name() {
        String str;
        String debugName = this.run.widget.getDebugName();
        if (this.type == Type.LEFT || this.type == Type.RIGHT) {
            str = debugName + NPStringFog.decode(new byte[]{62, 112, 44, 100, 112, 99, 46, 118, 55, 119, 117}, "a8c699", -8.1113317E8d);
        } else {
            str = debugName + NPStringFog.decode(new byte[]{103, 97, 39, 55, 96, 47, 123, 118, 46}, "87be4f", false);
        }
        return str + NPStringFog.decode(new byte[]{3}, "90895d", 17238) + this.type.name();
    }

    public void resolve(int i) {
        if (this.resolved) {
            return;
        }
        this.resolved = true;
        this.value = i;
        for (Dependency dependency : this.dependencies) {
            dependency.update(dependency);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.run.widget.getDebugName());
        sb.append(NPStringFog.decode(new byte[]{3}, "9e38de", -1.743303461E9d));
        sb.append(this.type);
        sb.append(NPStringFog.decode(new byte[]{29}, "582e85", false));
        sb.append(this.resolved ? Integer.valueOf(this.value) : NPStringFog.decode(new byte[]{17, 94, 64, 4, 23, 12, 8, 70, 87, 5}, "d02adc", 1594032852L));
        sb.append(NPStringFog.decode(new byte[]{31, 17, 14, 76, 15}, "612827", -1.38470233E8d));
        sb.append(this.targets.size());
        sb.append(NPStringFog.decode(new byte[]{12, 5, 11}, "6a6cac", 2120567192L));
        sb.append(this.dependencies.size());
        sb.append(NPStringFog.decode(new byte[]{13}, "37764e", -2115));
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        Iterator<DependencyNode> it = this.targets.iterator();
        while (it.hasNext()) {
            if (!it.next().resolved) {
                return;
            }
        }
        this.readyToSolve = true;
        Dependency dependency2 = this.updateDelegate;
        if (dependency2 != null) {
            dependency2.update(this);
        }
        if (this.delegateToWidgetRun) {
            this.run.update(this);
            return;
        }
        DependencyNode dependencyNode = null;
        int i = 0;
        for (DependencyNode dependencyNode2 : this.targets) {
            if (!(dependencyNode2 instanceof DimensionDependency)) {
                i++;
                dependencyNode = dependencyNode2;
            }
        }
        if (dependencyNode != null && i == 1 && dependencyNode.resolved) {
            DimensionDependency dimensionDependency = this.marginDependency;
            if (dimensionDependency != null) {
                if (!dimensionDependency.resolved) {
                    return;
                } else {
                    this.margin = this.marginFactor * this.marginDependency.value;
                }
            }
            resolve(dependencyNode.value + this.margin);
        }
        Dependency dependency3 = this.updateDelegate;
        if (dependency3 != null) {
            dependency3.update(this);
        }
    }
}
