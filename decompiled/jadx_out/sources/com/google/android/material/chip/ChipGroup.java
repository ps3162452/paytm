package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableGroup;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.List;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class ChipGroup extends FlowLayout {
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_ChipGroup;
    private final CheckableGroup<Chip> checkableGroup;
    private int chipSpacingHorizontal;
    private int chipSpacingVertical;
    private final int defaultCheckedId;
    private OnCheckedStateChangeListener onCheckedStateChangeListener;
    private final PassThroughHierarchyChangeListener passThroughListener;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    @Deprecated
    public interface OnCheckedChangeListener {
        void onCheckedChanged(ChipGroup chipGroup, int i);
    }

    public interface OnCheckedStateChangeListener {
        void onCheckedChanged(ChipGroup chipGroup, List<Integer> list);
    }

    private class PassThroughHierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
        private ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener;
        final ChipGroup this$0;

        private PassThroughHierarchyChangeListener(ChipGroup chipGroup) {
            this.this$0 = chipGroup;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == this.this$0 && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(ViewCompat.generateViewId());
                }
                this.this$0.checkableGroup.addCheckable((Chip) view2);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.onHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            ChipGroup chipGroup = this.this$0;
            if (view == chipGroup && (view2 instanceof Chip)) {
                chipGroup.checkableGroup.removeCheckable((Chip) view2);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.onHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ChipGroup(Context context, AttributeSet attributeSet, int i) {
        int i2 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        CheckableGroup<Chip> checkableGroup = new CheckableGroup<>();
        this.checkableGroup = checkableGroup;
        PassThroughHierarchyChangeListener passThroughHierarchyChangeListener = new PassThroughHierarchyChangeListener();
        this.passThroughListener = passThroughHierarchyChangeListener;
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(getContext(), attributeSet, R.styleable.ChipGroup, i, i2, new int[0]);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(typedArrayObtainStyledAttributes.getBoolean(R.styleable.ChipGroup_singleLine, false));
        setSingleSelection(typedArrayObtainStyledAttributes.getBoolean(R.styleable.ChipGroup_singleSelection, false));
        setSelectionRequired(typedArrayObtainStyledAttributes.getBoolean(R.styleable.ChipGroup_selectionRequired, false));
        this.defaultCheckedId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ChipGroup_checkedChip, -1);
        typedArrayObtainStyledAttributes.recycle();
        checkableGroup.setOnCheckedStateChangeListener(new CheckableGroup.OnCheckedStateChangeListener(this) { // from class: com.google.android.material.chip.ChipGroup.1
            final ChipGroup this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.android.material.internal.CheckableGroup.OnCheckedStateChangeListener
            public void onCheckedStateChanged(Set<Integer> set) {
                if (this.this$0.onCheckedStateChangeListener != null) {
                    OnCheckedStateChangeListener onCheckedStateChangeListener = this.this$0.onCheckedStateChangeListener;
                    ChipGroup chipGroup = this.this$0;
                    onCheckedStateChangeListener.onCheckedChanged(chipGroup, chipGroup.checkableGroup.getCheckedIdsSortedByChildOrder(this.this$0));
                }
            }
        });
        super.setOnHierarchyChangeListener(passThroughHierarchyChangeListener);
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    private int getChipCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof Chip) {
                i++;
            }
        }
        return i;
    }

    public void check(int i) {
        this.checkableGroup.check(i);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public void clearCheck() {
        this.checkableGroup.clearCheck();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getCheckedChipId() {
        return this.checkableGroup.getSingleCheckedId();
    }

    public List<Integer> getCheckedChipIds() {
        return this.checkableGroup.getCheckedIdsSortedByChildOrder(this);
    }

    public int getChipSpacingHorizontal() {
        return this.chipSpacingHorizontal;
    }

    public int getChipSpacingVertical() {
        return this.chipSpacingVertical;
    }

    int getIndexOfChip(View view) {
        if (!(view instanceof Chip)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof Chip) {
                if (((Chip) getChildAt(i2)) == view) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    public boolean isSelectionRequired() {
        return this.checkableGroup.isSelectionRequired();
    }

    @Override // com.google.android.material.internal.FlowLayout
    public boolean isSingleLine() {
        return super.isSingleLine();
    }

    public boolean isSingleSelection() {
        return this.checkableGroup.isSingleSelection();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.defaultCheckedId;
        if (i != -1) {
            this.checkableGroup.check(i);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCount(), isSingleLine() ? getChipCount() : -1, false, isSingleSelection() ? 1 : 2));
    }

    public void setChipSpacing(int i) {
        setChipSpacingHorizontal(i);
        setChipSpacingVertical(i);
    }

    public void setChipSpacingHorizontal(int i) {
        if (this.chipSpacingHorizontal != i) {
            this.chipSpacingHorizontal = i;
            setItemSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i));
    }

    public void setChipSpacingResource(int i) {
        setChipSpacing(getResources().getDimensionPixelOffset(i));
    }

    public void setChipSpacingVertical(int i) {
        if (this.chipSpacingVertical != i) {
            this.chipSpacingVertical = i;
            setLineSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{115, 95, 3, 93, 83, 81, 94, 80, 66, 87, 93, 78, 89, 83, 7, 65, 20, 92, 66, 86, 21, 82, 86, 84, 85, 68, 66, 91, 85, 78, 85, 23, 12, 92, 20, 93, 86, 81, 7, 80, 64, 22, 16, 116, 10, 90, 68, 127, 66, 88, 23, 67, 20, 92, 95, 23, 12, 92, 64, 24, 69, 68, 7, 19, 80, 81, 70, 94, 6, 86, 70, 24, 84, 69, 3, 68, 85, 90, 92, 82, 17, 19, 85, 75, 16, 68, 18, 82, 87, 81, 94, 80, 76}, "07b348", -1014633999L));
    }

    @Deprecated
    public void setDividerDrawableVertical(Drawable drawable) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{33, 14, 86, 86, 80, 89, 12, 1, 23, 92, 94, 70, 11, 2, 82, 74, 23, 84, 16, 7, 64, 89, 85, 92, 7, 21, 23, 80, 86, 70, 7, 70, 89, 87, 23, 85, 4, 0, 82, 91, 67, 30, 66, 37, 95, 81, 71, 119, 16, 9, 66, 72, 23, 84, 13, 70, 89, 87, 67, 16, 23, 21, 82, 24, 83, 89, 20, 15, 83, 93, 69, 16, 6, 20, 86, 79, 86, 82, 14, 3, 68, 24, 86, 67, 66, 21, 71, 89, 84, 89, 12, 1, 25}, "bf7870", true));
    }

    @Deprecated
    public void setFlexWrap(int i) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{32, 88, 4, 91, 1, 12, 13, 87, 69, 83, 10, 0, 27, 16, 18, 71, 7, 21, 67, 94, 10, 65, 70, 4, 15, 92, 10, 66, 3, 1, 77, 16, 38, 93, 15, 21, 36, 66, 10, 64, 22, 69, 6, 72, 21, 90, 21, 0, 16, 16, 4, 21, 21, 12, 13, 87, 9, 80, 42, 12, 13, 85, 69, 84, 18, 17, 17, 89, 7, 64, 18, 0, 67, 89, 11, 70, 18, 0, 2, 84, 75}, "c0e5fe", -16282));
    }

    @Deprecated
    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        if (onCheckedChangeListener == null) {
            setOnCheckedStateChangeListener(null);
        } else {
            setOnCheckedStateChangeListener(new OnCheckedStateChangeListener(this, onCheckedChangeListener) { // from class: com.google.android.material.chip.ChipGroup.2
                final ChipGroup this$0;
                final OnCheckedChangeListener val$listener;

                {
                    this.this$0 = this;
                    this.val$listener = onCheckedChangeListener;
                }

                @Override // com.google.android.material.chip.ChipGroup.OnCheckedStateChangeListener
                public void onCheckedChanged(ChipGroup chipGroup, List<Integer> list) {
                    if (this.this$0.checkableGroup.isSingleSelection()) {
                        this.val$listener.onCheckedChanged(chipGroup, this.this$0.getCheckedChipId());
                    }
                }
            });
        }
    }

    public void setOnCheckedStateChangeListener(OnCheckedStateChangeListener onCheckedStateChangeListener) {
        this.onCheckedStateChangeListener = onCheckedStateChangeListener;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.passThroughListener.onHierarchyChangeListener = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z) {
        this.checkableGroup.setSelectionRequired(z);
    }

    @Deprecated
    public void setShowDividerHorizontal(int i) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{38, 88, 84, 86, 1, 13, 11, 87, 21, 92, 15, 18, 12, 84, 80, 74, 70, 9, 10, 84, 80, 75, 70, 12, 4, 67, 21, 86, 9, 68, 0, 86, 83, 93, 5, 16, 75, 16, 118, 80, 15, 20, 34, 66, 90, 77, 22, 68, 1, 95, 21, 86, 9, 16, 69, 69, 70, 93, 70, 0, 12, 70, 92, 92, 3, 22, 69, 84, 71, 89, 17, 5, 7, 92, 80, 75, 70, 5, 22, 16, 70, 72, 7, 7, 12, 94, 82, 22}, "e058fd", true, false));
    }

    @Deprecated
    public void setShowDividerVertical(int i) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{119, 93, 80, 92, 81, 95, 90, 82, 17, 86, 95, 64, 93, 81, 84, 64, 22, 91, 91, 81, 84, 65, 22, 94, 85, 70, 17, 92, 89, 22, 81, 83, 87, 87, 85, 66, 26, 21, 114, 90, 95, 70, 115, 71, 94, 71, 70, 22, 80, 90, 17, 92, 89, 66, 20, 64, 66, 87, 22, 82, 93, 67, 88, 86, 83, 68, 20, 81, 67, 83, 65, 87, 86, 89, 84, 65, 22, 87, 71, 21, 66, 66, 87, 85, 93, 91, 86, 28}, "451266", 863020800L));
    }

    public void setSingleLine(int i) {
        setSingleLine(getResources().getBoolean(i));
    }

    @Override // com.google.android.material.internal.FlowLayout
    public void setSingleLine(boolean z) {
        super.setSingleLine(z);
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        this.checkableGroup.setSingleSelection(z);
    }
}
