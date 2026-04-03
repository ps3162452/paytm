package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class ChainRun extends WidgetRun {
    private int chainStyle;
    ArrayList<WidgetRun> widgets;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.widgets = new ArrayList<>();
        this.orientation = i;
        build();
    }

    private void build() {
        ConstraintWidget constraintWidget = this.widget;
        ConstraintWidget previousChainMember = constraintWidget.getPreviousChainMember(this.orientation);
        while (previousChainMember != null) {
            constraintWidget = previousChainMember;
            previousChainMember = previousChainMember.getPreviousChainMember(this.orientation);
        }
        this.widget = constraintWidget;
        this.widgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            this.widgets.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        for (WidgetRun widgetRun : this.widgets) {
            if (this.orientation == 0) {
                widgetRun.widget.horizontalChainRun = this;
            } else if (this.orientation == 1) {
                widgetRun.widget.verticalChainRun = this;
            }
        }
        if ((this.orientation == 0 && ((ConstraintWidgetContainer) this.widget.getParent()).isRtl()) && this.widgets.size() > 1) {
            this.widget = this.widgets.get(r0.size() - 1).widget;
        }
        this.chainStyle = this.orientation == 0 ? this.widget.getHorizontalChainStyle() : this.widget.getVerticalChainStyle();
    }

    private ConstraintWidget getFirstVisibleWidget() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.widgets.size()) {
                return null;
            }
            WidgetRun widgetRun = this.widgets.get(i2);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
            i = i2 + 1;
        }
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.widgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.widgets.get(size);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void apply() {
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
        int size = this.widgets.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.widgets.get(0).widget;
        ConstraintWidget constraintWidget2 = this.widgets.get(size - 1).widget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.widgets.size()) {
                return;
            }
            this.widgets.get(i2).applyToWidget();
            i = i2 + 1;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void clear() {
        this.runGroup = null;
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.widgets.size();
        long wrapDimension = 0;
        for (int i = 0; i < size; i++) {
            WidgetRun widgetRun = this.widgets.get(i);
            wrapDimension = wrapDimension + ((long) widgetRun.start.margin) + widgetRun.getWrapDimension() + ((long) widgetRun.end.margin);
        }
        return wrapDimension;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean supportsWrapComputation() {
        int size = this.widgets.size();
        for (int i = 0; i < size; i++) {
            if (!this.widgets.get(i).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(NPStringFog.decode(new byte[]{32, 14, 5, 13, 93, 52, 22, 8, 68}, "cfdd3f", -26140));
        sb.append(this.orientation == 0 ? NPStringFog.decode(new byte[]{11, 11, 23, 15, 30, 86, 13, 16, 4, 10, 68, 3, 67}, "cdefd9", 1.637860937E9d) : NPStringFog.decode(new byte[]{64, 82, 74, 16, 95, 1, 87, 91, 24, 94, 22}, "678d6b", -6.54765901E8d));
        for (WidgetRun widgetRun : this.widgets) {
            sb.append(NPStringFog.decode(new byte[]{8}, "4667d5", -22321));
            sb.append(widgetRun);
            sb.append(NPStringFog.decode(new byte[]{12, 19}, "23a79e", -309910927L));
        }
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        int i;
        float f;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        float f2;
        int i12;
        if (!this.start.resolved || !this.end.resolved) {
            return;
        }
        ConstraintWidget parent = this.widget.getParent();
        boolean zIsRtl = parent instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) parent).isRtl() : false;
        int i13 = this.end.value - this.start.value;
        int size = this.widgets.size();
        int i14 = 0;
        while (true) {
            if (i14 >= size) {
                i14 = -1;
                break;
            } else if (this.widgets.get(i14).widget.getVisibility() != 8) {
                break;
            } else {
                i14++;
            }
        }
        int i15 = size - 1;
        while (true) {
            if (i15 < 0) {
                i15 = -1;
                break;
            } else if (this.widgets.get(i15).widget.getVisibility() != 8) {
                break;
            } else {
                i15--;
            }
        }
        int i16 = 0;
        while (true) {
            int i17 = i16;
            i = 0;
            f = 0.0f;
            i2 = 0;
            i3 = 0;
            if (i17 >= 2) {
                break;
            }
            i3 = 0;
            f = 0.0f;
            i = 0;
            i2 = 0;
            int i18 = 0;
            while (i18 < size) {
                WidgetRun widgetRun = this.widgets.get(i18);
                if (widgetRun.widget.getVisibility() == 8) {
                    i12 = i2;
                } else {
                    i++;
                    if (i18 > 0 && i18 >= i14) {
                        i3 += widgetRun.start.margin;
                    }
                    int i19 = widgetRun.dimension.value;
                    boolean z = widgetRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (z) {
                        if (this.orientation == 0 && !widgetRun.widget.horizontalRun.dimension.resolved) {
                            return;
                        }
                        if (this.orientation == 1 && !widgetRun.widget.verticalRun.dimension.resolved) {
                            return;
                        }
                    } else if (widgetRun.matchConstraintsType == 1 && i17 == 0) {
                        z = true;
                        i19 = widgetRun.dimension.wrapValue;
                        i2++;
                    } else if (widgetRun.dimension.resolved) {
                        z = true;
                    }
                    if (z) {
                        i3 += i19;
                        float f3 = f;
                        i11 = i2;
                        f2 = f3;
                    } else {
                        int i20 = i2 + 1;
                        float f4 = widgetRun.widget.mWeight[this.orientation];
                        if (f4 >= 0.0f) {
                            f += f4;
                        }
                        float f5 = f;
                        i11 = i20;
                        f2 = f5;
                    }
                    if (i18 >= size - 1 || i18 >= i15) {
                        i12 = i11;
                        f = f2;
                    } else {
                        i3 += -widgetRun.end.margin;
                        i12 = i11;
                        f = f2;
                    }
                }
                i18++;
                i = i;
                i2 = i12;
            }
            if (i3 < i13 || i2 == 0) {
                break;
            } else {
                i16 = i17 + 1;
            }
        }
        int i21 = this.start.value;
        if (zIsRtl) {
            i21 = this.end.value;
        }
        if (i3 > i13) {
            i21 = zIsRtl ? i21 + ((int) (((i3 - i13) / 2.0f) + 0.5f)) : i21 - ((int) (((i3 - i13) / 2.0f) + 0.5f));
        }
        if (i2 > 0) {
            int i22 = (int) (((i13 - i3) / i2) + 0.5f);
            int i23 = 0;
            int i24 = 0;
            while (true) {
                int i25 = i24;
                if (i25 >= size) {
                    break;
                }
                WidgetRun widgetRun2 = this.widgets.get(i25);
                if (widgetRun2.widget.getVisibility() != 8 && widgetRun2.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && !widgetRun2.dimension.resolved) {
                    int i26 = f > 0.0f ? (int) (((widgetRun2.widget.mWeight[this.orientation] * (i13 - i3)) / f) + 0.5f) : i22;
                    if (this.orientation == 0) {
                        i8 = widgetRun2.widget.mMatchConstraintMaxWidth;
                        i9 = widgetRun2.widget.mMatchConstraintMinWidth;
                    } else {
                        i8 = widgetRun2.widget.mMatchConstraintMaxHeight;
                        i9 = widgetRun2.widget.mMatchConstraintMinHeight;
                    }
                    int iMax = Math.max(i9, widgetRun2.matchConstraintsType == 1 ? Math.min(i26, widgetRun2.dimension.wrapValue) : i26);
                    if (i8 > 0) {
                        iMax = Math.min(i8, iMax);
                    }
                    if (iMax != i26) {
                        int i27 = iMax;
                        i10 = i23 + 1;
                        i26 = i27;
                    } else {
                        i10 = i23;
                    }
                    widgetRun2.dimension.resolve(i26);
                    i23 = i10;
                }
                i24 = i25 + 1;
            }
            if (i23 > 0) {
                i2 -= i23;
                i3 = 0;
                int i28 = 0;
                while (true) {
                    int i29 = i28;
                    if (i29 >= size) {
                        break;
                    }
                    WidgetRun widgetRun3 = this.widgets.get(i29);
                    if (widgetRun3.widget.getVisibility() != 8) {
                        if (i29 > 0 && i29 >= i14) {
                            i3 += widgetRun3.start.margin;
                        }
                        i3 += widgetRun3.dimension.value;
                        if (i29 < size - 1 && i29 < i15) {
                            i3 += -widgetRun3.end.margin;
                        }
                    }
                    i28 = i29 + 1;
                }
            }
            if (this.chainStyle == 2 && i23 == 0) {
                this.chainStyle = 0;
            }
            i4 = i2;
            i5 = i21;
        } else {
            i4 = i2;
            i5 = i21;
        }
        if (i3 > i13) {
            this.chainStyle = 2;
        }
        if (i > 0 && i4 == 0 && i14 == i15) {
            this.chainStyle = 2;
        }
        int i30 = this.chainStyle;
        if (i30 == 1) {
            int i31 = 0;
            if (i > 1) {
                i31 = (i13 - i3) / (i - 1);
            } else if (i == 1) {
                i31 = (i13 - i3) / 2;
            }
            int i32 = i4 > 0 ? 0 : i31;
            int i33 = 0;
            while (i33 < size) {
                WidgetRun widgetRun4 = this.widgets.get(zIsRtl ? size - (i33 + 1) : i33);
                if (widgetRun4.widget.getVisibility() == 8) {
                    widgetRun4.start.resolve(i5);
                    widgetRun4.end.resolve(i5);
                    i7 = i5;
                } else {
                    if (i33 > 0) {
                        i5 = zIsRtl ? i5 - i32 : i5 + i32;
                    }
                    int i34 = (i33 <= 0 || i33 < i14) ? i5 : zIsRtl ? i5 - widgetRun4.start.margin : i5 + widgetRun4.start.margin;
                    if (zIsRtl) {
                        widgetRun4.end.resolve(i34);
                    } else {
                        widgetRun4.start.resolve(i34);
                    }
                    int i35 = widgetRun4.dimension.value;
                    if (widgetRun4.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                        i35 = widgetRun4.dimension.wrapValue;
                    }
                    int i36 = zIsRtl ? i34 - i35 : i35 + i34;
                    if (zIsRtl) {
                        widgetRun4.start.resolve(i36);
                    } else {
                        widgetRun4.end.resolve(i36);
                    }
                    widgetRun4.resolved = true;
                    i7 = (i33 >= size + (-1) || i33 >= i15) ? i36 : zIsRtl ? i36 - (-widgetRun4.end.margin) : (-widgetRun4.end.margin) + i36;
                }
                i33++;
                i5 = i7;
            }
            return;
        }
        if (i30 == 0) {
            int i37 = i4 > 0 ? 0 : (i13 - i3) / (i + 1);
            int i38 = 0;
            while (i38 < size) {
                WidgetRun widgetRun5 = this.widgets.get(zIsRtl ? size - (i38 + 1) : i38);
                if (widgetRun5.widget.getVisibility() == 8) {
                    widgetRun5.start.resolve(i5);
                    widgetRun5.end.resolve(i5);
                    i6 = i5;
                } else {
                    int i39 = zIsRtl ? i5 - i37 : i5 + i37;
                    int i40 = (i38 <= 0 || i38 < i14) ? i39 : zIsRtl ? i39 - widgetRun5.start.margin : i39 + widgetRun5.start.margin;
                    if (zIsRtl) {
                        widgetRun5.end.resolve(i40);
                    } else {
                        widgetRun5.start.resolve(i40);
                    }
                    int iMin = widgetRun5.dimension.value;
                    if (widgetRun5.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                        iMin = Math.min(iMin, widgetRun5.dimension.wrapValue);
                    }
                    int i41 = zIsRtl ? i40 - iMin : iMin + i40;
                    if (zIsRtl) {
                        widgetRun5.start.resolve(i41);
                    } else {
                        widgetRun5.end.resolve(i41);
                    }
                    i6 = (i38 >= size + (-1) || i38 >= i15) ? i41 : zIsRtl ? i41 - (-widgetRun5.end.margin) : (-widgetRun5.end.margin) + i41;
                }
                i38++;
                i5 = i6;
            }
            return;
        }
        if (i30 != 2) {
            return;
        }
        float horizontalBiasPercent = this.orientation == 0 ? this.widget.getHorizontalBiasPercent() : this.widget.getVerticalBiasPercent();
        if (zIsRtl) {
            horizontalBiasPercent = 1.0f - horizontalBiasPercent;
        }
        int i42 = (int) ((horizontalBiasPercent * (i13 - i3)) + 0.5f);
        if (i42 < 0 || i4 > 0) {
            i42 = 0;
        }
        int i43 = zIsRtl ? i5 - i42 : i42 + i5;
        int i44 = 0;
        while (true) {
            int i45 = i43;
            if (i44 >= size) {
                return;
            }
            WidgetRun widgetRun6 = this.widgets.get(zIsRtl ? size - (i44 + 1) : i44);
            if (widgetRun6.widget.getVisibility() == 8) {
                widgetRun6.start.resolve(i45);
                widgetRun6.end.resolve(i45);
                i43 = i45;
            } else {
                int i46 = (i44 <= 0 || i44 < i14) ? i45 : zIsRtl ? i45 - widgetRun6.start.margin : i45 + widgetRun6.start.margin;
                if (zIsRtl) {
                    widgetRun6.end.resolve(i46);
                } else {
                    widgetRun6.start.resolve(i46);
                }
                int i47 = widgetRun6.dimension.value;
                if (widgetRun6.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                    i47 = widgetRun6.dimension.wrapValue;
                }
                int i48 = zIsRtl ? i46 - i47 : i47 + i46;
                if (zIsRtl) {
                    widgetRun6.start.resolve(i48);
                } else {
                    widgetRun6.end.resolve(i48);
                }
                i43 = (i44 >= size + (-1) || i44 >= i15) ? i48 : zIsRtl ? i48 - (-widgetRun6.end.margin) : (-widgetRun6.end.margin) + i48;
            }
            i44++;
        }
    }
}
