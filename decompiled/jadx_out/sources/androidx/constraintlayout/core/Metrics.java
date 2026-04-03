package androidx.constraintlayout.core;

import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class Metrics {
    public long additionalMeasures;
    public long barrierConnectionResolved;
    public long bfs;
    public long centerConnectionResolved;
    public long chainConnectionResolved;
    public long constraints;
    public long determineGroups;
    public long errors;
    public long extravariables;
    public long fullySolved;
    public long graphOptimizer;
    public long graphSolved;
    public long grouping;
    public long infeasibleDetermineGroups;
    public long iterations;
    public long lastTableSize;
    public long layouts;
    public long linearSolved;
    public long matchConnectionResolved;
    public long maxRows;
    public long maxTableSize;
    public long maxVariables;
    public long measuredMatchWidgets;
    public long measuredWidgets;
    public long measures;
    public long measuresLayoutDuration;
    public long measuresWidgetsDuration;
    public long measuresWrap;
    public long measuresWrapInfeasible;
    public long minimize;
    public long minimizeGoal;
    public long nonresolvedWidgets;
    public long oldresolvedWidgets;
    public long optimize;
    public long pivots;
    public ArrayList<String> problematicLayouts = new ArrayList<>();
    public long resolutions;
    public long resolvedWidgets;
    public long simpleconstraints;
    public long slackvariables;
    public long tableSizeIncrease;
    public long variables;
    public long widgets;

    public void reset() {
        this.measures = 0L;
        this.widgets = 0L;
        this.additionalMeasures = 0L;
        this.resolutions = 0L;
        this.tableSizeIncrease = 0L;
        this.maxTableSize = 0L;
        this.lastTableSize = 0L;
        this.maxVariables = 0L;
        this.maxRows = 0L;
        this.minimize = 0L;
        this.minimizeGoal = 0L;
        this.constraints = 0L;
        this.simpleconstraints = 0L;
        this.optimize = 0L;
        this.iterations = 0L;
        this.pivots = 0L;
        this.bfs = 0L;
        this.variables = 0L;
        this.errors = 0L;
        this.slackvariables = 0L;
        this.extravariables = 0L;
        this.fullySolved = 0L;
        this.graphOptimizer = 0L;
        this.graphSolved = 0L;
        this.resolvedWidgets = 0L;
        this.oldresolvedWidgets = 0L;
        this.nonresolvedWidgets = 0L;
        this.centerConnectionResolved = 0L;
        this.matchConnectionResolved = 0L;
        this.chainConnectionResolved = 0L;
        this.barrierConnectionResolved = 0L;
        this.problematicLayouts.clear();
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{104, 72, 19, 19, 67, 120, 7, 22, 75, 80, 0, 70, 66, 72, 19, 19, 105, 88, 7, 3, 74, 76, 17, 80, 17, 88, 25}, "bb99c5", -4083) + this.measures + NPStringFog.decode(new byte[]{51, 95, 80, 4, 21, 76, 75, 87, 70, 50, 20, 88, 73, 8, 21}, "925ef9", true) + this.measuresWrap + NPStringFog.decode(new byte[]{60, 89, 4, 0, 74, 22, 68, 81, 18, 54, 75, 2, 70, 125, 15, 7, 92, 2, 69, 93, 3, 13, 92, 89, 22}, "64aa9c", false) + this.measuresWrapInfeasible + NPStringFog.decode(new byte[]{108, 85, 81, 17, 82, 71, 11, 88, 90, 0, 112, 71, 9, 68, 68, 22, 13, 21}, "f14e75", -14281) + this.determineGroups + NPStringFog.decode(new byte[]{61, 13, 95, 94, 82, 88, 68, 13, 83, 84, 82, 125, 82, 16, 84, 74, 90, 80, 89, 1, 118, 74, 88, 76, 71, 23, 11, 24}, "7d1879", false, true) + this.infeasibleDetermineGroups + NPStringFog.decode(new byte[]{60, 6, 66, 84, 69, 95, 121, 17, 68, 92, 88, 94, 76, 4, 66, 15, 21}, "6a0557", -26454) + this.graphOptimizer + NPStringFog.decode(new byte[]{104, 69, 80, 83, 5, 81, 22, 65, 3, 23}, "b297b4", true) + this.widgets + NPStringFog.decode(new byte[]{57, 85, 69, 80, 21, 10, 96, 93, 91, 71, 0, 6, 9, 18}, "3271eb", -1.394745777E9d) + this.graphSolved + NPStringFog.decode(new byte[]{57, 13, 11, 8, 93, 81, 65, 50, 13, 10, 78, 85, 87, 91, 66}, "3abf80", 2.027385158E9d) + this.linearSolved + "\n";
    }
}
