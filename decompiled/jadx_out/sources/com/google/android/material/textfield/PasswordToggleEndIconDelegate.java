package com.google.android.material.textfield;

import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.R;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: classes37.dex */
class PasswordToggleEndIconDelegate extends EndIconDelegate {
    private final TextInputLayout.OnEditTextAttachedListener onEditTextAttachedListener;
    private final TextInputLayout.OnEndIconChangedListener onEndIconChangedListener;
    private final TextWatcher textWatcher;

    /* JADX INFO: renamed from: com.google.android.material.textfield.PasswordToggleEndIconDelegate$3, reason: invalid class name */
    class AnonymousClass3 implements TextInputLayout.OnEndIconChangedListener {
        final PasswordToggleEndIconDelegate this$0;

        AnonymousClass3(PasswordToggleEndIconDelegate passwordToggleEndIconDelegate) {
            this.this$0 = passwordToggleEndIconDelegate;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
        public void onEndIconChanged(TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new Runnable(this, editText) { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate.3.1
                final AnonymousClass3 this$1;
                final EditText val$editText;

                {
                    this.this$1 = this;
                    this.val$editText = editText;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.val$editText.removeTextChangedListener(this.this$1.this$0.textWatcher);
                }
            });
        }
    }

    PasswordToggleEndIconDelegate(TextInputLayout textInputLayout, int i) {
        super(textInputLayout, i);
        this.textWatcher = new TextWatcherAdapter(this) { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate.1
            final PasswordToggleEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                this.this$0.endIconView.setChecked(!this.this$0.hasPasswordTransformation());
            }
        };
        this.onEditTextAttachedListener = new TextInputLayout.OnEditTextAttachedListener(this) { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate.2
            final PasswordToggleEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
            public void onEditTextAttached(TextInputLayout textInputLayout2) {
                EditText editText = textInputLayout2.getEditText();
                this.this$0.endIconView.setChecked(!this.this$0.hasPasswordTransformation());
                editText.removeTextChangedListener(this.this$0.textWatcher);
                editText.addTextChangedListener(this.this$0.textWatcher);
            }
        };
        this.onEndIconChangedListener = new AnonymousClass3(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasPasswordTransformation() {
        EditText editText = this.textInputLayout.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private static boolean isInputTypePassword(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    void initialize() {
        this.textInputLayout.setEndIconDrawable(this.customEndIcon == 0 ? R.drawable.design_password_eye : this.customEndIcon);
        this.textInputLayout.setEndIconContentDescription(this.textInputLayout.getResources().getText(R.string.password_toggle_content_description));
        this.textInputLayout.setEndIconVisible(true);
        this.textInputLayout.setEndIconCheckable(true);
        this.textInputLayout.setEndIconOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate.4
            final PasswordToggleEndIconDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EditText editText = this.this$0.textInputLayout.getEditText();
                if (editText == null) {
                    return;
                }
                int selectionEnd = editText.getSelectionEnd();
                if (this.this$0.hasPasswordTransformation()) {
                    editText.setTransformationMethod(null);
                } else {
                    editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    editText.setSelection(selectionEnd);
                }
                this.this$0.textInputLayout.refreshEndIconDrawableState();
            }
        });
        this.textInputLayout.addOnEditTextAttachedListener(this.onEditTextAttachedListener);
        this.textInputLayout.addOnEndIconChangedListener(this.onEndIconChangedListener);
        EditText editText = this.textInputLayout.getEditText();
        if (isInputTypePassword(editText)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
