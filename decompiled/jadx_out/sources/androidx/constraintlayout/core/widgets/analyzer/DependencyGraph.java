package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class DependencyGraph {
    private static final boolean USE_GROUPS = true;
    private ConstraintWidgetContainer container;
    private ConstraintWidgetContainer mContainer;
    private boolean mNeedBuildGraph = USE_GROUPS;
    private boolean mNeedRedoMeasures = USE_GROUPS;
    private ArrayList<WidgetRun> mRuns = new ArrayList<>();
    private ArrayList<RunGroup> runGroups = new ArrayList<>();
    private BasicMeasure.Measurer mMeasurer = null;
    private BasicMeasure.Measure mMeasure = new BasicMeasure.Measure();
    ArrayList<RunGroup> mGroups = new ArrayList<>();

    public DependencyGraph(ConstraintWidgetContainer constraintWidgetContainer) {
        this.container = constraintWidgetContainer;
        this.mContainer = constraintWidgetContainer;
    }

    private void applyGroup(DependencyNode dependencyNode, int i, int i2, DependencyNode dependencyNode2, ArrayList<RunGroup> arrayList, RunGroup runGroup) {
        RunGroup runGroup2;
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun.runGroup != null || widgetRun == this.container.horizontalRun || widgetRun == this.container.verticalRun) {
            return;
        }
        if (runGroup == null) {
            runGroup2 = new RunGroup(widgetRun, i2);
            arrayList.add(runGroup2);
        } else {
            runGroup2 = runGroup;
        }
        widgetRun.runGroup = runGroup2;
        runGroup2.add(widgetRun);
        for (Dependency dependency : widgetRun.start.dependencies) {
            if (dependency instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency, i, 0, dependencyNode2, arrayList, runGroup2);
            }
        }
        for (Dependency dependency2 : widgetRun.end.dependencies) {
            if (dependency2 instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency2, i, 1, dependencyNode2, arrayList, runGroup2);
            }
        }
        if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
            for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.dependencies) {
                if (dependency3 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency3, i, 2, dependencyNode2, arrayList, runGroup2);
                }
            }
        }
        for (DependencyNode dependencyNode3 : widgetRun.start.targets) {
            if (dependencyNode3 == dependencyNode2) {
                runGroup2.dual = USE_GROUPS;
            }
            applyGroup(dependencyNode3, i, 0, dependencyNode2, arrayList, runGroup2);
        }
        for (DependencyNode dependencyNode4 : widgetRun.end.targets) {
            if (dependencyNode4 == dependencyNode2) {
                runGroup2.dual = USE_GROUPS;
            }
            applyGroup(dependencyNode4, i, 1, dependencyNode2, arrayList, runGroup2);
        }
        if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
            Iterator<DependencyNode> it = ((VerticalWidgetRun) widgetRun).baseline.targets.iterator();
            while (it.hasNext()) {
                applyGroup(it.next(), i, 2, dependencyNode2, arrayList, runGroup2);
            }
        }
    }

    private boolean basicMeasureWidgets(ConstraintWidgetContainer constraintWidgetContainer) {
        for (ConstraintWidget constraintWidget : constraintWidgetContainer.mChildren) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.mListDimensionBehaviors[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget.mListDimensionBehaviors[1];
            if (constraintWidget.getVisibility() == 8) {
                constraintWidget.measured = USE_GROUPS;
            } else {
                if (constraintWidget.mMatchConstraintPercentWidth < 1.0f && dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.mMatchConstraintDefaultWidth = 2;
                }
                if (constraintWidget.mMatchConstraintPercentHeight < 1.0f && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.mMatchConstraintDefaultHeight = 2;
                }
                if (constraintWidget.getDimensionRatio() > 0.0f) {
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.mMatchConstraintDefaultWidth = 3;
                    } else if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.mMatchConstraintDefaultHeight = 3;
                    } else if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        if (constraintWidget.mMatchConstraintDefaultWidth == 0) {
                            constraintWidget.mMatchConstraintDefaultWidth = 3;
                        }
                        if (constraintWidget.mMatchConstraintDefaultHeight == 0) {
                            constraintWidget.mMatchConstraintDefaultHeight = 3;
                        }
                    }
                }
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 1 && (constraintWidget.mLeft.mTarget == null || constraintWidget.mRight.mTarget == null)) {
                    dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 1 && (constraintWidget.mTop.mTarget == null || constraintWidget.mBottom.mTarget == null)) {
                    dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                constraintWidget.horizontalRun.dimensionBehavior = dimensionBehaviour;
                constraintWidget.horizontalRun.matchConstraintsType = constraintWidget.mMatchConstraintDefaultWidth;
                constraintWidget.verticalRun.dimensionBehavior = dimensionBehaviour2;
                constraintWidget.verticalRun.matchConstraintsType = constraintWidget.mMatchConstraintDefaultHeight;
                if ((dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
                    int width = constraintWidget.getWidth();
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                        width = (constraintWidgetContainer.getWidth() - constraintWidget.mLeft.mMargin) - constraintWidget.mRight.mMargin;
                        dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    }
                    int height = constraintWidget.getHeight();
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                        int height2 = constraintWidgetContainer.getHeight();
                        int i = constraintWidget.mTop.mMargin;
                        int i2 = constraintWidget.mBottom.mMargin;
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
                        height = (height2 - i) - i2;
                    }
                    measure(constraintWidget, dimensionBehaviour, width, dimensionBehaviour2, height);
                    constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                    constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                    constraintWidget.measured = USE_GROUPS;
                } else {
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (constraintWidget.mMatchConstraintDefaultWidth == 3) {
                            if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                                measure(constraintWidget, ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, 0, ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, 0);
                            }
                            int height3 = constraintWidget.getHeight();
                            measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, (int) ((height3 * constraintWidget.mDimensionRatio) + 0.5f), ConstraintWidget.DimensionBehaviour.FIXED, height3);
                            constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                            constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                            constraintWidget.measured = USE_GROUPS;
                        } else if (constraintWidget.mMatchConstraintDefaultWidth == 1) {
                            measure(constraintWidget, ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, 0, dimensionBehaviour2, 0);
                            constraintWidget.horizontalRun.dimension.wrapValue = constraintWidget.getWidth();
                        } else if (constraintWidget.mMatchConstraintDefaultWidth == 2) {
                            if (constraintWidgetContainer.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.FIXED || constraintWidgetContainer.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                                measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, (int) ((constraintWidget.mMatchConstraintPercentWidth * constraintWidgetContainer.getWidth()) + 0.5f), dimensionBehaviour2, constraintWidget.getHeight());
                                constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                                constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                                constraintWidget.measured = USE_GROUPS;
                            }
                        } else if (constraintWidget.mListAnchors[0].mTarget == null || constraintWidget.mListAnchors[1].mTarget == null) {
                            measure(constraintWidget, ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, 0, dimensionBehaviour2, 0);
                            constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                            constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                            constraintWidget.measured = USE_GROUPS;
                        }
                    }
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (constraintWidget.mMatchConstraintDefaultHeight == 3) {
                            if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                                measure(constraintWidget, ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, 0, ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, 0);
                            }
                            int width2 = constraintWidget.getWidth();
                            float f = constraintWidget.mDimensionRatio;
                            if (constraintWidget.getDimensionRatioSide() == -1) {
                                f = 1.0f / f;
                            }
                            measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, width2, ConstraintWidget.DimensionBehaviour.FIXED, (int) ((f * width2) + 0.5f));
                            constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                            constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                            constraintWidget.measured = USE_GROUPS;
                        } else if (constraintWidget.mMatchConstraintDefaultHeight == 1) {
                            measure(constraintWidget, dimensionBehaviour, 0, ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, 0);
                            constraintWidget.verticalRun.dimension.wrapValue = constraintWidget.getHeight();
                        } else if (constraintWidget.mMatchConstraintDefaultHeight == 2) {
                            if (constraintWidgetContainer.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.FIXED || constraintWidgetContainer.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                                measure(constraintWidget, dimensionBehaviour, constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, (int) ((constraintWidget.mMatchConstraintPercentHeight * constraintWidgetContainer.getHeight()) + 0.5f));
                                constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                                constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                                constraintWidget.measured = USE_GROUPS;
                            }
                        } else if (constraintWidget.mListAnchors[2].mTarget == null || constraintWidget.mListAnchors[3].mTarget == null) {
                            measure(constraintWidget, ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, 0, dimensionBehaviour2, 0);
                            constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                            constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                            constraintWidget.measured = USE_GROUPS;
                        }
                    }
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        if (constraintWidget.mMatchConstraintDefaultWidth == 1 || constraintWidget.mMatchConstraintDefaultHeight == 1) {
                            measure(constraintWidget, ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, 0, ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, 0);
                            constraintWidget.horizontalRun.dimension.wrapValue = constraintWidget.getWidth();
                            constraintWidget.verticalRun.dimension.wrapValue = constraintWidget.getHeight();
                        } else if (constraintWidget.mMatchConstraintDefaultHeight == 2 && constraintWidget.mMatchConstraintDefaultWidth == 2 && constraintWidgetContainer.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.FIXED && constraintWidgetContainer.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.FIXED) {
                            measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, (int) ((constraintWidget.mMatchConstraintPercentWidth * constraintWidgetContainer.getWidth()) + 0.5f), ConstraintWidget.DimensionBehaviour.FIXED, (int) ((constraintWidgetContainer.getHeight() * constraintWidget.mMatchConstraintPercentHeight) + 0.5f));
                            constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                            constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                            constraintWidget.measured = USE_GROUPS;
                        }
                    }
                }
            }
        }
        return false;
    }

    private int computeWrap(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        int size = this.mGroups.size();
        long jMax = 0;
        for (int i2 = 0; i2 < size; i2++) {
            jMax = Math.max(jMax, this.mGroups.get(i2).computeWrapSize(constraintWidgetContainer, i));
        }
        return (int) jMax;
    }

    private void displayGraph() {
        String strDecode = NPStringFog.decode(new byte[]{87, 81, 2, 22, 88, 67, 91, 24, 30, 110}, "38ed93", 29337);
        Iterator<WidgetRun> it = this.mRuns.iterator();
        while (true) {
            String str = strDecode;
            if (!it.hasNext()) {
                String str2 = str + NPStringFog.decode(new byte[]{58, 25, 57}, "0d3a2a", 423348075L);
                System.out.println(NPStringFog.decode(new byte[]{82, 94, 12, 64, 87, 92, 69, 11, 94, 8, 56}, "11b422", 1686127592L) + str2 + NPStringFog.decode(new byte[]{111, 10, 95}, "e4a1e8", 2031924558L));
                return;
            }
            strDecode = generateDisplayGraph(it.next(), str);
        }
    }

    private void findGroup(WidgetRun widgetRun, int i, ArrayList<RunGroup> arrayList) {
        for (Dependency dependency : widgetRun.start.dependencies) {
            if (dependency instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency, i, 0, widgetRun.end, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency).start, i, 0, widgetRun.end, arrayList, null);
            }
        }
        for (Dependency dependency2 : widgetRun.end.dependencies) {
            if (dependency2 instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency2, i, 1, widgetRun.start, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency2).end, i, 1, widgetRun.start, arrayList, null);
            }
        }
        if (i == 1) {
            for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.dependencies) {
                if (dependency3 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    private String generateChainDisplayGraph(ChainRun chainRun, String str) {
        int i = chainRun.orientation;
        StringBuilder sb = new StringBuilder(NPStringFog.decode(new byte[]{23, 68, 91, 94, 71, 87, 20, 89, 25}, "d19956", -6.799999E8f));
        sb.append(NPStringFog.decode(new byte[]{7, 93, 65, 17, 23, 82, 22, 110}, "d14bc7", USE_GROUPS, false));
        sb.append(chainRun.widget.getDebugName());
        if (i == 0) {
            sb.append(NPStringFog.decode(new byte[]{62, 14}, "af41ad", -1975519834L));
        } else {
            sb.append(NPStringFog.decode(new byte[]{106, 67}, "55f3e2", 1.113538516E9d));
        }
        sb.append(NPStringFog.decode(new byte[]{70, 24, 111}, "fce21f", false));
        String strGenerateDisplayGraph = "";
        Iterator<WidgetRun> it = chainRun.widgets.iterator();
        while (true) {
            String str2 = strGenerateDisplayGraph;
            if (!it.hasNext()) {
                sb.append(NPStringFog.decode(new byte[]{76, 59}, "1131a5", -515847018L));
                return str + str2 + ((Object) sb);
            }
            WidgetRun next = it.next();
            sb.append(next.widget.getDebugName());
            if (i == 0) {
                sb.append(NPStringFog.decode(new byte[]{58, 123, 46, 51, 47, 62, 42, 125, 53, 32, 42}, "e3aafd", 3.558824E8f));
            } else {
                sb.append(NPStringFog.decode(new byte[]{60, 98, 112, 54, 96, 123, 32, 117, 121}, "c45d42", 32103));
            }
            sb.append(NPStringFog.decode(new byte[]{88, 58}, "c0a69a", -2.8871702E8f));
            strGenerateDisplayGraph = generateDisplayGraph(next, str2);
        }
    }

    private String generateDisplayGraph(WidgetRun widgetRun, String str) {
        DependencyNode dependencyNode = widgetRun.start;
        DependencyNode dependencyNode2 = widgetRun.end;
        StringBuilder sb = new StringBuilder(str);
        if (!(widgetRun instanceof HelperReferences) && dependencyNode.dependencies.isEmpty() && (dependencyNode2.dependencies.isEmpty() && dependencyNode.targets.isEmpty()) && dependencyNode2.targets.isEmpty()) {
            return str;
        }
        sb.append(nodeDefinition(widgetRun));
        boolean zIsCenteredConnection = isCenteredConnection(dependencyNode, dependencyNode2);
        String strGenerateDisplayNode = generateDisplayNode(dependencyNode2, zIsCenteredConnection, generateDisplayNode(dependencyNode, zIsCenteredConnection, str));
        if (widgetRun instanceof VerticalWidgetRun) {
            strGenerateDisplayNode = generateDisplayNode(((VerticalWidgetRun) widgetRun).baseline, zIsCenteredConnection, strGenerateDisplayNode);
        }
        if ((widgetRun instanceof HorizontalWidgetRun) || ((widgetRun instanceof ChainRun) && ((ChainRun) widgetRun).orientation == 0)) {
            ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = widgetRun.widget.getHorizontalDimensionBehaviour();
            if (horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED || horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                if (!dependencyNode.targets.isEmpty() && dependencyNode2.targets.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode2.name());
                    sb.append(NPStringFog.decode(new byte[]{24, 31, 13, 24}, "82386a", USE_GROUPS));
                    sb.append(dependencyNode.name());
                    sb.append("\n");
                } else if (dependencyNode.targets.isEmpty() && !dependencyNode2.targets.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode.name());
                    sb.append(NPStringFog.decode(new byte[]{68, 73, 90, 17}, "ddd13f", -27994));
                    sb.append(dependencyNode2.name());
                    sb.append("\n");
                }
            } else if (horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun.widget.getDimensionRatio() > 0.0f) {
                sb.append("\n");
                sb.append(widgetRun.widget.getDebugName());
                sb.append(NPStringFog.decode(new byte[]{103, 126, 121, 52, 112, 107, 119, 120, 98, 39, 117, 17, 21, 8, 22}, "866f91", -16652));
                sb.append(widgetRun.widget.getDebugName());
                sb.append(NPStringFog.decode(new byte[]{57, 99, 118, 106, 53, 43, 37, 116, 127, 3, 107}, "f538ab", 4377));
            }
        } else if ((widgetRun instanceof VerticalWidgetRun) || ((widgetRun instanceof ChainRun) && ((ChainRun) widgetRun).orientation == 1)) {
            ConstraintWidget.DimensionBehaviour verticalDimensionBehaviour = widgetRun.widget.getVerticalDimensionBehaviour();
            if (verticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED || verticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                if (!dependencyNode.targets.isEmpty() && dependencyNode2.targets.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode2.name());
                    sb.append(NPStringFog.decode(new byte[]{18, 28, 90, 19}, "21d3c5", -1044293224L));
                    sb.append(dependencyNode.name());
                    sb.append("\n");
                } else if (dependencyNode.targets.isEmpty() && !dependencyNode2.targets.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode.name());
                    sb.append(NPStringFog.decode(new byte[]{22, 25, 9, 65}, "647a83", USE_GROUPS, false));
                    sb.append(dependencyNode2.name());
                    sb.append("\n");
                }
            } else if (verticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun.widget.getDimensionRatio() > 0.0f) {
                sb.append("\n");
                sb.append(widgetRun.widget.getDebugName());
                sb.append(NPStringFog.decode(new byte[]{102, 102, 35, 55, 96, 123, 122, 113, 42, 69, 25, 12, 25}, "90fe42", -1.88191839E9d));
                sb.append(widgetRun.widget.getDebugName());
                sb.append(NPStringFog.decode(new byte[]{103, 45, 44, 100, 122, 57, 119, 43, 55, 119, 127, 88, 50}, "8ec63c", 8.8206925E8f));
            }
        }
        return widgetRun instanceof ChainRun ? generateChainDisplayGraph((ChainRun) widgetRun, strGenerateDisplayNode) : sb.toString();
    }

    private String generateDisplayNode(DependencyNode dependencyNode, boolean z, String str) {
        StringBuilder sb = new StringBuilder(str);
        for (DependencyNode dependencyNode2 : dependencyNode.targets) {
            String str2 = ("\n" + dependencyNode.name()) + NPStringFog.decode(new byte[]{25, 78, 7, 23}, "9c9775", -16857) + dependencyNode2.name();
            if (dependencyNode.margin > 0 || z || (dependencyNode.run instanceof HelperReferences)) {
                String str3 = str2 + NPStringFog.decode(new byte[]{57}, "b5509b", 28518);
                if (dependencyNode.margin > 0) {
                    str3 = str3 + NPStringFog.decode(new byte[]{90, 81, 87, 4, 14, 92, 20}, "605aba", 2.139403E9f) + dependencyNode.margin + NPStringFog.decode(new byte[]{19}, "14d350", -1.5217974E9f);
                    if (z) {
                        str3 = str3 + NPStringFog.decode(new byte[]{30}, "296b23", 19311);
                    }
                }
                if (z) {
                    str3 = str3 + NPStringFog.decode(new byte[]{17, 71, 21, 65, 90, 86, 12, 80, 0, 75, 94, 86, 85, 20}, "14a863", -1.9807214E9f);
                }
                if (dependencyNode.run instanceof HelperReferences) {
                    str3 = str3 + NPStringFog.decode(new byte[]{17, 75, 70, 29, 95, 93, 12, 90, 93, 8, 87, 20, 82, 87, 94, 11, 65, 5, 86, 74, 83, 29, 19}, "182d38", -1.581702317E9d);
                }
                str2 = str3 + NPStringFog.decode(new byte[]{100}, "929999", -8256);
            }
            sb.append(str2 + "\n");
        }
        return sb.toString();
    }

    private boolean isCenteredConnection(DependencyNode dependencyNode, DependencyNode dependencyNode2) {
        Iterator<DependencyNode> it = dependencyNode.targets.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = it.next() != dependencyNode2 ? i + 1 : i;
        }
        Iterator<DependencyNode> it2 = dependencyNode2.targets.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            i2 = it2.next() != dependencyNode ? i2 + 1 : i2;
        }
        if (i <= 0 || i2 <= 0) {
            return false;
        }
        return USE_GROUPS;
    }

    private void measure(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        this.mMeasure.horizontalBehavior = dimensionBehaviour;
        this.mMeasure.verticalBehavior = dimensionBehaviour2;
        this.mMeasure.horizontalDimension = i;
        this.mMeasure.verticalDimension = i2;
        this.mMeasurer.measure(constraintWidget, this.mMeasure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
    }

    private String nodeDefinition(WidgetRun widgetRun) {
        boolean z = widgetRun instanceof VerticalWidgetRun;
        String debugName = widgetRun.widget.getDebugName();
        StringBuilder sb = new StringBuilder(debugName);
        ConstraintWidget constraintWidget = widgetRun.widget;
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = !z ? constraintWidget.getHorizontalDimensionBehaviour() : constraintWidget.getVerticalDimensionBehaviour();
        RunGroup runGroup = widgetRun.runGroup;
        if (z) {
            sb.append(NPStringFog.decode(new byte[]{105, 99, 113, 51, 101, 47, 117, 116, 120}, "654a1f", -1.849909816E9d));
        } else {
            sb.append(NPStringFog.decode(new byte[]{110, 120, 44, 48, 112, 106, 126, 126, 55, 35, 117}, "10cb90", -1.74609278E8d));
        }
        sb.append(NPStringFog.decode(new byte[]{69, 111, 65, 14, 7, 19, 0, 9, 92, 9, 8, 6, 73, 20, 94, 7, 4, 6, 9, 9, 14}, "e42ffc", -6.1901254E8f));
        sb.append(NPStringFog.decode(new byte[]{88, 108, 36, 119, 125, 113, 68, 122, 42, 103, 117, 113, 54, 5, 71, 5, 19, 20, 39, 125, 41, 121, 98, 100, 37, 123, 44, 123, 118, 9, 70, 8, 71, 21, 114, 113, 40, 116, 53, 116, 117, 112, 45, 118, 34, 8, 19, 6, 70, 6}, "d8e514", 5.709627E8f));
        sb.append(NPStringFog.decode(new byte[]{69, 19, 14, 55, 102, 10}, "e32c44", false));
        if (z) {
            sb.append(NPStringFog.decode(new byte[]{24, 18, 22, 20, 4, 100, 124, 18}, "826480", USE_GROUPS));
            if (widgetRun.start.resolved) {
                sb.append(NPStringFog.decode(new byte[]{69, 122, 127, 123, 123, 126, 42, 106, 5, 26, 83, 64, 0, 93, 86, 26}, "e88842", USE_GROUPS));
            }
            sb.append(NPStringFog.decode(new byte[]{16, 98, 126, 49, 100, 9, 18, 102, 126, 51, 18, 20, 114, 125, 99, 39, 117, 102, 13, 16, 0, 65, 14, 96, 12, 29, 101, 39, 14}, "021c04", 5447155L));
        } else {
            sb.append(NPStringFog.decode(new byte[]{25, 25, 25, 22, 88, 53, 125, 25}, "9996da", 1.2917536E9f));
            if (widgetRun.start.resolved) {
                sb.append(NPStringFog.decode(new byte[]{69, 33, 117, 34, 44, 126, 42, 49, 15, 67, 4, 64, 0, 6, 92, 67}, "ec2ac2", USE_GROUPS));
            }
            sb.append(NPStringFog.decode(new byte[]{67, 103, 118, 97, 53, 8, 65, 123, 124, 117, 53, 23, 67, 117, 118, 97, 37, 112, 49, 10, 27, 2, 67, 11, 47, 11, 22, 103, 37, 11}, "c793a5", -1.1612694E9f));
        }
        sb.append(NPStringFog.decode(new byte[]{24, 66, 67, 21, 13, 103, 124, 66, 33, 122, 99, 119, 125, 48, 94, 23, 0, 17, 24}, "8bc513", USE_GROUPS));
        if (widgetRun.dimension.resolved && !widgetRun.widget.measured) {
            sb.append(NPStringFog.decode(new byte[]{66, 39, 36, 122, 118, 117, 45, 55, 94, 27, 94, 75, 7, 0, 13, 27, 25}, "bec999", 3245));
        } else if (widgetRun.dimension.resolved) {
            sb.append(NPStringFog.decode(new byte[]{19, 123, 34, 37, 41, 127, 124, 107, 88, 68, 10, 90, 84, 81, 17, 1, 20, 82, 74, 27, 69}, "39eff3", 40086110L));
        } else if (widgetRun.widget.measured) {
            sb.append(NPStringFog.decode(new byte[]{67, 114, 114, 118, 119, 121, 44, 98, 8, 23, 65, 80, 15, 92, 90, 66, 26, 21}, "c05585", 559677580L));
        }
        if (horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            sb.append(NPStringFog.decode(new byte[]{23, 65, 29, 10, 83, 9, 70, 81, 5, 21, 94, 81, 0, 23}, "d5df64", -1.975474628E9d));
        }
        sb.append(NPStringFog.decode(new byte[]{9}, "72e0fb", -29373));
        sb.append(debugName);
        if (runGroup != null) {
            sb.append(NPStringFog.decode(new byte[]{23, 106}, "71ae2d", 1.9203355E9f));
            sb.append(runGroup.groupIndex + 1);
            sb.append(NPStringFog.decode(new byte[]{31}, "077bd5", 841871185L));
            sb.append(RunGroup.index);
            sb.append(NPStringFog.decode(new byte[]{106}, "73ddb5", -1368595663L));
        }
        sb.append(NPStringFog.decode(new byte[]{20, 13, 78, 103, 112, 8}, "41a346", -6.40614413E8d));
        if (z) {
            sb.append(NPStringFog.decode(new byte[]{69, 66, 16, 23, 9, 99, 33, 66}, "eb0757", false, false));
            if (((VerticalWidgetRun) widgetRun).baseline.resolved) {
                sb.append(NPStringFog.decode(new byte[]{69, 32, 37, 114, 119, 127, 42, 48, 95, 19, 95, 65, 0, 7, 12, 19}, "ebb183", false));
            }
            sb.append(NPStringFog.decode(new byte[]{20, 52, 44, 101, 99, 89, 22, 38, 34, 100, 114, 40, 125, 42, 38, 21, 23, 38, 123, 54, 39, 114, 101, 89, 22, 85, 65, 9, 85, 88, 27, 48, 39, 9}, "4dc77d", false, false));
            sb.append(NPStringFog.decode(new byte[]{65, 67, 23, 20, 94, 100, 37, 67}, "ac74b0", -4.3707082E8f));
            if (widgetRun.end.resolved) {
                sb.append(NPStringFog.decode(new byte[]{70, 115, 116, 33, 42, 116, 41, 99, 14, 64, 2, 74, 3, 84, 93, 64}, "f13be8", -1.75438085E9d));
            }
            sb.append(NPStringFog.decode(new byte[]{17, 104, 45, 54, 48, 89, 19, 122, 45, 48, 48, 43, 124, 26, 66, 38, 43, 54, 117, 125, 48, 89, 70, 85, 19, 6, 32, 88, 75, 48, 117, 6}, "18bddd", false));
        } else {
            sb.append(NPStringFog.decode(new byte[]{23, 20, 24, 21, 4, 108, 115, 20}, "748588", false, false));
            if (widgetRun.end.resolved) {
                sb.append(NPStringFog.decode(new byte[]{20, 33, 127, 34, 123, 124, 123, 49, 5, 67, 83, 66, 81, 6, 86, 67}, "4c8a40", false, USE_GROUPS));
            }
            sb.append(NPStringFog.decode(new byte[]{20, 101, 125, 52, 99, 5, 22, 103, 123, 33, 127, 108, 22, 21, 112, 41, 101, 124, 113, 103, 15, 68, 6, 26, 10, 103, 14, 73, 99, 124, 10}, "452f78", -1.4260525E9f));
        }
        sb.append(NPStringFog.decode(new byte[]{22, 20, 10, 24, 103, 102, 8, 8, 25, 99, 114, 118, 122, 113, 8}, "646734", false));
        sb.append(NPStringFog.decode(new byte[]{90, 63, 89, 56}, "dbb2e7", -1.8636599E9f));
        return sb.toString();
    }

    public void buildGraph() {
        buildGraph(this.mRuns);
        this.mGroups.clear();
        RunGroup.index = 0;
        findGroup(this.container.horizontalRun, 0, this.mGroups);
        findGroup(this.container.verticalRun, 1, this.mGroups);
        this.mNeedBuildGraph = false;
    }

    public void buildGraph(ArrayList<WidgetRun> arrayList) {
        arrayList.clear();
        this.mContainer.horizontalRun.clear();
        this.mContainer.verticalRun.clear();
        arrayList.add(this.mContainer.horizontalRun);
        arrayList.add(this.mContainer.verticalRun);
        HashSet hashSet = null;
        for (ConstraintWidget constraintWidget : this.mContainer.mChildren) {
            if (constraintWidget instanceof Guideline) {
                arrayList.add(new GuidelineReference(constraintWidget));
            } else {
                if (constraintWidget.isInHorizontalChain()) {
                    if (constraintWidget.horizontalChainRun == null) {
                        constraintWidget.horizontalChainRun = new ChainRun(constraintWidget, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.horizontalChainRun);
                } else {
                    arrayList.add(constraintWidget.horizontalRun);
                }
                if (constraintWidget.isInVerticalChain()) {
                    if (constraintWidget.verticalChainRun == null) {
                        constraintWidget.verticalChainRun = new ChainRun(constraintWidget, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.verticalChainRun);
                } else {
                    arrayList.add(constraintWidget.verticalRun);
                }
                if (constraintWidget instanceof HelperWidget) {
                    arrayList.add(new HelperReferences(constraintWidget));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<WidgetRun> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        for (WidgetRun widgetRun : arrayList) {
            if (widgetRun.widget != this.mContainer) {
                widgetRun.apply();
            }
        }
    }

    public void defineTerminalWidgets(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2) {
        if (this.mNeedBuildGraph) {
            buildGraph();
            boolean z = false;
            for (ConstraintWidget constraintWidget : this.container.mChildren) {
                constraintWidget.isTerminalWidget[0] = USE_GROUPS;
                constraintWidget.isTerminalWidget[1] = USE_GROUPS;
                z = constraintWidget instanceof Barrier ? true : z;
            }
            if (z) {
                return;
            }
            Iterator<RunGroup> it = this.mGroups.iterator();
            while (it.hasNext()) {
                it.next().defineTerminalWidgets(dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        }
    }

    public boolean directMeasure(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4 = false;
        boolean z5 = z & USE_GROUPS;
        if (this.mNeedBuildGraph || this.mNeedRedoMeasures) {
            for (ConstraintWidget constraintWidget : this.container.mChildren) {
                constraintWidget.ensureWidgetRuns();
                constraintWidget.measured = false;
                constraintWidget.horizontalRun.reset();
                constraintWidget.verticalRun.reset();
            }
            this.container.ensureWidgetRuns();
            this.container.measured = false;
            this.container.horizontalRun.reset();
            this.container.verticalRun.reset();
            this.mNeedRedoMeasures = false;
        }
        if (!basicMeasureWidgets(this.mContainer)) {
            this.container.setX(0);
            this.container.setY(0);
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.container.getDimensionBehaviour(0);
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.container.getDimensionBehaviour(1);
            if (this.mNeedBuildGraph) {
                buildGraph();
            }
            int x = this.container.getX();
            int y = this.container.getY();
            this.container.horizontalRun.start.resolve(x);
            this.container.verticalRun.start.resolve(y);
            measureWidgets();
            if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                if (z5) {
                    Iterator<WidgetRun> it = this.mRuns.iterator();
                    while (it.hasNext()) {
                        if (!it.next().supportsWrapComputation()) {
                            z2 = false;
                            break;
                        }
                    }
                    z2 = z5;
                    if (z2 && dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        this.container.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                        ConstraintWidgetContainer constraintWidgetContainer = this.container;
                        constraintWidgetContainer.setWidth(computeWrap(constraintWidgetContainer, 0));
                        this.container.horizontalRun.dimension.resolve(this.container.getWidth());
                    }
                    if (z2 && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        this.container.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                        ConstraintWidgetContainer constraintWidgetContainer2 = this.container;
                        constraintWidgetContainer2.setHeight(computeWrap(constraintWidgetContainer2, 1));
                        this.container.verticalRun.dimension.resolve(this.container.getHeight());
                    }
                } else {
                    z2 = z5;
                    if (z2) {
                        this.container.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                        ConstraintWidgetContainer constraintWidgetContainer3 = this.container;
                        constraintWidgetContainer3.setWidth(computeWrap(constraintWidgetContainer3, 0));
                        this.container.horizontalRun.dimension.resolve(this.container.getWidth());
                    }
                    if (z2) {
                        this.container.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                        ConstraintWidgetContainer constraintWidgetContainer22 = this.container;
                        constraintWidgetContainer22.setHeight(computeWrap(constraintWidgetContainer22, 1));
                        this.container.verticalRun.dimension.resolve(this.container.getHeight());
                    }
                }
            }
            if (this.container.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.FIXED || this.container.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int width = this.container.getWidth() + x;
                this.container.horizontalRun.end.resolve(width);
                this.container.horizontalRun.dimension.resolve(width - x);
                measureWidgets();
                if (this.container.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.FIXED || this.container.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                    int height = this.container.getHeight() + y;
                    this.container.verticalRun.end.resolve(height);
                    this.container.verticalRun.dimension.resolve(height - y);
                }
                measureWidgets();
                z3 = true;
            } else {
                z3 = false;
            }
            for (WidgetRun widgetRun : this.mRuns) {
                if (widgetRun.widget != this.container || widgetRun.resolved) {
                    widgetRun.applyToWidget();
                }
            }
            Iterator<WidgetRun> it2 = this.mRuns.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z4 = true;
                    break;
                }
                WidgetRun next = it2.next();
                if (z3 || next.widget != this.container) {
                    if (!next.start.resolved || ((!next.end.resolved && !(next instanceof GuidelineReference)) || (!next.dimension.resolved && !(next instanceof ChainRun) && !(next instanceof GuidelineReference)))) {
                        break;
                    }
                }
            }
            this.container.setHorizontalDimensionBehaviour(dimensionBehaviour);
            this.container.setVerticalDimensionBehaviour(dimensionBehaviour2);
        }
        return z4;
    }

    public boolean directMeasureSetup(boolean z) {
        if (this.mNeedBuildGraph) {
            for (ConstraintWidget constraintWidget : this.container.mChildren) {
                constraintWidget.ensureWidgetRuns();
                constraintWidget.measured = false;
                constraintWidget.horizontalRun.dimension.resolved = false;
                constraintWidget.horizontalRun.resolved = false;
                constraintWidget.horizontalRun.reset();
                constraintWidget.verticalRun.dimension.resolved = false;
                constraintWidget.verticalRun.resolved = false;
                constraintWidget.verticalRun.reset();
            }
            this.container.ensureWidgetRuns();
            this.container.measured = false;
            this.container.horizontalRun.dimension.resolved = false;
            this.container.horizontalRun.resolved = false;
            this.container.horizontalRun.reset();
            this.container.verticalRun.dimension.resolved = false;
            this.container.verticalRun.resolved = false;
            this.container.verticalRun.reset();
            buildGraph();
        }
        if (basicMeasureWidgets(this.mContainer)) {
            return false;
        }
        this.container.setX(0);
        this.container.setY(0);
        this.container.horizontalRun.start.resolve(0);
        this.container.verticalRun.start.resolve(0);
        return USE_GROUPS;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x015a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean directMeasureWithOrientation(boolean r11, int r12) {
        /*
            Method dump skipped, instruction units count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.DependencyGraph.directMeasureWithOrientation(boolean, int):boolean");
    }

    public void invalidateGraph() {
        this.mNeedBuildGraph = USE_GROUPS;
    }

    public void invalidateMeasures() {
        this.mNeedRedoMeasures = USE_GROUPS;
    }

    public void measureWidgets() {
        for (ConstraintWidget constraintWidget : this.container.mChildren) {
            if (!constraintWidget.measured) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.mListDimensionBehaviors[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget.mListDimensionBehaviors[1];
                int i = constraintWidget.mMatchConstraintDefaultWidth;
                int i2 = constraintWidget.mMatchConstraintDefaultHeight;
                boolean z = dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i == 1);
                boolean z2 = dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i2 == 1);
                boolean z3 = constraintWidget.horizontalRun.dimension.resolved;
                boolean z4 = constraintWidget.verticalRun.dimension.resolved;
                if (z3 && z4) {
                    measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, constraintWidget.horizontalRun.dimension.value, ConstraintWidget.DimensionBehaviour.FIXED, constraintWidget.verticalRun.dimension.value);
                    constraintWidget.measured = USE_GROUPS;
                } else if (z3 && z2) {
                    measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, constraintWidget.horizontalRun.dimension.value, ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, constraintWidget.verticalRun.dimension.value);
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.verticalRun.dimension.wrapValue = constraintWidget.getHeight();
                    } else {
                        constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                        constraintWidget.measured = USE_GROUPS;
                    }
                } else if (z4 && z) {
                    measure(constraintWidget, ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, constraintWidget.horizontalRun.dimension.value, ConstraintWidget.DimensionBehaviour.FIXED, constraintWidget.verticalRun.dimension.value);
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.horizontalRun.dimension.wrapValue = constraintWidget.getWidth();
                    } else {
                        constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                        constraintWidget.measured = USE_GROUPS;
                    }
                }
                if (constraintWidget.measured && constraintWidget.verticalRun.baselineDimension != null) {
                    constraintWidget.verticalRun.baselineDimension.resolve(constraintWidget.getBaselineDistance());
                }
            }
        }
    }

    public void setMeasurer(BasicMeasure.Measurer measurer) {
        this.mMeasurer = measurer;
    }
}
