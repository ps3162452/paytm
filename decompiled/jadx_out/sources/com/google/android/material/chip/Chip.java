package com.google.android.material.chip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.chip.ChipDrawable;
import com.google.android.material.internal.MaterialCheckable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class Chip extends AppCompatCheckBox implements ChipDrawable.Delegate, Shapeable, MaterialCheckable<Chip> {
    private static final int CHIP_BODY_VIRTUAL_ID = 0;
    private static final int CLOSE_ICON_VIRTUAL_ID = 1;
    private static final int MIN_TOUCH_TARGET_DP = 48;
    private CharSequence accessibilityClassName;
    private ChipDrawable chipDrawable;
    private boolean closeIconFocused;
    private boolean closeIconHovered;
    private boolean closeIconPressed;
    private boolean deferredCheckedValue;
    private boolean ensureMinTouchTargetSize;
    private final TextAppearanceFontCallback fontCallback;
    private InsetDrawable insetBackgroundDrawable;
    private int lastLayoutDirection;
    private int minTouchTargetSize;
    private CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
    private MaterialCheckable.OnCheckedChangeListener<Chip> onCheckedChangeListenerInternal;
    private View.OnClickListener onCloseIconClickListener;
    private final Rect rect;
    private final RectF rectF;
    private RippleDrawable ripple;
    private final ChipTouchHelper touchHelper;
    private boolean touchHelperEnabled;
    private static final String BUTTON_ACCESSIBILITY_CLASS_NAME = NPStringFog.decode(new byte[]{89, 92, 84, 64, 11, 15, 92, 28, 71, 91, 0, 1, 93, 70, 30, 112, 17, 18, 76, 93, 94}, "8202df", false, false);
    private static final String COMPOUND_BUTTON_ACCESSIBILITY_CLASS_NAME = NPStringFog.decode(new byte[]{3, 8, 81, 17, 95, 94, 6, 72, 66, 10, 84, 80, 7, 18, 27, 32, 95, 90, 18, 9, 64, 13, 84, 117, 23, 18, 65, 12, 94}, "bf5c07", false, false);
    private static final String GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME = NPStringFog.decode(new byte[]{4, 15, 93, 65, 9, 94, 1, 79, 79, 90, 3, 64, 75, 55, 80, 86, 17}, "ea93f7", -16000);
    private static final String NAMESPACE_ANDROID = NPStringFog.decode(new byte[]{9, 18, 70, 70, 88, 27, 78, 21, 81, 94, 7, 89, 0, 21, 28, 87, 12, 80, 19, 9, 91, 82, 76, 87, 14, 11, 29, 87, 18, 95, 78, 20, 87, 69, 77, 85, 15, 2, 64, 89, 11, 80}, "af26b4", -336788360L);
    private static final String RADIO_BUTTON_ACCESSIBILITY_CLASS_NAME = NPStringFog.decode(new byte[]{83, 87, 80, 75, 89, 15, 86, 23, 67, 80, 82, 1, 87, 77, 26, 107, 87, 2, 91, 86, 118, 76, 66, 18, 93, 87}, "29496f", 1.5170276E9f);
    private static final String TAG = NPStringFog.decode(new byte[]{114, 94, 90, 71}, "163773", true, false);
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_Chip_Action;
    private static final Rect EMPTY_BOUNDS = new Rect();
    private static final int[] SELECTED_STATE = {android.R.attr.state_selected};
    private static final int[] CHECKABLE_STATE_SET = {android.R.attr.state_checkable};

    private class ChipTouchHelper extends ExploreByTouchHelper {
        final Chip this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ChipTouchHelper(Chip chip, Chip chip2) {
            super(chip2);
            this.this$0 = chip;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected int getVirtualViewAt(float f, float f2) {
            return (this.this$0.hasCloseIcon() && this.this$0.getCloseIconTouchBounds().contains(f, f2)) ? 1 : 0;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void getVisibleVirtualViews(List<Integer> list) {
            list.add(0);
            if (this.this$0.hasCloseIcon() && this.this$0.isCloseIconVisible() && this.this$0.onCloseIconClickListener != null) {
                list.add(1);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 == 16) {
                if (i == 0) {
                    return this.this$0.performClick();
                }
                if (i == 1) {
                    return this.this$0.performCloseIconClick();
                }
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void onPopulateNodeForHost(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(this.this$0.isCheckable());
            accessibilityNodeInfoCompat.setClickable(this.this$0.isClickable());
            accessibilityNodeInfoCompat.setClassName(this.this$0.getAccessibilityClassName());
            CharSequence text = this.this$0.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                accessibilityNodeInfoCompat.setText(text);
            } else {
                accessibilityNodeInfoCompat.setContentDescription(text);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (i != 1) {
                accessibilityNodeInfoCompat.setContentDescription("");
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.EMPTY_BOUNDS);
                return;
            }
            CharSequence closeIconContentDescription = this.this$0.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
            } else {
                CharSequence text = this.this$0.getText();
                Context context = this.this$0.getContext();
                int i2 = R.string.mtrl_chip_close_icon_content_description;
                if (TextUtils.isEmpty(text)) {
                    text = "";
                }
                accessibilityNodeInfoCompat.setContentDescription(context.getString(i2, text).trim());
            }
            accessibilityNodeInfoCompat.setBoundsInParent(this.this$0.getCloseIconTouchBoundsInt());
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            accessibilityNodeInfoCompat.setEnabled(this.this$0.isEnabled());
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void onVirtualViewKeyboardFocusChanged(int i, boolean z) {
            if (i == 1) {
                this.this$0.closeIconFocused = z;
                this.this$0.refreshDrawableState();
            }
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Chip(Context context, AttributeSet attributeSet, int i) {
        int i2 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.rect = new Rect();
        this.rectF = new RectF();
        this.fontCallback = new TextAppearanceFontCallback(this) { // from class: com.google.android.material.chip.Chip.1
            final Chip this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            public void onFontRetrievalFailed(int i3) {
            }

            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            public void onFontRetrieved(Typeface typeface, boolean z) {
                Chip chip = this.this$0;
                chip.setText(chip.chipDrawable.shouldDrawText() ? this.this$0.chipDrawable.getText() : this.this$0.getText());
                this.this$0.requestLayout();
                this.this$0.invalidate();
            }
        };
        Context context2 = getContext();
        validateAttributes(attributeSet);
        ChipDrawable chipDrawableCreateFromAttributes = ChipDrawable.createFromAttributes(context2, attributeSet, i, i2);
        initMinTouchTarget(context2, attributeSet, i);
        setChipDrawable(chipDrawableCreateFromAttributes);
        chipDrawableCreateFromAttributes.setElevation(ViewCompat.getElevation(this));
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.Chip, i, i2, new int[0]);
        if (Build.VERSION.SDK_INT < 23) {
            setTextColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.Chip_android_textColor));
        }
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R.styleable.Chip_shapeAppearance);
        typedArrayObtainStyledAttributes.recycle();
        this.touchHelper = new ChipTouchHelper(this, this);
        updateAccessibilityDelegate();
        if (!zHasValue) {
            initOutlineProvider();
        }
        setChecked(this.deferredCheckedValue);
        setText(chipDrawableCreateFromAttributes.getText());
        setEllipsize(chipDrawableCreateFromAttributes.getEllipsize());
        updateTextPaintDrawState();
        if (!this.chipDrawable.shouldDrawText()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        updatePaddingInternal();
        if (shouldEnsureMinTouchTargetSize()) {
            setMinHeight(this.minTouchTargetSize);
        }
        this.lastLayoutDirection = ViewCompat.getLayoutDirection(this);
        super.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: com.google.android.material.chip.Chip.2
            final Chip this$0;

            {
                this.this$0 = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (this.this$0.onCheckedChangeListenerInternal != null) {
                    this.this$0.onCheckedChangeListenerInternal.onCheckedChanged(this.this$0, z);
                }
                if (this.this$0.onCheckedChangeListener != null) {
                    this.this$0.onCheckedChangeListener.onCheckedChanged(compoundButton, z);
                }
            }
        });
    }

    private void applyChipDrawable(ChipDrawable chipDrawable) {
        chipDrawable.setDelegate(this);
    }

    private int[] createCloseIconDrawableState() {
        int i = 1;
        int i2 = isEnabled() ? 1 : 0;
        if (this.closeIconFocused) {
            i2++;
        }
        if (this.closeIconHovered) {
            i2++;
        }
        if (this.closeIconPressed) {
            i2++;
        }
        if (isChecked()) {
            i2++;
        }
        int[] iArr = new int[i2];
        if (isEnabled()) {
            iArr[0] = 16842910;
        } else {
            i = 0;
        }
        if (this.closeIconFocused) {
            iArr[i] = 16842908;
            i++;
        }
        if (this.closeIconHovered) {
            iArr[i] = 16843623;
            i++;
        }
        if (this.closeIconPressed) {
            iArr[i] = 16842919;
            i++;
        }
        if (isChecked()) {
            iArr[i] = 16842913;
        }
        return iArr;
    }

    private void ensureChipDrawableHasCallback() {
        if (getBackgroundDrawable() == this.insetBackgroundDrawable && this.chipDrawable.getCallback() == null) {
            this.chipDrawable.setCallback(this.insetBackgroundDrawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        this.rectF.setEmpty();
        if (hasCloseIcon() && this.onCloseIconClickListener != null) {
            this.chipDrawable.getCloseIconTouchBounds(this.rectF);
        }
        return this.rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.rect.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.rect;
    }

    private TextAppearance getTextAppearance() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getTextAppearance();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCloseIcon() {
        ChipDrawable chipDrawable = this.chipDrawable;
        return (chipDrawable == null || chipDrawable.getCloseIcon() == null) ? false : true;
    }

    private void initMinTouchTarget(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.Chip, i, DEF_STYLE_RES, new int[0]);
        this.ensureMinTouchTargetSize = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Chip_ensureMinTouchTargetSize, false);
        this.minTouchTargetSize = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(R.styleable.Chip_chipMinTouchTargetSize, (float) Math.ceil(ViewUtils.dpToPx(getContext(), 48))));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void initOutlineProvider() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new ViewOutlineProvider(this) { // from class: com.google.android.material.chip.Chip.3
                final Chip this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    if (this.this$0.chipDrawable != null) {
                        this.this$0.chipDrawable.getOutline(outline);
                    } else {
                        outline.setAlpha(0.0f);
                    }
                }
            });
        }
    }

    private void insetChipBackgroundDrawable(int i, int i2, int i3, int i4) {
        this.insetBackgroundDrawable = new InsetDrawable((Drawable) this.chipDrawable, i, i2, i3, i4);
    }

    private void removeBackgroundInset() {
        if (this.insetBackgroundDrawable != null) {
            this.insetBackgroundDrawable = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            updateBackgroundDrawable();
        }
    }

    private void setCloseIconHovered(boolean z) {
        if (this.closeIconHovered != z) {
            this.closeIconHovered = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.closeIconPressed != z) {
            this.closeIconPressed = z;
            refreshDrawableState();
        }
    }

    private void unapplyChipDrawable(ChipDrawable chipDrawable) {
        if (chipDrawable != null) {
            chipDrawable.setDelegate(null);
        }
    }

    private void updateAccessibilityDelegate() {
        if (hasCloseIcon() && isCloseIconVisible() && this.onCloseIconClickListener != null) {
            ViewCompat.setAccessibilityDelegate(this, this.touchHelper);
            this.touchHelperEnabled = true;
        } else {
            ViewCompat.setAccessibilityDelegate(this, null);
            this.touchHelperEnabled = false;
        }
    }

    private void updateBackgroundDrawable() {
        if (RippleUtils.USE_FRAMEWORK_RIPPLE) {
            updateFrameworkRippleBackground();
            return;
        }
        this.chipDrawable.setUseCompatRipple(true);
        ViewCompat.setBackground(this, getBackgroundDrawable());
        updatePaddingInternal();
        ensureChipDrawableHasCallback();
    }

    private void updateFrameworkRippleBackground() {
        this.ripple = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.chipDrawable.getRippleColor()), getBackgroundDrawable(), null);
        this.chipDrawable.setUseCompatRipple(false);
        ViewCompat.setBackground(this, this.ripple);
        updatePaddingInternal();
    }

    private void updatePaddingInternal() {
        ChipDrawable chipDrawable;
        if (TextUtils.isEmpty(getText()) || (chipDrawable = this.chipDrawable) == null) {
            return;
        }
        int chipEndPadding = (int) (chipDrawable.getChipEndPadding() + this.chipDrawable.getTextEndPadding() + this.chipDrawable.calculateCloseIconWidth());
        int chipStartPadding = (int) (this.chipDrawable.getChipStartPadding() + this.chipDrawable.getTextStartPadding() + this.chipDrawable.calculateChipIconWidth());
        if (this.insetBackgroundDrawable != null) {
            Rect rect = new Rect();
            this.insetBackgroundDrawable.getPadding(rect);
            chipStartPadding += rect.left;
            chipEndPadding += rect.right;
        }
        ViewCompat.setPaddingRelative(this, chipStartPadding, getPaddingTop(), chipEndPadding, getPaddingBottom());
    }

    private void updateTextPaintDrawState() {
        TextPaint paint = getPaint();
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            paint.drawableState = chipDrawable.getState();
        }
        TextAppearance textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.updateDrawState(getContext(), paint, this.fontCallback);
        }
    }

    private void validateAttributes(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, NPStringFog.decode(new byte[]{84, 3, 82, 15, 85, 19, 89, 23, 95, 0}, "6b1d2a", true)) != null) {
            Log.w(TAG, NPStringFog.decode(new byte[]{113, 13, 67, 12, 95, 76, 21, 17, 6, 22, 16, 76, 93, 7, 67, 0, 81, 91, 94, 5, 17, 13, 69, 86, 81, 89, 67, 33, 88, 81, 69, 66, 14, 3, 94, 89, 82, 7, 16, 66, 89, 76, 70, 66, 12, 21, 94, 24, 87, 3, 0, 9, 87, 74, 90, 23, 13, 6, 16, 92, 71, 3, 20, 3, 82, 84, 80, 76}, "5bcb08", -22707));
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, NPStringFog.decode(new byte[]{87, 20, 4, 20, 2, 6, 95, 3, 41, 6, 5, 16}, "3feccd", false)) != null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{98, 93, 4, 7, 64, 83, 18, 66, 4, 18, 19, 90, 87, 87, 21, 70, 87, 68, 83, 70, 0, 4, 95, 83, 18, 68, 18, 15, 93, 81, 18, 99, 79, 7, 71, 66, 64, 18, 2, 14, 90, 70, 123, 82, 14, 8, 29}, "21af36", 1.8858624E9f));
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, NPStringFog.decode(new byte[]{0, 69, 4, 19, 7, 90, 8, 82, 54, 16, 7, 74, 16}, "d7edf8", true)) != null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{104, 8, 6, 84, 67, 84, 24, 23, 6, 65, 16, 66, 76, 5, 17, 65, 16, 85, 74, 5, 20, 84, 82, 93, 93, 68, 22, 70, 89, 95, 95, 68, 49, 27, 81, 69, 76, 22, 64, 86, 88, 88, 72, 45, 0, 90, 94, 31}, "8dc501", 1.38537858E8d));
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, NPStringFog.decode(new byte[]{81, 19, 84, 64, 88, 3, 89, 4, 112, 89, 93}, "5a579a", -6533)) != null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{102, 88, 83, 85, 64, 3, 22, 71, 83, 64, 19, 3, 88, 80, 22, 80, 65, 7, 65, 85, 84, 88, 86, 70, 67, 71, 95, 90, 84, 70, 100, 26, 87, 64, 71, 20, 21, 87, 90, 91, 64, 3, 127, 87, 89, 90, 29}, "64643f", -1.1063899E8f));
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, NPStringFog.decode(new byte[]{0, 66, 7, 20, 85, 90, 8, 85, 52, 10, 83, 80, 16}, "d0fc48", 1.817827468E9d)) != null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{97, 15, 4, 0, 22, 81, 17, 16, 4, 21, 69, 81, 95, 7, 65, 5, 23, 85, 70, 2, 3, 13, 0, 20, 68, 16, 8, 15, 2, 20, 99, 77, 0, 21, 17, 70, 18, 0, 13, 14, 22, 81, 120, 0, 14, 15, 75}, "1caae4", true, false));
        }
        if (!attributeSet.getAttributeBooleanValue(NAMESPACE_ANDROID, NPStringFog.decode(new byte[]{65, 15, 10, 87, 13, 4, 126, 15, 10, 85}, "2fd0aa", 4936), true) || attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, NPStringFog.decode(new byte[]{94, 12, 92, 4, 17}, "2e2ab5", -9.26536E8f), 1) != 1 || attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, NPStringFog.decode(new byte[]{89, 13, 10, 121, 90, 91, 81, 23}, "4dd535", 26148), 1) != 1 || attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, NPStringFog.decode(new byte[]{9, 81, 73, 121, 91, 95, 1, 67}, "d01521", true, false), 1) != 1) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{119, 94, 12, 18, 21, 7, 91, 83, 22, 66, 91, 12, 64, 22, 22, 23, 69, 19, 91, 68, 17, 66, 88, 22, 88, 66, 12, 79, 89, 10, 90, 83, 69, 22, 80, 27, 64}, "46eb5c", false, false));
        }
        if (attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, NPStringFog.decode(new byte[]{2, 22, 5, 19, 80, 16, 28}, "edde9d", true), 8388627) != 8388627) {
            Log.w(TAG, NPStringFog.decode(new byte[]{122, 9, 91, 66, 16, 65, 92, 25, 70, 18, 93, 64, 74, 21, 18, 80, 85, 21, 79, 4, 64, 70, 89, 86, 88, 13, 94, 75, 16, 86, 92, 15, 70, 87, 66, 21, 88, 15, 86, 18, 67, 65, 88, 19, 70, 18, 81, 89, 80, 6, 92, 87, 84}, "9a2205", 1.1085443E9f));
        }
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return !this.touchHelperEnabled ? super.dispatchHoverEvent(motionEvent) : this.touchHelper.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.touchHelperEnabled) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (!this.touchHelper.dispatchKeyEvent(keyEvent) || this.touchHelper.getKeyboardFocusedVirtualViewId() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        boolean closeIconState = false;
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null && chipDrawable.isCloseIconStateful()) {
            closeIconState = this.chipDrawable.setCloseIconState(createCloseIconDrawableState());
        }
        if (closeIconState) {
            invalidate();
        }
    }

    public boolean ensureAccessibleTouchTarget(int i) {
        this.minTouchTargetSize = i;
        if (!shouldEnsureMinTouchTargetSize()) {
            if (this.insetBackgroundDrawable != null) {
                removeBackgroundInset();
                return false;
            }
            updateBackgroundDrawable();
            return false;
        }
        int iMax = Math.max(0, i - this.chipDrawable.getIntrinsicHeight());
        int iMax2 = Math.max(0, i - this.chipDrawable.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            if (this.insetBackgroundDrawable != null) {
                removeBackgroundInset();
                return false;
            }
            updateBackgroundDrawable();
            return false;
        }
        int i2 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i3 = iMax > 0 ? iMax / 2 : 0;
        if (this.insetBackgroundDrawable != null) {
            Rect rect = new Rect();
            this.insetBackgroundDrawable.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                updateBackgroundDrawable();
                return true;
            }
        }
        if (Build.VERSION.SDK_INT >= 16) {
            if (getMinHeight() != i) {
                setMinHeight(i);
            }
            if (getMinWidth() != i) {
                setMinWidth(i);
            }
        } else {
            setMinHeight(i);
            setMinWidth(i);
        }
        insetChipBackgroundDrawable(i2, i3, i2, i3);
        updateBackgroundDrawable();
        return true;
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.accessibilityClassName)) {
            return this.accessibilityClassName;
        }
        if (!isCheckable()) {
            return isClickable() ? BUTTON_ACCESSIBILITY_CLASS_NAME : GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME;
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).isSingleSelection()) ? RADIO_BUTTON_ACCESSIBILITY_CLASS_NAME : COMPOUND_BUTTON_ACCESSIBILITY_CLASS_NAME;
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.insetBackgroundDrawable;
        return insetDrawable == null ? this.chipDrawable : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCheckedIcon();
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCheckedIconTint();
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipBackgroundColor();
        }
        return null;
    }

    public float getChipCornerRadius() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return Math.max(0.0f, chipDrawable.getChipCornerRadius());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.chipDrawable;
    }

    public float getChipEndPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipEndPadding();
        }
        return 0.0f;
    }

    public Drawable getChipIcon() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipIcon();
        }
        return null;
    }

    public float getChipIconSize() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipIconSize();
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipIconTint();
        }
        return null;
    }

    public float getChipMinHeight() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipMinHeight();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipStartPadding();
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipStrokeColor();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipStrokeWidth();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCloseIcon();
        }
        return null;
    }

    public CharSequence getCloseIconContentDescription() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCloseIconContentDescription();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCloseIconEndPadding();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCloseIconSize();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCloseIconStartPadding();
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCloseIconTint();
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getEllipsize();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.touchHelperEnabled && (this.touchHelper.getKeyboardFocusedVirtualViewId() == 1 || this.touchHelper.getAccessibilityFocusedVirtualViewId() == 1)) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    public MotionSpec getHideMotionSpec() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getHideMotionSpec();
        }
        return null;
    }

    public float getIconEndPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getIconEndPadding();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getIconStartPadding();
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getRippleColor();
        }
        return null;
    }

    @Override // com.google.android.material.shape.Shapeable
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.chipDrawable.getShapeAppearanceModel();
    }

    public MotionSpec getShowMotionSpec() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getShowMotionSpec();
        }
        return null;
    }

    public float getTextEndPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getTextEndPadding();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getTextStartPadding();
        }
        return 0.0f;
    }

    public boolean isCheckable() {
        ChipDrawable chipDrawable = this.chipDrawable;
        return chipDrawable != null && chipDrawable.isCheckable();
    }

    @Deprecated
    public boolean isCheckedIconEnabled() {
        return isCheckedIconVisible();
    }

    public boolean isCheckedIconVisible() {
        ChipDrawable chipDrawable = this.chipDrawable;
        return chipDrawable != null && chipDrawable.isCheckedIconVisible();
    }

    @Deprecated
    public boolean isChipIconEnabled() {
        return isChipIconVisible();
    }

    public boolean isChipIconVisible() {
        ChipDrawable chipDrawable = this.chipDrawable;
        return chipDrawable != null && chipDrawable.isChipIconVisible();
    }

    @Deprecated
    public boolean isCloseIconEnabled() {
        return isCloseIconVisible();
    }

    public boolean isCloseIconVisible() {
        ChipDrawable chipDrawable = this.chipDrawable;
        return chipDrawable != null && chipDrawable.isCloseIconVisible();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this, this.chipDrawable);
    }

    @Override // com.google.android.material.chip.ChipDrawable.Delegate
    public void onChipDrawableSizeChange() {
        ensureAccessibleTouchTarget(this.minTouchTargetSize);
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            mergeDrawableStates(iArrOnCreateDrawableState, SELECTED_STATE);
        }
        if (isCheckable()) {
            mergeDrawableStates(iArrOnCreateDrawableState, CHECKABLE_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.touchHelperEnabled) {
            this.touchHelper.onFocusChanged(z, i, rect);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 7:
                setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
                break;
            case 10:
                setCloseIconHovered(false);
                break;
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(chipGroup.getRowIndex(this), 1, chipGroup.isSingleLine() ? chipGroup.getIndexOfChip(this) : -1, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), PointerIconCompat.TYPE_HAND);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.lastLayoutDirection != i) {
            this.lastLayoutDirection = i;
            updatePaddingInternal();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            r1 = 1
            r2 = 0
            int r0 = r7.getActionMasked()
            android.graphics.RectF r3 = r6.getCloseIconTouchBounds()
            float r4 = r7.getX()
            float r5 = r7.getY()
            boolean r3 = r3.contains(r4, r5)
            switch(r0) {
                case 0: goto L3a;
                case 1: goto L2e;
                case 2: goto L23;
                case 3: goto L45;
                default: goto L19;
            }
        L19:
            r0 = r2
        L1a:
            if (r0 != 0) goto L22
            boolean r0 = super.onTouchEvent(r7)
            if (r0 == 0) goto L41
        L22:
            return r1
        L23:
            boolean r0 = r6.closeIconPressed
            if (r0 == 0) goto L43
            if (r3 != 0) goto L2c
            r6.setCloseIconPressed(r2)
        L2c:
            r0 = r1
            goto L1a
        L2e:
            boolean r0 = r6.closeIconPressed
            if (r0 == 0) goto L45
            r6.performCloseIconClick()
            r0 = r1
        L36:
            r6.setCloseIconPressed(r2)
            goto L1a
        L3a:
            if (r3 == 0) goto L43
            r6.setCloseIconPressed(r1)
            r0 = r1
            goto L1a
        L41:
            r1 = r2
            goto L22
        L43:
            r0 = r2
            goto L1a
        L45:
            r0 = r2
            goto L36
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean performCloseIconClick() {
        boolean z = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.onCloseIconClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        }
        if (this.touchHelperEnabled) {
            this.touchHelper.sendEventForVirtualView(1, 1);
        }
        return z;
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.accessibilityClassName = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.ripple) {
            super.setBackground(drawable);
        } else {
            Log.w(TAG, NPStringFog.decode(new byte[]{32, 11, 19, 91, 12, 17, 68, 23, 86, 65, 67, 17, 12, 1, 19, 87, 2, 6, 15, 3, 65, 90, 22, 11, 0, 95, 19, 118, 11, 12, 20, 68, 94, 84, 13, 4, 3, 1, 64, 21, 10, 17, 23, 68, 92, 66, 13, 69, 6, 5, 80, 94, 4, 23, 11, 17, 93, 81, 67, 1, 22, 5, 68, 84, 1, 9, 1, 74}, "dd35ce", 1745883930L));
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.w(TAG, NPStringFog.decode(new byte[]{118, 90, 22, 91, 11, 17, 18, 70, 83, 65, 68, 17, 90, 80, 22, 87, 5, 6, 89, 82, 68, 90, 17, 11, 86, 21, 85, 90, 8, 10, 64, 14, 22, 118, 12, 12, 66, 21, 91, 84, 10, 4, 85, 80, 69, 21, 13, 17, 65, 21, 89, 66, 10, 69, 80, 84, 85, 94, 3, 23, 93, 64, 88, 81, 68, 1, 64, 84, 65, 84, 6, 9, 87, 27}, "2565de", 8.6667727E7d));
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.ripple) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w(TAG, NPStringFog.decode(new byte[]{114, 91, 20, 93, 14, 21, 22, 71, 81, 71, 65, 21, 94, 81, 20, 81, 0, 2, 93, 83, 70, 92, 20, 15, 82, 20, 80, 65, 0, 22, 87, 86, 88, 86, 90, 65, 117, 92, 93, 67, 65, 12, 87, 90, 85, 84, 4, 18, 22, 93, 64, 64, 65, 14, 65, 90, 20, 81, 0, 2, 93, 83, 70, 92, 20, 15, 82, 20, 80, 65, 0, 22, 87, 86, 88, 86, 79}, "6443aa", 836343344L));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
        Log.w(TAG, NPStringFog.decode(new byte[]{34, 12, 24, 88, 87, 22, 70, 16, 93, 66, 24, 22, 14, 6, 24, 84, 89, 1, 13, 4, 74, 89, 77, 12, 2, 67, 74, 83, 75, 13, 19, 17, 91, 83, 3, 66, 37, 11, 81, 70, 24, 15, 7, 13, 89, 81, 93, 17, 70, 10, 76, 69, 24, 13, 17, 13, 24, 84, 89, 1, 13, 4, 74, 89, 77, 12, 2, 67, 92, 68, 89, 21, 7, 1, 84, 83, 22}, "fc868b", 1.480123693E9d));
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w(TAG, NPStringFog.decode(new byte[]{33, 88, 24, 86, 88, 71, 69, 68, 93, 76, 23, 71, 13, 82, 24, 90, 86, 80, 14, 80, 74, 87, 66, 93, 1, 23, 76, 81, 89, 71, 69, 91, 81, 75, 67, 8, 69, 116, 80, 81, 71, 19, 8, 86, 86, 89, 80, 86, 22, 23, 81, 76, 68, 19, 10, 64, 86, 24, 85, 82, 6, 92, 95, 74, 88, 70, 11, 83, 24, 92, 69, 82, 18, 86, 90, 84, 82, 29}, "e78873", -22301));
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w(TAG, NPStringFog.decode(new byte[]{117, 12, 69, 93, 12, 16, 17, 16, 0, 71, 67, 16, 89, 6, 69, 81, 2, 7, 90, 4, 23, 92, 22, 10, 85, 67, 17, 90, 13, 16, 17, 14, 10, 87, 6, 95, 17, 32, 13, 90, 19, 68, 92, 2, 11, 82, 4, 1, 66, 67, 12, 71, 16, 68, 94, 20, 11, 19, 1, 5, 82, 8, 2, 65, 12, 17, 95, 7, 69, 87, 17, 5, 70, 2, 7, 95, 6, 74}, "1ce3cd", true, false));
    }

    public void setCheckable(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckable(z);
        }
    }

    public void setCheckableResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckableResource(i);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null) {
            this.deferredCheckedValue = z;
        } else if (chipDrawable.isCheckable()) {
            super.setChecked(z);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIcon(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconResource(i);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconTint(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconTintResource(i);
        }
    }

    public void setCheckedIconVisible(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconVisible(i);
        }
    }

    public void setCheckedIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconVisible(z);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipBackgroundColor(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipBackgroundColorResource(i);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipCornerRadius(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipCornerRadiusResource(i);
        }
    }

    public void setChipDrawable(ChipDrawable chipDrawable) {
        ChipDrawable chipDrawable2 = this.chipDrawable;
        if (chipDrawable2 != chipDrawable) {
            unapplyChipDrawable(chipDrawable2);
            this.chipDrawable = chipDrawable;
            chipDrawable.setShouldDrawText(false);
            applyChipDrawable(this.chipDrawable);
            ensureAccessibleTouchTarget(this.minTouchTargetSize);
        }
    }

    public void setChipEndPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipEndPadding(f);
        }
    }

    public void setChipEndPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipEndPaddingResource(i);
        }
    }

    public void setChipIcon(Drawable drawable) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIcon(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconResource(i);
        }
    }

    public void setChipIconSize(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconSize(f);
        }
    }

    public void setChipIconSizeResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconSizeResource(i);
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconTint(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconTintResource(i);
        }
    }

    public void setChipIconVisible(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconVisible(i);
        }
    }

    public void setChipIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconVisible(z);
        }
    }

    public void setChipMinHeight(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipMinHeight(f);
        }
    }

    public void setChipMinHeightResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipMinHeightResource(i);
        }
    }

    public void setChipStartPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStartPadding(f);
        }
    }

    public void setChipStartPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStartPaddingResource(i);
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStrokeColor(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStrokeColorResource(i);
        }
    }

    public void setChipStrokeWidth(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStrokeWidth(f);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStrokeWidthResource(i);
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(Drawable drawable) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIcon(drawable);
        }
        updateAccessibilityDelegate();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconContentDescription(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconEndPadding(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconEndPaddingResource(i);
        }
    }

    public void setCloseIconResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconResource(i);
        }
        updateAccessibilityDelegate();
    }

    public void setCloseIconSize(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconSize(f);
        }
    }

    public void setCloseIconSizeResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconSizeResource(i);
        }
    }

    public void setCloseIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconStartPadding(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconStartPaddingResource(i);
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconTint(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconTintResource(i);
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    public void setCloseIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconVisible(z);
        }
        updateAccessibilityDelegate();
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{53, 95, 93, 84, 16, 83, 69, 64, 93, 65, 67, 69, 17, 82, 74, 65, 67, 82, 23, 82, 79, 84, 1, 90, 0, 19, 77, 70, 10, 88, 2, 19, 106, 27, 2, 66, 17, 65, 27, 86, 11, 95, 21, 122, 91, 90, 13, 24}, "e385c6", 1.019798285E9d));
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{100, 8, 85, 89, 17, 85, 20, 23, 85, 76, 66, 85, 90, 0, 16, 92, 16, 81, 67, 5, 82, 84, 7, 16, 65, 23, 89, 86, 5, 16, 102, 74, 81, 76, 22, 66, 23, 7, 92, 87, 17, 85, 125, 7, 95, 86, 76}, "4d08b0", 6022));
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{96, 91, 92, 85, 16, 81, 16, 68, 92, 64, 67, 71, 68, 86, 75, 64, 67, 80, 66, 86, 78, 85, 1, 88, 85, 23, 76, 71, 10, 90, 87, 23, 107, 26, 2, 64, 68, 69, 26, 87, 11, 93, 64, 126, 90, 91, 13, 26}, "0794c4", false));
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{49, 88, 84, 86, 18, 6, 65, 71, 84, 67, 65, 6, 15, 80, 17, 83, 19, 2, 22, 85, 83, 91, 4, 67, 20, 71, 88, 89, 6, 67, 51, 26, 80, 67, 21, 17, 66, 87, 93, 88, 18, 6, 40, 87, 94, 89, 79}, "a417ac", false, true));
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{105, 94, 87, 86, 21, 92, 25, 65, 87, 67, 70, 74, 77, 83, 64, 67, 70, 93, 75, 83, 69, 86, 4, 85, 92, 18, 71, 68, 15, 87, 94, 18, 96, 25, 7, 77, 77, 64, 17, 84, 14, 80, 73, 123, 81, 88, 8, 23}, "9227f9", true, true));
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{96, 10, 0, 0, 21, 3, 16, 21, 0, 21, 70, 3, 94, 2, 69, 5, 20, 7, 71, 7, 7, 13, 3, 70, 69, 21, 12, 15, 1, 70, 98, 72, 4, 21, 18, 20, 19, 5, 9, 14, 21, 3, 121, 5, 10, 15, 72}, "0feaff", -1018605382L));
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{102, 85, 83, 7, 64, 87, 22, 74, 83, 18, 19, 65, 66, 88, 68, 18, 19, 86, 68, 88, 65, 7, 81, 94, 83, 25, 67, 21, 90, 92, 81, 25, 100, 72, 82, 70, 66, 75, 21, 5, 91, 91, 70, 112, 85, 9, 93, 28}, "696f32", 1.629877085E9d));
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{49, 85, 93, 3, 69, 85, 65, 74, 93, 22, 22, 85, 15, 93, 24, 6, 68, 81, 22, 88, 90, 14, 83, 16, 20, 74, 81, 12, 81, 16, 51, 23, 89, 22, 66, 66, 66, 90, 84, 13, 69, 85, 40, 90, 87, 12, 24}, "a98b60", true));
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{50, 15, 93, 83, 22, 93, 66, 16, 93, 70, 69, 75, 22, 2, 74, 70, 69, 92, 16, 2, 79, 83, 7, 84, 7, 67, 77, 65, 12, 86, 5, 67, 106, 28, 4, 76, 22, 17, 27, 81, 13, 81, 18, 42, 91, 93, 11, 22}, "bc82e8", -1.9401256E9f));
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{52, 91, 80, 3, 71, 0, 68, 68, 80, 22, 20, 0, 10, 83, 21, 6, 70, 4, 19, 86, 87, 14, 81, 69, 17, 68, 92, 12, 83, 69, 54, 25, 84, 22, 64, 23, 71, 84, 89, 13, 71, 0, 45, 84, 90, 12, 26}, "d75b4e", 605598390L));
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{51, 93, 81, 2, 65, 81, 67, 66, 81, 23, 18, 88, 6, 87, 64, 67, 86, 70, 2, 70, 85, 1, 94, 81, 67, 68, 71, 10, 92, 83, 67, 99, 26, 2, 70, 64, 17, 18, 87, 11, 91, 68, 42, 82, 91, 13, 28}, "c14c24", 1.928559726E9d));
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{101, 85, 80, 82, 71, 0, 21, 74, 80, 71, 20, 23, 92, 94, 93, 71, 20, 1, 71, 88, 66, 82, 86, 9, 80, 25, 64, 64, 93, 11, 82, 25, 103, 29, 85, 17, 65, 75, 22, 80, 88, 10, 70, 92, 124, 80, 91, 11, 27}, "59534e", true, false));
        }
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setElevation(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.chipDrawable == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{98, 85, 72, 16, 68, 22, 95, 68, 88, 13, 10, 65, 87, 16, 83, 12, 13, 17, 22, 81, 66, 1, 68, 15, 89, 68, 16, 5, 8, 13, 89, 71, 85, 0, 68, 21, 89, 16, 67, 7, 22, 14, 90, 92, 30}, "600dda", 1.173040527E9d));
        }
        super.setEllipsize(truncateAt);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setEllipsize(truncateAt);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.ensureMinTouchTargetSize = z;
        ensureAccessibleTouchTarget(this.minTouchTargetSize);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w(TAG, NPStringFog.decode(new byte[]{119, 80, 81, 64, 23, 71, 81, 64, 76, 16, 90, 70, 71, 76, 24, 82, 82, 19, 66, 93, 74, 68, 94, 80, 85, 84, 84, 73, 23, 80, 81, 86, 76, 85, 69, 19, 85, 86, 92, 16, 68, 71, 85, 74, 76, 16, 86, 95, 93, 95, 86, 85, 83}, "488073", false));
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setHideMotionSpec(motionSpec);
        }
    }

    public void setHideMotionSpecResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setHideMotionSpecResource(i);
        }
    }

    public void setIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setIconEndPadding(f);
        }
    }

    public void setIconEndPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setIconEndPaddingResource(i);
        }
    }

    public void setIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setIconStartPadding(f);
        }
    }

    public void setIconStartPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setIconStartPaddingResource(i);
        }
    }

    @Override // com.google.android.material.internal.MaterialCheckable
    public void setInternalOnCheckedChangeListener(MaterialCheckable.OnCheckedChangeListener<Chip> onCheckedChangeListener) {
        this.onCheckedChangeListenerInternal = onCheckedChangeListener;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.chipDrawable != null && Build.VERSION.SDK_INT >= 17) {
            super.setLayoutDirection(i);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{38, 12, 89, 64, 24, 2, 10, 1, 67, 16, 86, 9, 17, 68, 67, 69, 72, 22, 10, 22, 68, 16, 85, 19, 9, 16, 89, 29, 84, 15, 11, 1, 16, 68, 93, 30, 17}, "ed008f", false, false));
        }
        super.setLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{33, 90, 93, 67, 24, 2, 13, 87, 71, 19, 86, 9, 22, 18, 71, 70, 72, 22, 13, 64, 64, 19, 85, 19, 14, 70, 93, 30, 84, 15, 12, 87, 20, 71, 93, 30, 22}, "b2438f", true));
        }
        super.setMaxLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setMaxWidth(i);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{33, 81, 81, 72, 22, 81, 13, 92, 75, 24, 88, 90, 22, 25, 75, 77, 70, 69, 13, 75, 76, 24, 91, 64, 14, 77, 81, 21, 90, 92, 12, 92, 24, 76, 83, 77, 22}, "b98865", -1.304843343E9d));
        }
        super.setMinLines(i);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.onCloseIconClickListener = onClickListener;
        updateAccessibilityDelegate();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setRippleColor(colorStateList);
        }
        if (this.chipDrawable.getUseCompatRipple()) {
            return;
        }
        updateFrameworkRippleBackground();
    }

    public void setRippleColorResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setRippleColorResource(i);
            if (this.chipDrawable.getUseCompatRipple()) {
                return;
            }
            updateFrameworkRippleBackground();
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.chipDrawable.setShapeAppearanceModel(shapeAppearanceModel);
    }

    public void setShowMotionSpec(MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setShowMotionSpec(motionSpec);
        }
    }

    public void setShowMotionSpecResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setShowMotionSpecResource(i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (!z) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{116, 88, 90, 72, 68, 83, 88, 85, 64, 24, 10, 88, 67, 16, 64, 77, 20, 71, 88, 66, 71, 24, 9, 66, 91, 68, 90, 21, 8, 94, 89, 85, 19, 76, 1, 79, 67}, "7038d7", -28908));
        }
        super.setSingleLine(z);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(chipDrawable.shouldDrawText() ? null : charSequence, bufferType);
        ChipDrawable chipDrawable2 = this.chipDrawable;
        if (chipDrawable2 != null) {
            chipDrawable2.setText(charSequence);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextAppearanceResource(i);
        }
        updateTextPaintDrawState();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextAppearanceResource(i);
        }
        updateTextPaintDrawState();
    }

    public void setTextAppearance(TextAppearance textAppearance) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextAppearance(textAppearance);
        }
        updateTextPaintDrawState();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextEndPadding(f);
        }
    }

    public void setTextEndPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextEndPaddingResource(i);
        }
    }

    public void setTextStartPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextStartPadding(f);
        }
    }

    public void setTextStartPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextStartPaddingResource(i);
        }
    }

    public boolean shouldEnsureMinTouchTargetSize() {
        return this.ensureMinTouchTargetSize;
    }
}
