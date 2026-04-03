package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: classes37.dex */
class ClearTextEndIconDelegate extends EndIconDelegate {
    private static final int ANIMATION_FADE_DURATION = 100;
    private static final int ANIMATION_SCALE_DURATION = 150;
    private static final float ANIMATION_SCALE_FROM_VALUE = 0.8f;
    private final TextWatcher clearTextEndIconTextWatcher;
    private final TextInputLayout.OnEditTextAttachedListener clearTextOnEditTextAttachedListener;
    private final TextInputLayout.OnEndIconChangedListener endIconChangedListener;
    private AnimatorSet iconInAnim;
    private ValueAnimator iconOutAnim;
    private final View.OnFocusChangeListener onFocusChangeListener;

    /* JADX INFO: renamed from: com.google.android.material.textfield.ClearTextEndIconDelegate$4, reason: invalid class name */
    class AnonymousClass4 implements TextInputLayout.OnEndIconChangedListener {
        final ClearTextEndIconDelegate this$0;

        AnonymousClass4(ClearTextEndIconDelegate clearTextEndIconDelegate) {
            this.this$0 = clearTextEndIconDelegate;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
        public void onEndIconChanged(TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 2) {
                return;
            }
            editText.post(new Runnable(this, editText) { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.4.1
                final AnonymousClass4 this$1;
                final EditText val$editText;

                {
                    this.this$1 = this;
                    this.val$editText = editText;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.val$editText.removeTextChangedListener(this.this$1.this$0.clearTextEndIconTextWatcher);
                    this.this$1.this$0.animateIcon(true);
                }
            });
            if (editText.getOnFocusChangeListener() == this.this$0.onFocusChangeListener) {
                editText.setOnFocusChangeListener(null);
            }
            if (this.this$0.endIconView.getOnFocusChangeListener() == this.this$0.onFocusChangeListener) {
                this.this$0.endIconView.setOnFocusChangeListener(null);
            }
        }
    }

    ClearTextEndIconDelegate(TextInputLayout textInputLayout, int i) {
        super(textInputLayout, i);
        this.clearTextEndIconTextWatcher = new TextWatcher(this) { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.1
            final ClearTextEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (this.this$0.textInputLayout.getSuffixText() != null) {
                    return;
                }
                ClearTextEndIconDelegate clearTextEndIconDelegate = this.this$0;
                clearTextEndIconDelegate.animateIcon(clearTextEndIconDelegate.shouldBeVisible());
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }
        };
        this.onFocusChangeListener = new View.OnFocusChangeListener(this) { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.2
            final ClearTextEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                ClearTextEndIconDelegate clearTextEndIconDelegate = this.this$0;
                clearTextEndIconDelegate.animateIcon(clearTextEndIconDelegate.shouldBeVisible());
            }
        };
        this.clearTextOnEditTextAttachedListener = new TextInputLayout.OnEditTextAttachedListener(this) { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.3
            final ClearTextEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
            public void onEditTextAttached(TextInputLayout textInputLayout2) {
                EditText editText = textInputLayout2.getEditText();
                textInputLayout2.setEndIconVisible(this.this$0.shouldBeVisible());
                editText.setOnFocusChangeListener(this.this$0.onFocusChangeListener);
                this.this$0.endIconView.setOnFocusChangeListener(this.this$0.onFocusChangeListener);
                editText.removeTextChangedListener(this.this$0.clearTextEndIconTextWatcher);
                editText.addTextChangedListener(this.this$0.clearTextEndIconTextWatcher);
            }
        };
        this.endIconChangedListener = new AnonymousClass4(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateIcon(boolean z) {
        boolean z2 = this.textInputLayout.isEndIconVisible() == z;
        if (z && !this.iconInAnim.isRunning()) {
            this.iconOutAnim.cancel();
            this.iconInAnim.start();
            if (z2) {
                this.iconInAnim.end();
                return;
            }
            return;
        }
        if (z) {
            return;
        }
        this.iconInAnim.cancel();
        this.iconOutAnim.start();
        if (z2) {
            this.iconOutAnim.end();
        }
    }

    private ValueAnimator getAlphaAnimator(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.8
            final ClearTextEndIconDelegate this$0;

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

    private ValueAnimator getScaleAnimator() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(ANIMATION_SCALE_FROM_VALUE, 1.0f);
        valueAnimatorOfFloat.setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.9
            final ClearTextEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                this.this$0.endIconView.setScaleX(fFloatValue);
                this.this$0.endIconView.setScaleY(fFloatValue);
            }
        });
        return valueAnimatorOfFloat;
    }

    private void initAnimators() {
        ValueAnimator scaleAnimator = getScaleAnimator();
        ValueAnimator alphaAnimator = getAlphaAnimator(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.iconInAnim = animatorSet;
        animatorSet.playTogether(scaleAnimator, alphaAnimator);
        this.iconInAnim.addListener(new AnimatorListenerAdapter(this) { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.6
            final ClearTextEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                this.this$0.textInputLayout.setEndIconVisible(true);
            }
        });
        ValueAnimator alphaAnimator2 = getAlphaAnimator(1.0f, 0.0f);
        this.iconOutAnim = alphaAnimator2;
        alphaAnimator2.addListener(new AnimatorListenerAdapter(this) { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.7
            final ClearTextEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                this.this$0.textInputLayout.setEndIconVisible(false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldBeVisible() {
        EditText editText = this.textInputLayout.getEditText();
        return editText != null && (editText.hasFocus() || this.endIconView.hasFocus()) && editText.getText().length() > 0;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    void initialize() {
        this.textInputLayout.setEndIconDrawable(this.customEndIcon == 0 ? R.drawable.mtrl_ic_cancel : this.customEndIcon);
        this.textInputLayout.setEndIconContentDescription(this.textInputLayout.getResources().getText(R.string.clear_text_end_icon_content_description));
        this.textInputLayout.setEndIconCheckable(false);
        this.textInputLayout.setEndIconOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.5
            final ClearTextEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Editable text = this.this$0.textInputLayout.getEditText().getText();
                if (text != null) {
                    text.clear();
                }
                this.this$0.textInputLayout.refreshEndIconDrawableState();
            }
        });
        this.textInputLayout.addOnEditTextAttachedListener(this.clearTextOnEditTextAttachedListener);
        this.textInputLayout.addOnEndIconChangedListener(this.endIconChangedListener);
        initAnimators();
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    void onSuffixVisibilityChanged(boolean z) {
        if (this.textInputLayout.getSuffixText() == null) {
            return;
        }
        animateIcon(z);
    }
}
