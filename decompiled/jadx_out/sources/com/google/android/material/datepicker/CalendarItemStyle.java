package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.widget.TextView;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
final class CalendarItemStyle {
    private final ColorStateList backgroundColor;
    private final Rect insets;
    private final ShapeAppearanceModel itemShape;
    private final ColorStateList strokeColor;
    private final int strokeWidth;
    private final ColorStateList textColor;

    private CalendarItemStyle(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, ShapeAppearanceModel shapeAppearanceModel, Rect rect) {
        Preconditions.checkArgumentNonnegative(rect.left);
        Preconditions.checkArgumentNonnegative(rect.top);
        Preconditions.checkArgumentNonnegative(rect.right);
        Preconditions.checkArgumentNonnegative(rect.bottom);
        this.insets = rect;
        this.textColor = colorStateList2;
        this.backgroundColor = colorStateList;
        this.strokeColor = colorStateList3;
        this.strokeWidth = i;
        this.itemShape = shapeAppearanceModel;
    }

    static CalendarItemStyle create(Context context, int i) {
        Preconditions.checkArgument(i != 0, NPStringFog.decode(new byte[]{34, 86, 95, 90, 93, 21, 65, 84, 67, 81, 83, 21, 4, 23, 80, 20, 113, 0, 13, 82, 95, 80, 83, 19, 40, 67, 84, 89, 97, 21, 24, 91, 84, 20, 69, 8, 21, 95, 17, 85, 18, 18, 21, 78, 93, 81, 96, 4, 18, 126, 85, 20, 93, 7, 65, 7}, "a7142a", -21602));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R.styleable.MaterialCalendarItem);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetLeft, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetTop, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetRight, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendarItem_itemFillColor);
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendarItem_itemTextColor);
        ColorStateList colorStateList3 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MaterialCalendarItem_itemStrokeWidth, 0);
        ShapeAppearanceModel shapeAppearanceModelBuild = ShapeAppearanceModel.builder(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearance, 0), typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).build();
        typedArrayObtainStyledAttributes.recycle();
        return new CalendarItemStyle(colorStateList, colorStateList2, colorStateList3, dimensionPixelSize, shapeAppearanceModelBuild, rect);
    }

    int getBottomInset() {
        return this.insets.bottom;
    }

    int getLeftInset() {
        return this.insets.left;
    }

    int getRightInset() {
        return this.insets.right;
    }

    int getTopInset() {
        return this.insets.top;
    }

    void styleItem(TextView textView) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
        materialShapeDrawable.setShapeAppearanceModel(this.itemShape);
        materialShapeDrawable2.setShapeAppearanceModel(this.itemShape);
        materialShapeDrawable.setFillColor(this.backgroundColor);
        materialShapeDrawable.setStroke(this.strokeWidth, this.strokeColor);
        textView.setTextColor(this.textColor);
        ViewCompat.setBackground(textView, new InsetDrawable(Build.VERSION.SDK_INT >= 21 ? new RippleDrawable(this.textColor.withAlpha(30), materialShapeDrawable, materialShapeDrawable2) : materialShapeDrawable, this.insets.left, this.insets.top, this.insets.right, this.insets.bottom));
    }
}
