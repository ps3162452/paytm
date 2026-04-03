package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.core.location.LocationRequestCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.TextInputLayout;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
class DropdownMenuEndIconDelegate extends EndIconDelegate {
    private static final int ANIMATION_FADE_IN_DURATION = 67;
    private static final int ANIMATION_FADE_OUT_DURATION = 50;
    private static final boolean IS_LOLLIPOP;
    private final TextInputLayout.AccessibilityDelegate accessibilityDelegate;
    private AccessibilityManager accessibilityManager;
    private final TextInputLayout.OnEditTextAttachedListener dropdownMenuOnEditTextAttachedListener;
    private long dropdownPopupActivatedAt;
    private boolean dropdownPopupDirty;
    private final TextInputLayout.OnEndIconChangedListener endIconChangedListener;
    private final TextWatcher exposedDropdownEndIconTextWatcher;
    private ValueAnimator fadeInAnim;
    private ValueAnimator fadeOutAnim;
    private StateListDrawable filledPopupBackground;
    private boolean isEndIconChecked;
    private final View.OnAttachStateChangeListener onAttachStateChangeListener;
    private final View.OnFocusChangeListener onFocusChangeListener;
    private MaterialShapeDrawable outlinedPopupBackground;
    private final AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener;

    /* JADX INFO: renamed from: com.google.android.material.textfield.DropdownMenuEndIconDelegate$1, reason: invalid class name */
    class AnonymousClass1 extends TextWatcherAdapter {
        final DropdownMenuEndIconDelegate this$0;

        AnonymousClass1(DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate) {
            this.this$0 = dropdownMenuEndIconDelegate;
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView autoCompleteTextViewCastAutoCompleteTextViewOrThrow = DropdownMenuEndIconDelegate.castAutoCompleteTextViewOrThrow(this.this$0.textInputLayout.getEditText());
            if (this.this$0.accessibilityManager.isTouchExplorationEnabled() && DropdownMenuEndIconDelegate.isEditable(autoCompleteTextViewCastAutoCompleteTextViewOrThrow) && !this.this$0.endIconView.hasFocus()) {
                autoCompleteTextViewCastAutoCompleteTextViewOrThrow.dismissDropDown();
            }
            autoCompleteTextViewCastAutoCompleteTextViewOrThrow.post(new Runnable(this, autoCompleteTextViewCastAutoCompleteTextViewOrThrow) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.1.1
                final AnonymousClass1 this$1;
                final AutoCompleteTextView val$editText;

                {
                    this.this$1 = this;
                    this.val$editText = autoCompleteTextViewCastAutoCompleteTextViewOrThrow;
                }

                @Override // java.lang.Runnable
                public void run() {
                    boolean zIsPopupShowing = this.val$editText.isPopupShowing();
                    this.this$1.this$0.setEndIconChecked(zIsPopupShowing);
                    this.this$1.this$0.dropdownPopupDirty = zIsPopupShowing;
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.DropdownMenuEndIconDelegate$5, reason: invalid class name */
    class AnonymousClass5 implements TextInputLayout.OnEndIconChangedListener {
        final DropdownMenuEndIconDelegate this$0;

        AnonymousClass5(DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate) {
            this.this$0 = dropdownMenuEndIconDelegate;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
        public void onEndIconChanged(TextInputLayout textInputLayout, int i) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView != null && i == 3) {
                autoCompleteTextView.post(new Runnable(this, autoCompleteTextView) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.5.1
                    final AnonymousClass5 this$1;
                    final AutoCompleteTextView val$editText;

                    {
                        this.this$1 = this;
                        this.val$editText = autoCompleteTextView;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.val$editText.removeTextChangedListener(this.this$1.this$0.exposedDropdownEndIconTextWatcher);
                    }
                });
                if (autoCompleteTextView.getOnFocusChangeListener() == this.this$0.onFocusChangeListener) {
                    autoCompleteTextView.setOnFocusChangeListener(null);
                }
                autoCompleteTextView.setOnTouchListener(null);
                if (DropdownMenuEndIconDelegate.IS_LOLLIPOP) {
                    autoCompleteTextView.setOnDismissListener(null);
                }
            }
            if (i == 3) {
                textInputLayout.removeOnAttachStateChangeListener(this.this$0.onAttachStateChangeListener);
                this.this$0.removeTouchExplorationStateChangeListenerIfNeeded();
            }
        }
    }

    static {
        IS_LOLLIPOP = Build.VERSION.SDK_INT >= 21;
    }

    DropdownMenuEndIconDelegate(TextInputLayout textInputLayout, int i) {
        super(textInputLayout, i);
        this.exposedDropdownEndIconTextWatcher = new AnonymousClass1(this);
        this.onFocusChangeListener = new View.OnFocusChangeListener(this) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.2
            final DropdownMenuEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                this.this$0.textInputLayout.setEndIconActivated(z);
                if (z) {
                    return;
                }
                this.this$0.setEndIconChecked(false);
                this.this$0.dropdownPopupDirty = false;
            }
        };
        this.accessibilityDelegate = new TextInputLayout.AccessibilityDelegate(this, this.textInputLayout) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.3
            final DropdownMenuEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.android.material.textfield.TextInputLayout.AccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                if (!DropdownMenuEndIconDelegate.isEditable(this.this$0.textInputLayout.getEditText())) {
                    accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
                }
                if (accessibilityNodeInfoCompat.isShowingHintText()) {
                    accessibilityNodeInfoCompat.setHintText(null);
                }
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
                AutoCompleteTextView autoCompleteTextViewCastAutoCompleteTextViewOrThrow = DropdownMenuEndIconDelegate.castAutoCompleteTextViewOrThrow(this.this$0.textInputLayout.getEditText());
                if (accessibilityEvent.getEventType() == 1 && this.this$0.accessibilityManager.isEnabled() && !DropdownMenuEndIconDelegate.isEditable(this.this$0.textInputLayout.getEditText())) {
                    this.this$0.showHideDropdown(autoCompleteTextViewCastAutoCompleteTextViewOrThrow);
                    this.this$0.updateDropdownPopupDirty();
                }
            }
        };
        this.dropdownMenuOnEditTextAttachedListener = new TextInputLayout.OnEditTextAttachedListener(this) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.4
            final DropdownMenuEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
            public void onEditTextAttached(TextInputLayout textInputLayout2) {
                AutoCompleteTextView autoCompleteTextViewCastAutoCompleteTextViewOrThrow = DropdownMenuEndIconDelegate.castAutoCompleteTextViewOrThrow(textInputLayout2.getEditText());
                this.this$0.setPopupBackground(autoCompleteTextViewCastAutoCompleteTextViewOrThrow);
                this.this$0.addRippleEffect(autoCompleteTextViewCastAutoCompleteTextViewOrThrow);
                this.this$0.setUpDropdownShowHideBehavior(autoCompleteTextViewCastAutoCompleteTextViewOrThrow);
                autoCompleteTextViewCastAutoCompleteTextViewOrThrow.setThreshold(0);
                autoCompleteTextViewCastAutoCompleteTextViewOrThrow.removeTextChangedListener(this.this$0.exposedDropdownEndIconTextWatcher);
                autoCompleteTextViewCastAutoCompleteTextViewOrThrow.addTextChangedListener(this.this$0.exposedDropdownEndIconTextWatcher);
                textInputLayout2.setEndIconCheckable(true);
                textInputLayout2.setErrorIconDrawable((Drawable) null);
                if (!DropdownMenuEndIconDelegate.isEditable(autoCompleteTextViewCastAutoCompleteTextViewOrThrow) && this.this$0.accessibilityManager.isTouchExplorationEnabled()) {
                    ViewCompat.setImportantForAccessibility(this.this$0.endIconView, 2);
                }
                textInputLayout2.setTextInputAccessibilityDelegate(this.this$0.accessibilityDelegate);
                textInputLayout2.setEndIconVisible(true);
            }
        };
        this.endIconChangedListener = new AnonymousClass5(this);
        this.onAttachStateChangeListener = new View.OnAttachStateChangeListener(this) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.6
            final DropdownMenuEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                this.this$0.addTouchExplorationStateChangeListenerIfNeeded();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                this.this$0.removeTouchExplorationStateChangeListenerIfNeeded();
            }
        };
        this.touchExplorationStateChangeListener = new AccessibilityManagerCompat.TouchExplorationStateChangeListener(this) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.7
            final DropdownMenuEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
            public void onTouchExplorationStateChanged(boolean z) {
                AutoCompleteTextView autoCompleteTextView;
                if (this.this$0.textInputLayout == null || (autoCompleteTextView = (AutoCompleteTextView) this.this$0.textInputLayout.getEditText()) == null || DropdownMenuEndIconDelegate.isEditable(autoCompleteTextView)) {
                    return;
                }
                ViewCompat.setImportantForAccessibility(this.this$0.endIconView, z ? 2 : 1);
            }
        };
        this.dropdownPopupDirty = false;
        this.isEndIconChecked = false;
        this.dropdownPopupActivatedAt = LocationRequestCompat.PASSIVE_INTERVAL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRippleEffect(AutoCompleteTextView autoCompleteTextView) {
        if (isEditable(autoCompleteTextView)) {
            return;
        }
        int boxBackgroundMode = this.textInputLayout.getBoxBackgroundMode();
        MaterialShapeDrawable boxBackground = this.textInputLayout.getBoxBackground();
        int color = MaterialColors.getColor(autoCompleteTextView, R.attr.colorControlHighlight);
        int[][] iArr = {new int[]{android.R.attr.state_pressed}, new int[0]};
        if (boxBackgroundMode == 2) {
            addRippleEffectOnOutlinedLayout(autoCompleteTextView, color, iArr, boxBackground);
        } else if (boxBackgroundMode == 1) {
            addRippleEffectOnFilledLayout(autoCompleteTextView, color, iArr, boxBackground);
        }
    }

    private void addRippleEffectOnFilledLayout(AutoCompleteTextView autoCompleteTextView, int i, int[][] iArr, MaterialShapeDrawable materialShapeDrawable) {
        int boxBackgroundColor = this.textInputLayout.getBoxBackgroundColor();
        int[] iArr2 = {MaterialColors.layer(i, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (IS_LOLLIPOP) {
            ViewCompat.setBackground(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), materialShapeDrawable, materialShapeDrawable));
            return;
        }
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        materialShapeDrawable2.setFillColor(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable, materialShapeDrawable2});
        int paddingStart = ViewCompat.getPaddingStart(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        ViewCompat.setBackground(autoCompleteTextView, layerDrawable);
        ViewCompat.setPaddingRelative(autoCompleteTextView, paddingStart, paddingTop, paddingEnd, paddingBottom);
    }

    private void addRippleEffectOnOutlinedLayout(AutoCompleteTextView autoCompleteTextView, int i, int[][] iArr, MaterialShapeDrawable materialShapeDrawable) {
        LayerDrawable layerDrawable;
        int color = MaterialColors.getColor(autoCompleteTextView, R.attr.colorSurface);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        int iLayer = MaterialColors.layer(i, color, 0.1f);
        materialShapeDrawable2.setFillColor(new ColorStateList(iArr, new int[]{iLayer, 0}));
        if (IS_LOLLIPOP) {
            materialShapeDrawable2.setTint(color);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iLayer, color});
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
            materialShapeDrawable3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable2, materialShapeDrawable3), materialShapeDrawable});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable});
        }
        ViewCompat.setBackground(autoCompleteTextView, layerDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addTouchExplorationStateChangeListenerIfNeeded() {
        if (this.accessibilityManager == null || this.textInputLayout == null || !ViewCompat.isAttachedToWindow(this.textInputLayout)) {
            return;
        }
        AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.accessibilityManager, this.touchExplorationStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AutoCompleteTextView castAutoCompleteTextViewOrThrow(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException(NPStringFog.decode(new byte[]{38, 84, 89, 69, 108, 86, 27, 68, 16, 95, 93, 86, 7, 67, 16, 69, 87, 19, 1, 85, 16, 80, 86, 19, 34, 69, 68, 94, 123, 92, 14, 64, 92, 84, 76, 86, 55, 85, 72, 69, 110, 90, 6, 71, 16, 88, 94, 19, 2, 94, 16, 116, 64, 67, 12, 67, 85, 85, 24, 119, 17, 95, 64, 85, 87, 68, 13, 16, 125, 84, 86, 70, 67, 89, 67, 17, 90, 86, 10, 94, 87, 17, 77, 64, 6, 84, 30}, "c00183", true, true));
    }

    private ValueAnimator getAlphaAnimator(int i, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
        valueAnimatorOfFloat.setDuration(i);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.12
            final DropdownMenuEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.this$0.endIconView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return valueAnimatorOfFloat;
    }

    private MaterialShapeDrawable getPopUpMaterialShapeDrawable(float f, float f2, float f3, int i) {
        ShapeAppearanceModel shapeAppearanceModelBuild = ShapeAppearanceModel.builder().setTopLeftCornerSize(f).setTopRightCornerSize(f).setBottomLeftCornerSize(f2).setBottomRightCornerSize(f2).build();
        MaterialShapeDrawable materialShapeDrawableCreateWithElevationOverlay = MaterialShapeDrawable.createWithElevationOverlay(this.context, f3);
        materialShapeDrawableCreateWithElevationOverlay.setShapeAppearanceModel(shapeAppearanceModelBuild);
        materialShapeDrawableCreateWithElevationOverlay.setPadding(0, i, 0, i);
        return materialShapeDrawableCreateWithElevationOverlay;
    }

    private void initAnimators() {
        this.fadeInAnim = getAlphaAnimator(67, 0.0f, 1.0f);
        ValueAnimator alphaAnimator = getAlphaAnimator(50, 1.0f, 0.0f);
        this.fadeOutAnim = alphaAnimator;
        alphaAnimator.addListener(new AnimatorListenerAdapter(this) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.11
            final DropdownMenuEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                this.this$0.endIconView.setChecked(this.this$0.isEndIconChecked);
                this.this$0.fadeInAnim.start();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDropdownPopupActive() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.dropdownPopupActivatedAt;
        return jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isEditable(EditText editText) {
        return editText.getKeyListener() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeTouchExplorationStateChangeListenerIfNeeded() {
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager != null) {
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(accessibilityManager, this.touchExplorationStateChangeListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEndIconChecked(boolean z) {
        if (this.isEndIconChecked != z) {
            this.isEndIconChecked = z;
            this.fadeInAnim.cancel();
            this.fadeOutAnim.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPopupBackground(AutoCompleteTextView autoCompleteTextView) {
        if (IS_LOLLIPOP) {
            int boxBackgroundMode = this.textInputLayout.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.outlinedPopupBackground);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.filledPopupBackground);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUpDropdownShowHideBehavior(AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener(this, autoCompleteTextView) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.9
            final DropdownMenuEndIconDelegate this$0;
            final AutoCompleteTextView val$editText;

            {
                this.this$0 = this;
                this.val$editText = autoCompleteTextView;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    if (this.this$0.isDropdownPopupActive()) {
                        this.this$0.dropdownPopupDirty = false;
                    }
                    this.this$0.showHideDropdown(this.val$editText);
                    this.this$0.updateDropdownPopupDirty();
                }
                return false;
            }
        });
        autoCompleteTextView.setOnFocusChangeListener(this.onFocusChangeListener);
        if (IS_LOLLIPOP) {
            autoCompleteTextView.setOnDismissListener(new AutoCompleteTextView.OnDismissListener(this) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.10
                final DropdownMenuEndIconDelegate this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public void onDismiss() {
                    this.this$0.updateDropdownPopupDirty();
                    this.this$0.setEndIconChecked(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showHideDropdown(AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        if (isDropdownPopupActive()) {
            this.dropdownPopupDirty = false;
        }
        if (this.dropdownPopupDirty) {
            this.dropdownPopupDirty = false;
            return;
        }
        if (IS_LOLLIPOP) {
            setEndIconChecked(!this.isEndIconChecked);
        } else {
            this.isEndIconChecked = !this.isEndIconChecked;
            this.endIconView.toggle();
        }
        if (!this.isEndIconChecked) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDropdownPopupDirty() {
        this.dropdownPopupDirty = true;
        this.dropdownPopupActivatedAt = System.currentTimeMillis();
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    void initialize() {
        float dimensionPixelOffset = this.context.getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        MaterialShapeDrawable popUpMaterialShapeDrawable = getPopUpMaterialShapeDrawable(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        MaterialShapeDrawable popUpMaterialShapeDrawable2 = getPopUpMaterialShapeDrawable(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.outlinedPopupBackground = popUpMaterialShapeDrawable;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.filledPopupBackground = stateListDrawable;
        stateListDrawable.addState(new int[]{android.R.attr.state_above_anchor}, popUpMaterialShapeDrawable);
        this.filledPopupBackground.addState(new int[0], popUpMaterialShapeDrawable2);
        this.textInputLayout.setEndIconDrawable(this.customEndIcon == 0 ? IS_LOLLIPOP ? R.drawable.mtrl_dropdown_arrow : R.drawable.mtrl_ic_arrow_drop_down : this.customEndIcon);
        this.textInputLayout.setEndIconContentDescription(this.textInputLayout.getResources().getText(R.string.exposed_dropdown_menu_content_description));
        this.textInputLayout.setEndIconOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.8
            final DropdownMenuEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.showHideDropdown((AutoCompleteTextView) this.this$0.textInputLayout.getEditText());
            }
        });
        this.textInputLayout.addOnEditTextAttachedListener(this.dropdownMenuOnEditTextAttachedListener);
        this.textInputLayout.addOnEndIconChangedListener(this.endIconChangedListener);
        initAnimators();
        this.accessibilityManager = (AccessibilityManager) this.context.getSystemService(NPStringFog.decode(new byte[]{80, 90, 82, 84, 71, 71, 88, 91, 88, 93, 93, 64, 72}, "191144", true));
        this.textInputLayout.addOnAttachStateChangeListener(this.onAttachStateChangeListener);
        addTouchExplorationStateChangeListenerIfNeeded();
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    boolean isBoxBackgroundModeSupported(int i) {
        return i != 0;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    boolean shouldTintIconOnError() {
        return true;
    }

    void updateOutlinedRippleEffect(AutoCompleteTextView autoCompleteTextView) {
        if (!isEditable(autoCompleteTextView) && this.textInputLayout.getBoxBackgroundMode() == 2 && (autoCompleteTextView.getBackground() instanceof LayerDrawable)) {
            addRippleEffect(autoCompleteTextView);
        }
    }
}
